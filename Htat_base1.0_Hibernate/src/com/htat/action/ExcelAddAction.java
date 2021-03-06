package com.htat.action;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ExcelAddAction extends ActionSupport {
	//UploadfileAction up = new UploadfileAction();
	private HttpServletRequest request;
	//String excelpath = request.getParameter("excelpath");
	public String execute()throws Exception {
		request = ServletActionContext.getRequest();
		String path = request.getParameter("path");
		System.out.println("filename:"+"  "+path+"|||");
		String sql ="insert into exercisetable(exerciseset,topic,content,type,level,keytext,answer,situation) values (?,?,?,?,?,?,?,?)";
		
	 
		if(path.contains("AddU")){
			sql="insert into usertable(username,userlevel,password) values (?,?,?)";
			System.out.println("AddU");
		}
		//-----设置开始时间以及时间格式----+"E:/ccclllggg/Study2/workspace/.metadata/.me_tcat/webapps/Htat_base1.0_Hibernate/upload/AddE.xls"
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss:SS"); 
		TimeZone t = sdf.getTimeZone(); 
		t.setRawOffset(0); 
		sdf.setTimeZone(t); 
		Long startTime = System.currentTimeMillis(); 

		//------连接数据库-------
		Connection conn = null;
		PreparedStatement pst = null;
		try {
			//反射机制，创建数据库Driver
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("数据库连接成功");
			conn = java.sql.DriverManager.getConnection(  
	                "jdbc:mysql://localhost:3306/htat", "root", ""); //数据库database--test,username--root，password--root 
			conn.setAutoCommit(false); 
			//Dictionary_Geology -- 表名称 
			//数据库第一个字段id--自增长，不用处理
			//chinese -- 数据库第二个字段 
			//english -- 数据库第三个字段 
			//content -- 数据库第四个字段 
			
			
			pst = (PreparedStatement) conn.prepareStatement(sql);
			File file = new File(path);
			
			System.out.println("OK");
			String[][] result = getData(file, 1);
			int rowLength = result.length;
			System.out.println(result.length);
		if(path.contains("AddE"))
		{for (int i = 0; i < rowLength; i++) {
						//根据数据库表字段的不同可以做修改
						pst.setString(1, result[i][1]);//chinese
						pst.setString(2, result[i][2]);//english
						pst.setString(3, result[i][3]);//content
						pst.setString(4, result[i][4]);
						pst.setString(5, result[i][5]);
						pst.setString(6, result[i][6]);
						pst.setString(7, result[i][7]);
						pst.setString(8, result[i][8]);
						pst.addBatch(); //事务整体添加
			}}
		else{
			for (int i = 0; i < rowLength; i++) {
			//根据数据库表字段的不同可以做修改
			pst.setString(1, result[i][1]);//chinese
			pst.setString(2, result[i][2]);//english
			pst.setString(3, result[i][3]);//content
			pst.addBatch(); //事务整体添加
			}
			
		}
			//事务整体提交
			pst.executeBatch(); 
			conn.commit(); 
			System.out.println("数据库写入成功");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("数据库连接失败");
			return "error";
		} catch (SQLException e) {
			e.printStackTrace();
		}  finally{
			//关闭PreparedStatement
			if(pst != null) {
				pst.close();
				pst = null;
			}
			//关闭Connection
			if(conn != null) {
				conn.close();
				pst = null;
			}
		}
		
		//-----结束时间------
		Long endTime = System.currentTimeMillis(); 
		System.out.println("用时：" + sdf.format(new Date(endTime - startTime))); 
		return "success";
	}

	/**
	 * 读取Excel的内容，第一维数组存储的是一行中格列的值，二维数组存储的是多少个行
	 * 
	 * @param file
	 *            读取数据的源Excel
	 * @param ignoreRows
	 *            读取数据忽略的行数，比喻行头不需要读入 忽略的行数为1
	 * @return 读出的Excel中数据的内容
	 * @throws FileNotFoundException
	 * @throws IOException
	 */
	public  String[][] getData(File file, int ignoreRows)
			throws FileNotFoundException, IOException {
		List<String[]> result = new ArrayList<String[]>();
		int rowSize = 0;
		BufferedInputStream in = new BufferedInputStream(new FileInputStream(
				file));
		// 打开HSSFWorkbook
		POIFSFileSystem fs = new POIFSFileSystem(in);
		HSSFWorkbook wb = new HSSFWorkbook(fs);
		HSSFCell cell = null;
		for (int sheetIndex = 0; sheetIndex < wb.getNumberOfSheets(); sheetIndex++) {
			HSSFSheet st = wb.getSheetAt(sheetIndex);
			// 第一行为标题，不取
			for (int rowIndex = ignoreRows; rowIndex <= st.getLastRowNum(); rowIndex++) {
				HSSFRow row = st.getRow(rowIndex);
				if (row == null) {
					continue;
				}
				int tempRowSize = row.getLastCellNum() + 1;
				if (tempRowSize > rowSize) {
					rowSize = tempRowSize;
				}
				String[] values = new String[rowSize];
				Arrays.fill(values, "");
				boolean hasValue = false;
				for (short columnIndex = 0; columnIndex <= row.getLastCellNum(); columnIndex++) {
					String value = "";
					cell = row.getCell(columnIndex);
					if (cell != null) {
						// 注意：一定要设成这个，否则可能会出现乱码
						cell.setEncoding(HSSFCell.ENCODING_UTF_16);
						switch (cell.getCellType()) {
						case HSSFCell.CELL_TYPE_STRING:
							value = cell.getStringCellValue();
							break;
						case HSSFCell.CELL_TYPE_NUMERIC:
							if (HSSFDateUtil.isCellDateFormatted(cell)) {
								Date date = cell.getDateCellValue();
								if (date != null) {
									value = new SimpleDateFormat("yyyy-MM-dd")
											.format(date);
								} else {
									value = "";
								}
							} else {
								value = new DecimalFormat("0").format(cell
										.getNumericCellValue());
							}
							break;
						case HSSFCell.CELL_TYPE_FORMULA:
							// 导入时如果为公式生成的数据则无值
							if (!cell.getStringCellValue().equals("")) {
								value = cell.getStringCellValue();
							} else {
								value = cell.getNumericCellValue() + "";
							}
							break;
						case HSSFCell.CELL_TYPE_BLANK:
							break;
						case HSSFCell.CELL_TYPE_ERROR:
							value = "";
							break;
						case HSSFCell.CELL_TYPE_BOOLEAN:
							value = (cell.getBooleanCellValue() == true ? "Y"
									: "N");
							break;
						default:
							value = "";
						}
					}
					if (columnIndex == 0 && value.trim().equals("")) {
						break;
					}
					values[columnIndex] = rightTrim(value);
					hasValue = true;
				}

				if (hasValue) {
					result.add(values);
				}
			}
		}
		in.close();
		String[][] returnArray = new String[result.size()][rowSize];
		for (int i = 0; i < returnArray.length; i++) {
			returnArray[i] = (String[]) result.get(i);
		}
		return returnArray;
	}

	/**
	 * 去掉字符串右边的空格
	 * 
	 * @param str
	 *            要处理的字符串
	 * @return 处理后的字符串
	 */
	public String rightTrim(String str) {
		if (str == null) {
			return "";
		}
		int length = str.length();
		for (int i = length - 1; i >= 0; i--) {
			if (str.charAt(i) != 0x20) {
				break;
			}
			length--;
		}
		return str.substring(0, length);
	}
	 private String replace(String str) {
	       // String str = "aaa\\33";
	        System.out.println(str);   
	        str = str.replaceAll("\\\\", "/");
	        System.out.println(str);   
	        return str;
	    }
	    
	        private String split(String str)
	        {  
	            String a[] = str.split(".");  
	            System.out.println(a[0]);  
	            System.out.println(a[1]);  
	            return a[0];
	        } 
	      
}
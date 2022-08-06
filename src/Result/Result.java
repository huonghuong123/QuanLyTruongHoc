package Result;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class Result 
{

    public static List<HashMap<String, String>> List(int pageSize, int count) 
            throws SQLException, ClassNotFoundException
    {
        String sql = "SELECT result.ResultId, result.Point, student.Name, subject.NameSubject FROM result LEFT join student ON result.StudentId = student.StudentId LEFT JOIN subject on result.SubjectId=subject.SubjectId  LIMIT "+pageSize+" OFFSET "+count+"";        
        DB.open(); 
        ResultSet rs = DB.q(sql);
        List<HashMap<String,String>> list = new ArrayList<>();
        while(rs.next())
        {
            HashMap<String,String> row = new HashMap<>();
            row.put("ResultId", rs.getString("ResultId")) ;
            row.put("Point",       rs.getString("Point")) ;
            row.put("StudentId",      rs.getString("student.Name")) ;
            row.put("SubjectId",   rs.getString("subject.NameSubject")) ;
                
            list.add(row);             
        }
        
        DB.close();
        return list;
    }

    public static HashMap<String,String> Details(String ResultId) 
            throws SQLException, ClassNotFoundException
    {
        String sql = 
        		"SELECT * FROM `result` WHERE `ResultId`='"+ResultId+"'"; 
        DB.open(); 
        ResultSet rs = DB.q(sql);    
        HashMap<String,String> row  = new HashMap<>();  
        while(rs.next())
        {
            row.put("ResultId", rs.getString("ResultId")) ;
            row.put("Point",       rs.getString("Point")) ;
            row.put("StudentId",   rs.getString("StudentId")) ;
            row.put("SubjectId",   rs.getString("SubjectId")) ;
                
            break;  
        }
        
        DB.close(); 
        return row;
    }
    

    public static void Add(HashMap<Integer,String> params) 
            throws SQLException, ClassNotFoundException
    {
        String sql = "INSERT INTO `result`( `Point`, `StudentId`, `SubjectId`) VALUES (?,?,?)";              

        DB.exec(sql, params);
    }
    

    public static void Edit(HashMap<Integer,String> params) 
            throws SQLException, ClassNotFoundException
    {
        String sql = "UPDATE `result` SET `Point`=?,`StudentId`=?,`SubjectId`=? WHERE `ResultId`=?";               
        DB.exec(sql, params);
    }
    
    public static void Delete(HashMap<Integer,String> params) 
            throws SQLException, ClassNotFoundException
    {
        String sql = " DELETE FROM `result` WHERE `ResultId` = ?";
        DB.exec(sql, params);
    }
}

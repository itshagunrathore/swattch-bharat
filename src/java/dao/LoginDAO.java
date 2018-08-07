package dao;
import connection.MyCon;
import java.sql.*;
import model.Complain;
public class LoginDAO 
{
  public  static boolean checkLogin(String uname,String upass) throws Exception    
  {
      Connection con=null;;
      PreparedStatement ps=null;
      ResultSet rs=null;
      con=MyCon.getConnection();
      String sql;
      sql="select * from Swacchlogin where username=? and password=?";
      ps=con.prepareStatement(sql);
      ps.setString(1, uname);
      ps.setString(2, upass);
      rs=ps.executeQuery();
      if(rs.next())
          return true;
      else
          return false;
  }
    public boolean insertLogin(Complain S) throws SQLException
        {
               Connection con=null;
               PreparedStatement ps=null;
               con=MyCon.getConnection();
               String sql;
               sql="insert into Swacchlogin values(?,?,?,?,?)";
               ps=con.prepareStatement(sql);
               ps.setString(1,S.getName());
               ps.setString(2,S.getLoginEmail());
               ps.setString(3,S.getContact());
               ps.setString(4, S.getUname());
               ps.setString(5, S.getPass());
               
               if(ps.executeUpdate()>0)
                   return true;
               else
               return false;
        }
  
}
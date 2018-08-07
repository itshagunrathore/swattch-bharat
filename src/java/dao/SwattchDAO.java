package dao;
import connection.MyCon;
import java.sql.*;
import model.Complain;

public class SwattchDAO 
{
        public boolean insertRecord(Complain c) throws SQLException
        {
               Connection con;
               PreparedStatement ps;
               con=MyCon.getConnection();
               String sql;
                sql="insert into swacchbharat values(?,?,?,?,?,?)";
               ps=con.prepareStatement(sql);
               
               ps.setString(1, c.getFname());
               ps.setString(2, c.getLname());
               ps.setString(3, null);
               ps.setString(4, c.getPno());
               ps.setString(5, c.getEmail());
               ps.setString(6, c.getTxtArea());
//               sql="insert into requests values(?,?,?,?,?)";
//               ps=con.prepareStatement(sql);
//               
//               ps.setString(1,c.getFname());
//               ps.setString(2, c.getLname());
//               ps.setString(3, c.getPno());
//               ps.setString(4, c.getEmail());
//               ps.setString(5, c.getTxtArea());
//               
               if(ps.executeUpdate()>0)
                   return true;
               else
               return false;
        }
        public boolean insertSuggestion(Complain c) throws SQLException{
            Connection con;
               PreparedStatement ps;
               con=MyCon.getConnection();
               String sql;
                sql="insert into Suggestion values(?,?,?,?,?)";
               ps=con.prepareStatement(sql);
               
               ps.setString(1, c.getSname());
               ps.setString(2, c.getSemail());
               ps.setString(3, c.getSlocation());
               ps.setString(4, c.getScontact());
               ps.setString(5, c.getScomment());
               
               if(ps.executeUpdate()>0)
                   return true;
               else
               return false;
        }
        
        public Complain searchByPhone(String phoneno)throws SQLException{
            Connection con;
//             sql="insert into swacchbharat values(?,?,?,?,?,?)";
//               ps=con.prepareStatement(sql);
//               
//               ps.setString(1, c.getFname());
//               ps.setString(2, c.getLname());
//               ps.setBlob(3, c.getIs());
//               ps.setString(4, c.getPno());
//               ps.setString(5, c.getEmail());
//               ps.setString(6, c.getTxtArea());
//               
            con=MyCon.getConnection();
            String sql="select * from results where phone=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1 ,phoneno);
            ResultSet rs = ps.executeQuery();
            Complain c = new Complain();
               if(rs.next())
               {
                  c.setFname(rs.getString(1));
                  c.setLname(rs.getString(2));
                  c.setPno(rs.getString(3));
                  c.setEmail(rs.getString(4));
                  c.setTxtArea(rs.getString(5));
               } 
               else
                   c=null;
               
               return c;
       }
        
        
//        public boolean updateStudent(Student S) throws SQLException
//        {
//            
//               Connection con=null;
//               PreparedStatement ps=null;
//               con=MyCon.getConnection();
//               String sql;
//              sql="update student1 set name=?,phy=?,chem=?,math=? where rno=?";
//              ps=con.prepareStatement(sql);
//              ps.setString(1, S.getName());
//              ps.setInt(2, S.getPhy());
//              ps.setInt(3, S.getChem());
//              ps.setInt(4, S.getMath());
//              ps.setInt(5, S.getRno());
//              if(ps.executeUpdate()>0)
//                  return true;
//              else
//                  return false;
//              
//        }
//    
       
//    
//        public boolean deleteByRno(int rno) throws Exception
//        {
//               Connection con=null;
//               PreparedStatement ps=null;
//               con=MyCon.getConnection();
//               String sql;
//               sql="delete from student1 where rno=?";
//               ps=con.prepareStatement(sql);
//               ps.setInt(1, rno);
//               if(ps.executeUpdate()>0)
//                   return true;
//               else
//                   return false;
//            
//            
//        }
//        
//        public Student searchByRno(int rno) throws Exception
//        {
//               Connection con=null;
//               PreparedStatement ps=null;
//               ResultSet rs=null; 
//               con=MyCon.getConnection();
//               String sql;
//               sql="select * from student1 where rno=?";
//               ps=con.prepareStatement(sql);
//               ps.setInt(1, rno);
//               rs=ps.executeQuery();
//               Student S=new Student();
//               if(rs.next())
//               {
//                  S.setRno(rs.getInt(1));
//                  S.setName(rs.getString(2));
//                  S.setPhy(rs.getInt(3));
//                  S.setChem(rs.getInt(4));
//                  S.setMath(rs.getInt(5));
//               } 
//               else
//                   S=null;
//               
//               return S;
//        
//        
//        }
//        public List<Student> searchAll() throws Exception
//        {
//           
//               Connection con=null;
//               PreparedStatement ps=null;
//               ResultSet rs=null; 
//               con=MyCon.getConnection();
//               String sql;
//               sql="select * from student1";
//               ps=con.prepareStatement(sql);
//               rs=ps.executeQuery();
//              List<Student>mylist=new ArrayList<Student>();
//              while(rs.next())
//              {
//                 Student S=new Student();
//                  S.setRno(rs.getInt(1));
//                  S.setName(rs.getString(2));
//                  S.setPhy(rs.getInt(3));
//                  S.setChem(rs.getInt(4));
//                  S.setMath(rs.getInt(5));
//                  mylist.add(S);
//              }   
//               
//              return mylist;
//        }
                

}
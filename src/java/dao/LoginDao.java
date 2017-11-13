
package dao;

import com.sun.org.apache.xpath.internal.operations.Or;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

public class LoginDao extends OracleDao implements DaoMethods{

    User user1=null;
    @Override
    public User getLogin(String user, String password) {
      
        
        try {
            String chechQuery="select user_name,password from login "
                    + "where user_name=? and password=?";
            
            getConnection();
            ps=conn.prepareStatement(chechQuery);
            ps.setString(1, user);
            ps.setString(2, password);
            
            rs=ps.executeQuery();
            while(rs.next()){
            User user1=new User(user, password);
            }
            closeConnection();
            return user1;
       
        } catch (SQLException ex) {
            closeConnection();
            ex.printStackTrace();
            return null;
        }

    }
    
}

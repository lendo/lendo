package samples;

import java.sql.Connection;
import java.sql.DriverManager;

import org.smartlib.pool.core.ConnectionProvider;

/**
 * Created by IntelliJ IDEA.
 * User: kerneldebugger
 * Date: Oct 2, 2005
 * Time: 1:55:22 AM
 * To change this template use File | Settings | File Templates.
 */
public class ConnectionProviderImpl1 implements ConnectionProvider {
    public Connection getConnection() throws Exception {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        return DriverManager.getConnection("jdbc:oracle:thin:@(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=tcp)(HOST=10.102.15.212)(PORT=1521)))(CONNECT_DATA=(SERVICE_NAME=DEV)(INSTANCE_NAME=DEV1)))"
                , "sachin", "passw0rd");
    }

    public void returnConnection(Connection conn) throws Exception {
        conn.close();
    }
}

<%-- Document: searchdb.jsp, Author: David Fung, Project - Fall 2020 --%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    try
    {
        //1. Reading the selected radio button value from the HTML
        String rbValue = request.getParameter("rbKey");

        //2. Accessing the NBA database
        //Setting up parameters
        String database = "jdbc:mysql://localhost:3306/project";
        String username = "root";
        String password = "";

        //3. Loading The driver before creating the connection
        Class.forName("com.mysql.jdbc.Driver"); 

        //4. Connecting to the database - Creating a Connection object
        Connection dbcon = DriverManager.getConnection(database, username, password);

        //5. Create the SQL select command
        String sqlSelect = ""; 
        if (rbValue.equals("allTeamInfo") )
        {
            sqlSelect = "select * from project_table order by Team asc";
        }
        else if (rbValue.equals("oldestTeams") )
        {
            sqlSelect = "select * from project_table order by YearFounded limit 5";
        }
        else if (rbValue.equals("recentlyFound") )
        {
            sqlSelect = "select * from project_table order by YearFounded desc limit 5";
        }
        else if (rbValue.equals("mostWin") )
        {
            sqlSelect = "select * from project_table where length(YearOfWins) = (select max(length(YearOfWins) ) from project_table)";
        }
        else if (rbValue.equals("winYears") )
        {
            sqlSelect = "select * from project_table where YearOfWins LIKE '%1970%' OR YearOfWins LIKE '%1980%' OR YearOfWins LIKE '%1990%'";
        }

        //6. Running the SQL command - Creating a Statement object and a ResultSet object
        Statement mystatement = dbcon.createStatement();
        ResultSet results = mystatement.executeQuery(sqlSelect);

        //7. Reading the records
        String Team = "";
        String YearOfWins = "";
        int YearFounded = 0, NBAWins = 0; 

        if (results.next() ) //Checking if there is a record 
        {
            //8. Move pointer back to before first record if there is a record
            results.beforeFirst();

            //9. Displaying the table headers
            out.println("<table border = '1' ");
            out.println("<tr><th colspan = '10'>NBA Statistics</th></tr>");
            out.println("<tr><th>Team</th><th>Year Founded</th><th>Wins</th><th>Year of Wins</th></tr>");
            
            //10. Now let's loop through all the matched records
            while (results.next() )
            {
                //Getting the field's values
                Team = results.getString("Team");
                YearFounded = results.getInt("YearFounded");
                NBAWins = results.getInt("NBAWins");
                YearOfWins = results.getString("YearOfWins"); 

                out.println("<tr><td>" + Team + "</td><td>" + YearFounded + "</td><td>" + NBAWins + "</td><td>" + YearOfWins + "</td></tr>" );
            }
            out.println("</table>");
        }
    }
    catch (Exception e)
    {
        out.println("Error: " + e);
    }

%>
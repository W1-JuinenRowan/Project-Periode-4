using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ASP_Inlog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LogIn_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand cmd;
        string sqlConn;
        string sqlCmd;

        sqlConn = @"Data Source = ROWAN\SQLTEST; initial catalog=ProjectFestivalApp; integrated security=true;";
        sqlCmd = "SELECT * FROM Accounts WHERE Inlognaam = '" + LogNaam.Text + "' AND Wachtwoord = '" + WW.Text + "'";
        conn = new SqlConnection(sqlConn);
        cmd = new SqlCommand(sqlCmd, conn);
        conn.Open();

        try
        {
            int valid = cmd.ExecuteNonQuery();
            HttpCookie UserName = new HttpCookie(LogNaam.Text);
            Response.Cookies.Add(UserName);
        }
        catch
        {
            meld.Text = "dat was een verkeerde combinatie";
        }
    }
}
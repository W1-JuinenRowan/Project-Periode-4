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
        if (Request.Cookies["2"] != null)
        {
            Server.Transfer("LoggedAlready.aspx");

        }
        else if (Request.Cookies["1"] != null)
        {
            Server.Transfer("LoggedAlready.aspx");
        }
    }

    protected void LogIn_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlCommand cmd2;
        string sqlConn;
        string sqlCmd;
        string sqlCmd2;

        sqlConn = @"Data Source = PC-ROWAN\SQLEXPRESS; initial catalog=ProjectFestivalApp; integrated security=true;";
        sqlCmd = "SELECT * FROM Accounts WHERE Inlognaam = '" + LogNaam.Text + "' AND Wachtwoord = '" + WW.Text + "'";
        sqlCmd2 = "SELECT LEVEL FROM Accounts WHERE Inlognaam = '" + LogNaam.Text + "' AND Wachtwoord = '" + WW.Text + "'";
        conn = new SqlConnection(sqlConn);
        cmd = new SqlCommand(sqlCmd, conn);
        cmd2 = new SqlCommand(sqlCmd2, conn);
        conn.Open();

        try
        {

            int valid = cmd.ExecuteNonQuery();
            HttpCookie UserName = new HttpCookie(LogNaam.Text);
            Response.Cookies.Add(UserName);

            string AccLvl = cmd2.ExecuteScalar().ToString();
            HttpCookie LEVEL = new HttpCookie(AccLvl);
            Response.Cookies.Add(LEVEL);
            Server.Transfer("LogConf.aspx");
        }
        catch
        {
            meld.Text = "dat was een verkeerde combinatie";
        }
    }
}
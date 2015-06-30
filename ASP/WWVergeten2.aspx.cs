using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ASP_WWVergeten2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand cmd;
        string sqlConn;
        string sqlCmd;

        sqlConn = @"Data Source = PC-ROWAN\SQLEXPRESS; initial catalog=ProjectFestivalApp; integrated security=true;";
        sqlCmd = "SELECT [Security Question] FROM [Security Questions] WHERE SecurityQuestionID = '" + LogNaam.Text + "' AND Wachtwoord = '" + WW.Text + "'";
        conn = new SqlConnection(sqlConn);
        cmd = new SqlCommand(sqlCmd, conn);
        conn.Open();

        try
        {

            int valid = cmd.ExecuteNonQuery().toString;
            HttpCookie  = new HttpCookie();
            Response.Cookies.Add();
        }
        catch
        {
            meld.Text = "dat was een verkeerde combinatie";
        }
    }
}
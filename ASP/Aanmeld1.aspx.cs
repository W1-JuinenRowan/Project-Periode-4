using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ASP_Aanmelden1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CreateUser_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand cmd;
        string sqlConn;
        string sqlCmd;

        sqlConn = @"Data Source = ROWAN\SQLTEST; initial catalog=ProjectFestivalApp; integrated security=true;";
        sqlCmd = "INSERT INTO Accounts (Inlognaam, Wachtwoord, UserName, emailadress, [security QuestionID],[Security Answer],[Genre's], arttxt, [img/vid], [LEVEL]) VALUES('";
        sqlCmd += LogNaam.Text + "', '" + Wachtwoord.Text + "', '" + UserName.Text + "', '" + Email.Text + "', " + SQID.SelectedValue + ", '" + SQA.Text + "', '" + genre.SelectedValue + "', '" + arttxt.Text + "' , '" + fotovid.Text + "'," + 2 + ')';

        conn = new SqlConnection(sqlConn);
        cmd = new SqlCommand(sqlCmd, conn);
        conn.Open();

        try
        {
            int valid = cmd.ExecuteNonQuery();
            Server.Transfer("Aanmeld2.aspx");
        }
        catch
        {
            meld.Text = sqlCmd;
        }

    }
}
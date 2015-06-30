using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ASP_FestCreator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Create_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand cmd;
        string sqlConn;
        string sqlCmd;

        sqlConn = @"Data Source = PC-ROWAN\SQLEXPRESS; initial catalog=ProjectFestivalApp; integrated security=true;";
        sqlCmd = "INSERT INTO Festival (Festival, [Start Datum], [Eind Datum], Locatie, [Genre], [Aantal Podia], Beschrijving, Thema) VALUES('";
        sqlCmd += FestNaam.Text + "' , '" + (StartCalendar.SelectedDate) + "', '" + (EindCalendar.SelectedDate) + "','" + Locatie.Text + "','" + Genre.Text + "'," + AantalPodia.Text + ",'" + Beschrijving.Text + "','" + DropDown.SelectedValue + "')";

        conn = new SqlConnection(sqlConn);
        cmd = new SqlCommand(sqlCmd, conn);
        conn.Open();

        try
        {
            int valid = cmd.ExecuteNonQuery();
            Server.Transfer("FestSucces.aspx");
        }
        catch
        {
            meld.Text = "ER ZIJN DINGEN VERKEERD";
        }
    }
}
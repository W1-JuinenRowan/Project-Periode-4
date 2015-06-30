using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ASP_Uitlog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["2"] != null)
        {
            HttpCookie myCookie = new HttpCookie("2");
            myCookie.Expires = DateTime.Now.AddDays(-10d);
            Response.Cookies.Add(myCookie);
        }
        else if (Request.Cookies["1"] != null)
        {
            HttpCookie myCookie = new HttpCookie("1");
            myCookie.Expires = DateTime.Now.AddDays(-10d);
            Response.Cookies.Add(myCookie);
        }
        Server.Transfer("../php/MainPage.php"); 
    }
}
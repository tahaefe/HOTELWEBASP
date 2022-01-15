using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class rez : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmdrekle = new SqlCommand("INSERT INTO Rezervasyon(RezIn,RezOut,RezSayi,RezCocuk,RezTip,RezAd,RezSoyad) VALUES('" + Calendar1.SelectedDate + "','" + Calendar2.SelectedDate + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + chckAd.Text + "','" + chckSoyad.Text + "')", baglan.baglan());

            cmdrekle.ExecuteNonQuery();
            Response.Redirect("Default.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button_Login_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Select * from Yonetici WHERE yoneticiKullanici='"+TBuser.Text+"'and yoneticiSifre='"+TBPass.Text+"'", baglan.baglan());
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Response.Redirect("adm/adminpanel.aspx");
            }
            else
            {
                Lbl_bilgi.Text = "Username or Pass is wrong";
            }
        }
    }
}
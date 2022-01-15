using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.adm
{
    public partial class rooms : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();

        string odaID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            odaID = Request.QueryString["odaID"];
            islem = Request.QueryString["islem"];

            if (islem == "sil")
            {
                SqlCommand cmdosil = new SqlCommand("DELETE FROM Odalar WHERE odaID='" + odaID + "'", baglan.baglan());
                cmdosil.ExecuteNonQuery();
            }

            if (Page.IsPostBack == false)
            {
                pnl_makekle.Visible = false;
                pnl_mkduzenle.Visible = false;


                //oda getir
                SqlCommand cmdogetir = new SqlCommand("SELECT * FROM Odalar", baglan.baglan());
                SqlDataReader drodagetir = cmdogetir.ExecuteReader();


                ddl_oda.DataSource = drodagetir;
                ddl_oda.DataBind();
            }
        }

        protected void BT_makkapa_Click(object sender, EventArgs e)
        {
            pnl_makekle.Visible = false;
        }

        protected void BT_makac_Click(object sender, EventArgs e)
        {
            pnl_makekle.Visible = true;
        }

        protected void BTN_mkdac_Click(object sender, EventArgs e)
        {
            pnl_mkduzenle.Visible = true;
        }

        protected void BTN_mkdkapa_Click(object sender, EventArgs e)
        {
            pnl_mkduzenle.Visible = false;
        }

        protected void BTN_odaekle_Click(object sender, EventArgs e)
        {
            if (FU_odaResim.HasFile)
            {
                FU_odaResim.SaveAs(Server.MapPath("../images/" + FU_odaResim.FileName));

                SqlCommand cmdoekle = new SqlCommand("INSERT INTO Odalar(odaTur,odaFiyat,odaResim) VALUES('" + TBodaTur.Text + "','" + TBodaFiyat.Text + "','../images/" + FU_odaResim.FileName + "')", baglan.baglan());

                cmdoekle.ExecuteNonQuery();

                Response.Redirect("room.aspx");
            }
            else
            {
                BTN_odaekle.Text = "RESİM EKLE!!!";
            }
        }
    }
}
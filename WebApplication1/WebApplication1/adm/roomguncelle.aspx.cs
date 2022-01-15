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
    public partial class roomguncelle : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        string odaID = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            odaID = Request.QueryString["odaID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmdogetir = new SqlCommand("SELECT * FROM Odalar WHERE odaID='" + odaID + "'", baglan.baglan());
                SqlDataReader drodagetir = cmdogetir.ExecuteReader();


                DataTable dtodagetir = new DataTable("tablo");
                dtodagetir.Load(drodagetir);

                DataRow row = dtodagetir.Rows[0];
                TBodadTur.Text = row["odaTur"].ToString();
                TBodadFiyat.Text = row["odaFiyat"].ToString();
                TBodadDurum.Text = row["odaDurum"].ToString();
            }

        }

        protected void BTN_odaekle_Click(object sender, EventArgs e)
        {
            if (FU_odadResim.HasFile)
            {
                FU_odadResim.SaveAs(Server.MapPath("../images/" + FU_odadResim.FileName));

                SqlCommand cmdodguncelle = new SqlCommand("UPDATE Odalar SET odaTur='" + TBodadTur.Text + "',odaFiyat='" + TBodadFiyat.Text + "',odaDurum='" + TBodadDurum.Text + "',odaResim='../images/" + FU_odadResim.FileName + "' where odaID='" + odaID + "'", baglan.baglan());
                cmdodguncelle.ExecuteNonQuery();

                Response.Redirect("room.aspx");
            }
            else
            {
                SqlCommand cmdodguncelle = new SqlCommand("UPDATE Odalar SET odaTur='" + TBodadTur.Text + "',odaFiyat='" + TBodadFiyat.Text + "',odaDurum='" + TBodadDurum.Text + "' where odaID='" + odaID + "'", baglan.baglan());
                cmdodguncelle.ExecuteNonQuery();

                Response.Redirect("room.aspx");
            }
        }
    }
}
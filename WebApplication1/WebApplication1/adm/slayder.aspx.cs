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
    public partial class slayder : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        string slayderID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            slayderID = Request.QueryString["slayderID"];
            islem = Request.QueryString["islem"];

            if (islem == "sil")
            {
                SqlCommand cmdsil = new SqlCommand("DELETE from Slayder WHERE slayderID='" + slayderID + "'", baglan.baglan());
                cmdsil.ExecuteNonQuery();
            }

            if (Page.IsPostBack == false)
            {
                pnl_kategoriekle.Visible = false;
                pnl_ktduzenle.Visible = false;
            }

            //kategorileri dataliste cekme

            SqlCommand cmdkgetir = new SqlCommand("SELECT * from Slayder", baglan.baglan());
            SqlDataReader drkgetir = cmdkgetir.ExecuteReader();

            dl_ktgetir.DataSource = drkgetir;
            dl_ktgetir.DataBind();
        }

        protected void BT_ktac_Click(object sender, EventArgs e)
        {
            pnl_kategoriekle.Visible = true;
        }

        protected void BT_ktkapa_Click(object sender, EventArgs e)
        {
            pnl_kategoriekle.Visible = false;
        }

        protected void btn_kategoriEkle_Click(object sender, EventArgs e)
        {
            if (FU_ktresim.HasFile)
            {
                FU_ktresim.SaveAs(Server.MapPath("/kresim/" + FU_ktresim.FileName));

                SqlCommand cmdkekle = new SqlCommand("INSERT INTO Slayder(slayderBaslik,slayderOzet,slayderID,slayderResim) Values('"+TB_ktadi.Text+ "','" + TB_ktadet.Text + "','" + TB_ktsira.Text+"','../kresim/"+FU_ktresim.FileName+"')", baglan.baglan());
                cmdkekle.ExecuteNonQuery();

                Response.Redirect("slayder.aspx");
            }
            else
            {
                btn_kategoriEkle.Text = "Resim Ekle!";
            }
        }

        protected void BT_ktdac_Click(object sender, EventArgs e)
        {
            pnl_ktduzenle.Visible = true;

        }

        protected void BT_ktdkapa_Click(object sender, EventArgs e)
        {
            pnl_ktduzenle.Visible = false;
        }
    }
}
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
    public partial class video : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        string videoID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            videoID = Request.QueryString["videoID"];
            islem = Request.QueryString["islem"];

            if (islem == "sil")
            {
                SqlCommand cmdvsil = new SqlCommand("DELETE from Video WHERE videoID='" + videoID + "'", baglan.baglan());
                cmdvsil.ExecuteNonQuery();
            }

            if (Page.IsPostBack == false)
            {
                pnl_vdekle.Visible = false;
                pnl_vdduzenle.Visible = false;
            }

            //kategorileri dataliste cekme

            SqlCommand cmdvgetir = new SqlCommand("SELECT * from Video", baglan.baglan());
            SqlDataReader drvgetir = cmdvgetir.ExecuteReader();

            dl_vdgetir.DataSource = drvgetir;
            dl_vdgetir.DataBind();

        }

        protected void BT_ktac_Click(object sender, EventArgs e)
        {
            pnl_vdekle.Visible = true;
        }

        protected void BT_ktkapa_Click(object sender, EventArgs e)
        {
            pnl_vdekle.Visible = false;
        }

        protected void btn_kategoriEkle_Click(object sender, EventArgs e)
        {
            if (FU_ktresim.HasFile)
            {
                FU_ktresim.SaveAs(Server.MapPath("../images/" + FU_ktresim.FileName));

                SqlCommand cmdkekle = new SqlCommand("INSERT INTO Video(videoBaslik,videoOzet,videoID,videoBG,videoLink) Values('" + TB_ktadi.Text + "','" + TB_ktadet.Text + "','" + TB_ktsira.Text + "','../images/" + FU_ktresim.FileName + "','" + TB_videolink.Text + "')", baglan.baglan());
                cmdkekle.ExecuteNonQuery();

                Response.Redirect("video.aspx");
            }
            else
            {
                btn_kategoriEkle.Text = "Resim Ekle!";
            }
        }

        protected void BT_ktdac_Click(object sender, EventArgs e)
        {
            pnl_vdduzenle.Visible = true;

        }

        protected void BT_ktdkapa_Click(object sender, EventArgs e)
        {
            pnl_vdduzenle.Visible = false;
        }
    }
}
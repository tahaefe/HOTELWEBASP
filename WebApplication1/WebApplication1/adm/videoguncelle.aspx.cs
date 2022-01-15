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
    public partial class videoguncelle : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        string videoID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            videoID = Request.QueryString["videoID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmdvideoegetir = new SqlCommand("SELECT * FROM Video WHERE videoID='" + videoID + "'", baglan.baglan());
                SqlDataReader drvideodgetir = cmdvideoegetir.ExecuteReader();


                DataTable dtvideodgetir = new DataTable("tablo");
                dtvideodgetir.Load(drvideodgetir);

                DataRow row = dtvideodgetir.Rows[0];
                TB_ktadi.Text = row["videoBaslik"].ToString();
                TB_ktsira.Text = row["videoID"].ToString();
                TB_ktadet.Text = row["videoOzet"].ToString();
                TB_videolink.Text = row["videoLink"].ToString();

            }

        }

        protected void btn_kategoriEkle_Click(object sender, EventArgs e)
        {
            if (FU_ktresim.HasFile)
            {
                FU_ktresim.SaveAs(Server.MapPath("../images/" + FU_ktresim.FileName));

                SqlCommand cmdvideoguncelle = new SqlCommand("UPDATE Video SET videoID='" + TB_ktsira.Text + "',videoBaslik='" + TB_ktadi.Text + "',videoOzet='" + TB_ktadet.Text + "',videoLink='" + TB_videolink.Text + "',VideoBG='../images/" + FU_ktresim.FileName + "' where videoID='" + videoID + "'", baglan.baglan());
                cmdvideoguncelle.ExecuteNonQuery();

                Response.Redirect("video.aspx");
            }
            else
            {
                SqlCommand cmdvideorguncelle = new SqlCommand("UPDATE Video SET videoID='" + TB_ktsira.Text + "',videoBaslik='" + TB_ktadi.Text + "',videoOzet='" + TB_ktadet.Text + "',videoLink='" + TB_videolink.Text + "' where videoID='" + videoID + "'", baglan.baglan());
                cmdvideorguncelle.ExecuteNonQuery();

                Response.Redirect("video.aspx");
            }
        }
    }
}
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
    public partial class slayderguncelle : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        string slayderID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            slayderID = Request.QueryString["slayderID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand cmdkguncelle = new SqlCommand("SELECT * from Slayder WHERE slayderID='" + slayderID + "'", baglan.baglan());
                SqlDataReader drkguncelle = cmdkguncelle.ExecuteReader();

                DataTable dtkguncelle = new DataTable("tablo");
                dtkguncelle.Load(drkguncelle);

                DataRow row = dtkguncelle.Rows[0];

                TB_ktdadi.Text = row["slayderBaslik"].ToString();
                TB_ktdsira.Text = row["slayderID"].ToString();
                TB_ktdadet.Text = row["slayderOzet"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FU_ktdresim.HasFile)
            {
                FU_ktdresim.SaveAs(Server.MapPath("../kresim/" + FU_ktdresim.FileName));

                SqlCommand cmdkguncelle = new SqlCommand("UPDATE Slayder SET slayderBaslik='"+TB_ktdadi.Text+ "',slayderID='" + TB_ktdsira.Text+"',slayderOzet='"+TB_ktdadet.Text+"',slayderResim='../kresim/"+FU_ktdresim.FileName+ "' where slayderID='" + slayderID + "'", baglan.baglan());
                cmdkguncelle.ExecuteNonQuery();

                Response.Redirect("slayder.aspx");
            }
            else
            {
                SqlCommand cmdguncelle = new SqlCommand("UPDATE Slayder SET slayderBaslik='" + TB_ktdadi.Text + "',slayderID='" + TB_ktdsira.Text + "',slayderOzet='" +TB_ktdadet.Text+ "' WHERE slayderID='" + slayderID + "'", baglan.baglan());
                cmdguncelle.ExecuteNonQuery();

                Response.Redirect("slayder.aspx");
            }
        }
    }
}
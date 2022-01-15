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
    
    public partial class tekliflerguncelle : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        string makaleID = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            makaleID = Request.QueryString["makaleID"];

            if (Page.IsPostBack == false)
            {
                SqlCommand cmdmakalegetir = new SqlCommand("SELECT * FROM Makale WHERE makaleID='"+makaleID+"'", baglan.baglan());
                SqlDataReader drmakalegetir = cmdmakalegetir.ExecuteReader();

                DataTable dtmakalegetir = new DataTable("tablo");
                dtmakalegetir.Load(drmakalegetir);

                DataRow row = dtmakalegetir.Rows[0];
                TB_mkgbaslik.Text = row["makaleBaslik"].ToString();
                TB_mkgozet.Text = row["makaleOzet"].ToString();
                TB_mkgicerik.Text = row["makaleIcerik"].ToString();
                TB_mkgyorums.Text = row["makaleID"].ToString();


            }
        }

        protected void mkguncelle_Click(object sender, EventArgs e)
        {
            if (FU_mkgresim.HasFile)
            {
                FU_mkgresim.SaveAs(Server.MapPath("/sresim/" + FU_mkgresim.FileName));

                SqlCommand cmdmkguncelle = new SqlCommand("UPDATE Makale SET makaleBaslik='"+TB_mkgbaslik.Text+"',makaleOzet='"+TB_mkgozet.Text+"',makaleIcerik='"+TB_mkgicerik.Text+"',makaleID='"+TB_mkgyorums.Text+"',makaleResim='/sresim/"+FU_mkgresim.FileName+"' where makaleID='"+makaleID+"'", baglan.baglan());
                cmdmkguncelle.ExecuteNonQuery();
                
                Response.Redirect("makale.aspx");
            }
            else
            {
                SqlCommand cmdmkguncelle = new SqlCommand("UPDATE Makale SET makaleBaslik='" + TB_mkgbaslik.Text + "',makaleOzet='" + TB_mkgozet.Text + "',makaleIcerik='" + TB_mkgicerik.Text + "',makaleID='" + TB_mkgyorums.Text + "' where makaleID='" + makaleID + "'", baglan.baglan());
                cmdmkguncelle.ExecuteNonQuery();
                
               
                Response.Redirect("makale.aspx");
            }
        }
    }
}
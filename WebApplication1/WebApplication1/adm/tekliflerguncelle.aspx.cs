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
    public partial class tekliflerguncelle1 : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();
        string teklifID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            teklifID = Request.QueryString["teklifID"];
            if (Page.IsPostBack == false)
            {
                SqlCommand cmdtdgetir = new SqlCommand("SELECT * FROM Teklifler WHERE teklifID='" + teklifID + "'", baglan.baglan());
                SqlDataReader drteklifdgetir = cmdtdgetir.ExecuteReader();


                DataTable dtodagetir = new DataTable("tablo");
                dtodagetir.Load(drteklifdgetir);

                DataRow row = dtodagetir.Rows[0];
                TBmakaleID.Text = row["teklifID"].ToString();
                TB_makbaslik.Text = row["teklifBaslik"].ToString();
                TB_makozet.Text = row["teklifListe"].ToString();
                
            }

        }

        protected void BTN_tklfedit_Click(object sender, EventArgs e)
        {
            if (FU_Teklifd.HasFile)
            {
                FU_Teklifd.SaveAs(Server.MapPath("../images/" + FU_Teklifd.FileName));

                SqlCommand cmdtklfguncelle = new SqlCommand("UPDATE Teklifler SET teklifID='" + TBmakaleID.Text + "',teklifBaslik='" + TB_makbaslik.Text + "',teklifListe='" + TB_makozet.Text + "',teklifResim='../images/" + FU_Teklifd.FileName + "' where teklifID='" + teklifID + "'", baglan.baglan());
                cmdtklfguncelle.ExecuteNonQuery();

                Response.Redirect("teklifler.aspx");
            }
            else
            {
                SqlCommand cmdtklfrguncelle = new SqlCommand("UPDATE Teklifler SET teklifID='" + TBmakaleID.Text + "',teklifBaslik='" + TB_makbaslik.Text + "',teklifListe='" + TB_makozet.Text + "' where teklifID='" + teklifID + "'", baglan.baglan());
                cmdtklfrguncelle.ExecuteNonQuery();

                Response.Redirect("teklifler.aspx");
            }
        }
    }
    
}
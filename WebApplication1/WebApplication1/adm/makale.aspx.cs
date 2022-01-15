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
    public partial class teklifler : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();

        string makaleID = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            makaleID = Request.QueryString["makaleID"];
            islem = Request.QueryString["islem"];
           
            if (islem == "sil")
            {
                SqlCommand cmdmsil = new SqlCommand("DELETE FROM Makale WHERE makaleID='"+makaleID+"'", baglan.baglan());
                cmdmsil.ExecuteNonQuery();

            }
            
            if (Page.IsPostBack == false)
            {
                pnl_makekle.Visible = false;
                pnl_mkduzenle.Visible = false;

                

                //makale getir
                SqlCommand cmdmgetir = new SqlCommand("SELECT * FROM Makale", baglan.baglan());
                SqlDataReader drmakalegetir = cmdmgetir.ExecuteReader();

               
                ddl_makaled.DataSource = drmakalegetir;
                ddl_makaled.DataBind();
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

        

        protected void BTN_makekle_Click(object sender, EventArgs e)
        {
            if (FU_Slider.HasFile)
            {
                FU_Slider.SaveAs(Server.MapPath("/sresim/" + FU_Slider.FileName));
                
                SqlCommand cmdmekle = new SqlCommand("INSERT INTO Makale(makaleID,makaleBaslik,makaleOzet,makaleIcerik,makaleResim) VALUES('" + TBmakaleID.Text + "','" + TB_makbaslik.Text+"','"+TB_makozet.Text+"','"+TB_makicerik.Text+"','/sresim/"+FU_Slider.FileName+"')", baglan.baglan());
                
                cmdmekle.ExecuteNonQuery();
                
                

                Response.Redirect("makale.aspx");
            }
            else
            {
                BTN_makekle.Text = "RESİM EKLE!!!";
            }
        }


        protected void BTN_mkdac_Click(object sender, EventArgs e)
        {
            pnl_mkduzenle.Visible = true;
        }

        protected void BTN_mkdkapa_Click(object sender, EventArgs e)
        {
            pnl_mkduzenle.Visible = false;
        }
    }
}
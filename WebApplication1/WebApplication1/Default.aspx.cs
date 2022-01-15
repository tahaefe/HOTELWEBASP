using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        sqlbaglantisi baglan = new sqlbaglantisi();

        protected void Page_Load(object sender, EventArgs e)
        {


            if (Page.IsPostBack == false)
            {
                SqlCommand cmdmakalegetir = new SqlCommand("SELECT * FROM Makale Where makaleID=1", baglan.baglan());
                SqlDataReader drmakalegetir = cmdmakalegetir.ExecuteReader();

                SqlCommand cmdteklifgetir = new SqlCommand("SELECT * FROM Makale Where makaleID=3", baglan.baglan());
                SqlDataReader drteklifgetir = cmdteklifgetir.ExecuteReader();

                
                ddl_makaled.DataSource = drmakalegetir;
                ddl_makaled.DataBind();

                

            }
        }

        
    }
}
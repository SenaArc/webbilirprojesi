using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace webbilirprojesi.sinif
{
    public partial class siniflistesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            projeTableAdapters.projestudentTableAdapter ogrenci = new projeTableAdapters.projestudentTableAdapter();
            projeTableAdapters.projeclassTableAdapter sinif = new projeTableAdapters.projeclassTableAdapter();
            kayitliliste.DataSource = ogrenci.ogrencilistesigetir();
            kayitliliste.DataBind();
            
        }

        protected void Duzenle_Click(object sender, EventArgs e)
            {

               
                Response.Redirect("/sinif/sinifduzenle.aspx");
            }
            protected void Sil_Click(object sender, EventArgs e)
            {

                
                Response.Redirect("/sinif/sinifsil.aspx");
            }


        
    }
}
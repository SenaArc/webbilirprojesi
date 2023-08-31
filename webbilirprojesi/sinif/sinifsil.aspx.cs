using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace webbilirprojesi.sinif
{
    public partial class sinifsil : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            projeTableAdapters.projestudentTableAdapter ogrenci = new projeTableAdapters.projestudentTableAdapter();
            ogrenci.ogrencisil(id);
            Response.Redirect("siniflistesi.aspx");

        }
    }
}
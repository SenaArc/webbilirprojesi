using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Hosting;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbilirprojesi.ogrenci
{
    public partial class ogrenciekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnKaydet_Click(object sender, EventArgs e)
        {

            projeTableAdapters.projestudentTableAdapter ogrenci = new projeTableAdapters.projestudentTableAdapter();
            projeTableAdapters.projeclassTableAdapter sinif = new projeTableAdapters.projeclassTableAdapter();
            ogrenci.ogrenciekle(txtName.Text, txtStudentId.Text);
            sinif.sinifekle(txtClass.Text);
            Response.Redirect("/sinif/siniflistesi.aspx");
        }
    }
}
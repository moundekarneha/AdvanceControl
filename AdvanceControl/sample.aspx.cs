using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdvanceControl
{
    public partial class sample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = Server.MapPath("~/UploadedData/");
            string mime = FileUpload1.PostedFile.ContentType;
            if (mime == "image/jpg" || mime == "image/png" || mime == "image/jpeg" || mime == "image/gif")
            {
                FileUpload1.SaveAs(path+FileUpload1.FileName);
            }
            else
            {
                Response.Write("Invalid file type");
            }
            
        }

        protected void btnShowHide_Click(object sender, EventArgs e)
        {
            Panel1.Visible = !Panel1.Visible;
        }

        protected void btnV1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnV2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnV3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void btnAddControl_Click(object sender, EventArgs e)
        {
            TextBox tb = new TextBox();
            tb.TextMode= TextBoxMode.MultiLine;
            Button b1 = new Button();
            b1.Text = "Hello";
            PlaceHolder1.Controls.Add(tb);  
            PlaceHolder1.Controls.Add(b1);
        }
    }
}
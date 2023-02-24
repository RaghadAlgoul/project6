using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_6
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        class var { public static string imgPath; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {


            if (txtName.Text != "" && txtDesciption.Value != "" && txtTarget.Text != "" && var.imgPath != "")
            {
                SqlDataSource1.InsertParameters["Name_campaigns"].DefaultValue = txtName.Text;
                SqlDataSource1.InsertParameters["Details"].DefaultValue = txtDesciption.Value;
                SqlDataSource1.InsertParameters["Target_campaigns"].DefaultValue = txtTarget.Text;
                SqlDataSource1.InsertParameters["Image_campaigns"].DefaultValue = var.imgPath;
                SqlDataSource1.Insert();

                Response.Redirect("dashCampaigns.aspx");
            }
            else
            {
                alert2.InnerHtml = " * Please make sure that all fields are filled out";

            }

        }

        protected void upload_Click(object sender, EventArgs e)
        {

            try
            {
                alertLabel.InnerHtml = "";

                string folderPath = Server.MapPath("~/image/");
                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }

                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
                ImageDiv.Style["display"] = "none";
                Image1.Style["display"] = "inline-block";
                Image1.Attributes["src"] = "Image\\" + (FileUpload1.FileName);
                var.imgPath = "Image\\" + (FileUpload1.FileName);
            }
            catch
            {
                alertLabel.InnerHtml = " * Please select image befor click on upload";
            }

        }
    }
}
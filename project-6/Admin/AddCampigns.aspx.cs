using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project6.Admin
{
    class var { public static string imgPath; }

    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                if (txtName.Text != "" && TextArea1.Value != "" && txtTarget.Text != "" && var.imgPath != "")
                {

                    SqlDataSource1.InsertParameters["Name_campaigns"].DefaultValue = txtName.Text;
                    SqlDataSource1.InsertParameters["Details"].DefaultValue = TextArea1.Value;
                    SqlDataSource1.InsertParameters["Target_campaigns"].DefaultValue = txtTarget.Text;
                    SqlDataSource1.InsertParameters["Image_campaigns"].DefaultValue = var.imgPath;
                    SqlDataSource1.Insert();
                    Response.Redirect("Campaigns.aspx");

                }
                else
                {
                    alert2.InnerHtml = " * Please make sure that all fields are filled out";

                }
            }
            catch (SqlException x) { alert2.InnerText = x.Message; }

        }
        protected void upload_Click(object sender, EventArgs e)
        {
            try
            {
                alertLabel.InnerHtml = "";

                string folderPath = Server.MapPath("~/img/");
                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }

                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
                ImageDiv.Style["display"] = "none";
                Image1.Style["display"] = "inline-block";
                Image1.Attributes["src"] = "img\\" + (FileUpload1.FileName);
                var.imgPath = "img\\" + (FileUpload1.FileName);
            }
            catch
            {
                alertLabel.InnerHtml = " * Please select image befor click on upload";
            }
        }
    }
}
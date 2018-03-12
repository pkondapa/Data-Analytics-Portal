using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataAnalytics
{
    public partial class ModelScores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void mssubmit_Click(object sender, EventArgs e)
        {
            if (flupms.HasFile)
            {
                if (flupms.FileName.EndsWith("csv"))
                {
                    flupms.SaveAs(@"C:\\Uploads\\" + "MODELS_" + DateTime.Now.ToLongDateString() + "_" + flupms.FileName);
                    lblMessage.Text = "File uploaded sucessfully";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    lblMessage.Text = "Invalid file. Only CSV file allowed";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {

                lblMessage.Text = "Please upload a CSV file";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
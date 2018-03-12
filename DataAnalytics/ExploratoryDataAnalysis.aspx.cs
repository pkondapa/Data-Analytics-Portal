using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataAnalytics
{
    public partial class ExploratoryDataAnalysis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void edasubmit_Click(object sender, EventArgs e)
        {
            if (flupeda.HasFile)
            {
                if (flupeda.FileName.EndsWith("csv"))
                {
                    flupeda.SaveAs(@"C:\\Uploads\\" + "EDA_" + DateTime.Now.ToLongDateString() + "_" + flupeda.FileName);
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
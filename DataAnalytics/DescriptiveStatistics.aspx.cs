using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataAnalytics
{
    public partial class DescriptiveStatistics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                lblMessage.Text = string.Empty;
        }

        protected void btnDcpStat_Click(object sender, EventArgs e)
        {

            if (flupDscStat.HasFile)
            {
                if (flupDscStat.FileName.EndsWith("csv"))
                {
                    flupDscStat.SaveAs(@"C:\\Uploads\\" + "DCP_STAT_" + DateTime.Now.ToLongDateString() + "_" + flupDscStat.FileName);
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
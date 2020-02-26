using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace paper.Chapter2
{
    public partial class ch1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StreamWriter s = new StreamWriter(System.AppDomain.CurrentDomain.SetupInformation.ApplicationBase + "/test/ch1.txt");
            if (RadioButton1.Checked)
            {
                s.WriteLine("1 A");
                
            }else if (RadioButton2.Checked)
            {
                s.WriteLine("1 B");
            }else if (RadioButton3.Checked)
            {
                s.WriteLine("1 C");
            }else if (RadioButton4.Checked)
            {
                s.WriteLine("1 D");
            }
            else
            {
                s.WriteLine("1 未作答");
            }
            s.Close();
            Response.Redirect("~/chapter2/ch2.aspx");
        }
    }
}
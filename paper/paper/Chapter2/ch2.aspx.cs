using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace paper.Chapter2
{
    public partial class ch2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            StreamWriter s = new StreamWriter(System.AppDomain.CurrentDomain.SetupInformation.ApplicationBase + "/test/ch2.txt");
            check(s,1,new RadioButton[] { RadioButton1, RadioButton2, RadioButton3, RadioButton4 });
            check(s, 2, new RadioButton[] { RadioButton5, RadioButton6, RadioButton7, RadioButton8 });
            check(s, 3, new RadioButton[] { RadioButton9, RadioButton10, RadioButton11, RadioButton12 });
            check(s, 4, new RadioButton[] { RadioButton13, RadioButton14, RadioButton15, RadioButton16 });
            s.Close();
            Response.Redirect("~/chapter2/ch3.aspx");
        }

        private void check(StreamWriter s,int i, RadioButton[] r)
        {
            if (r[0].Checked)
            {
                s.WriteLine(i+" A");

            }
            else if (r[1].Checked)
            {
                s.WriteLine(i+" B");
            }
            else if (r[2].Checked)
            {
                s.WriteLine(i+" C");
            }
            else if (r[3].Checked)
            {
                s.WriteLine(i+" D");
            }
            else
            {
                s.WriteLine(i+" 未作答");
            }
        }
    }
}
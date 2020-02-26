using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;
using System.Diagnostics;
using System.IO;
namespace paper
{
    public partial class predict : System.Web.UI.Page
    {
        public static List<string> output = new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string[] strArr = new string[1];//参数列表
            string sArguments = @"predict.py";//这里是python的文件名字
            //strArr[0] = "E:/paper/dataset/prediction/cat_or_dog_12.jpg";
            RunPythonScript(sArguments, "-u");
            Debug.WriteLine("Finish");
            if (output[output.Count - 1].Equals("dog"))
            {
                Debug.WriteLine("predict = dog");
                Label1.Text = "predict = dog";
            }
            else if(output[output.Count - 1].Equals("cat"))
            {
                Debug.WriteLine("predict = cat");
                Label1.Text = "predict = cat";
            }

        }
        public static void RunPythonScript(string sArgName, string args = "")
        {
            Process p = new Process();
            //string path = System.AppDomain.CurrentDomain.SetupInformation.ApplicationBase + sArgName;// 获得python文件的绝对路径（将文件放在c#的debug文件夹中可以这样操作）
            string path = @"E:\paper\paper\paper\py\" + sArgName;//(因为我没放debug下，所以直接写的绝对路径,替换掉上面的路径了)
            p.StartInfo.FileName = @"E:\paper\paper\paper\py\python.exe";
            string sArguments = path;
            //foreach (string sigstr in teps)
            //{
            //    sArguments += " " + sigstr;//传递参数
            //}
            
            //sArguments += " " + args;

            //Debug.WriteLine("args = " + sArguments);

            //p.StartInfo.Arguments = sArguments;

            p.StartInfo.UseShellExecute = false;

            p.StartInfo.RedirectStandardOutput = true;

            p.StartInfo.RedirectStandardInput = true;

            p.StartInfo.RedirectStandardError = true;

            p.StartInfo.CreateNoWindow = true;

            p.StartInfo.FileName = "cmd.exe";

            p.Start();

            p.StandardInput.WriteLine(sArguments);


            Debug.WriteLine("Start");
            //p.BeginOutputReadLine();
            //p.OutputDataReceived += new DataReceivedEventHandler(p_OutputDataReceived);
            //Console.ReadLine();
            p.StandardInput.AutoFlush = true;
            // 前面一個命令不管是否執行成功都執行後面(exit)命令，如果不執行exit命令，後面呼叫ReadToEnd()方法會假死
            p.StandardInput.WriteLine("exit");

            StreamReader reader = p.StandardOutput;//獲取exe處理之後的輸出資訊
            string curLine = reader.ReadLine(); //獲取錯誤資訊到error
            int cnt = 0;
            
            while (!reader.EndOfStream)
            {
                if (!string.IsNullOrEmpty(curLine))
                {
                    
                    Debug.WriteLine(cnt++ + " "+curLine);
                    output.Add(curLine);
                }
                curLine = reader.ReadLine();
            }
            reader.Close(); //close程序

            p.WaitForExit();  //等待程式執行完退出程序
            p.Close();

        }
        static void p_OutputDataReceived(object sender, DataReceivedEventArgs e)
        {
            if (!string.IsNullOrEmpty(e.Data))
            {
                Debug.WriteLine(e.Data + Environment.NewLine);
            }

        }

        
    }
}
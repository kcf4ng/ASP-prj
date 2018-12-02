using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebApp
{
    public partial class WfrmBMI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl警告.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if ((!string.IsNullOrEmpty(TextBox1.Text)) && (!string.IsNullOrEmpty(TextBox2.Text)))
                {

                    double d身高 = (Convert.ToDouble(TextBox1.Text) * 0.01);

                    d身高 = d身高 * d身高;

                    double bmi = (Convert.ToDouble(TextBox2.Text)) / d身高;

                    string strbmi = bmi.ToString("f2");

                    lblbmi.Text = strbmi;

                    if (bmi < 18.5)
                        Label1.Text = "體重過輕";
                    else if (bmi >= 18.5 && bmi < 24)
                        Label1.Text = "正常範圍";
                    else if (bmi >= 24 && bmi < 27)
                        Label1.Text = "過重";
                    else if (bmi >= 27 && bmi < 30)
                        Label1.Text = "輕度肥胖";
                    else if (bmi >= 30 && bmi < 35)
                        Label1.Text = "中度肥胖";
                    else if (bmi >= 35)
                        Label1.Text = "重度肥胖";

                }
                else
                {
                    lbl警告.Text = "請確實填入身高與體重數值。";
                    lbl警告.Visible = true;
                }
            }
            catch
            {
                lbl警告.Text = "請填入有效的身高與體重數值。";
                lbl警告.Visible = true;
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            lbl警告.Visible = false;
            lblbmi.Text = "";
            Label1.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }

}

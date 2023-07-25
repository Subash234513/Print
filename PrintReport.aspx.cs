using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class PrintReport : System.Web.UI.Page
    {
        string[] testListNames = { };
        bool sno = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void BillAmount(string no)
        {
            try
            {

                string testName = "1:Fasting Sugar:50,2:Postprantal Sugar:50,3:Random Sugar:50,4:Haemoglobulin:80,5:Lipid Profile:450,6:Total-Cholestrol:150,7:Billirubin:200,8:Liver Function Test:600,9:Urea:140,10:Creatinine:120,11:Uric Acid:150,12:SGOT:150,13:SGPT:150,14:BL Grouping:50";
                string[] testLists = testName.Split(',');
                TextBox4.Text = DateTime.Now.ToString("dd-MM-yyyy");
                foreach (string test in testLists)
                {
                    string[] testList = test.Split(':');
                    if (sno == false)
                    {
                        if (txttestname1.Text == "" || txtcharge1.Text == "" || txtbalance1.Text == "")
                        {
                            if (txtsno1.Text == testList[0])
                            {
                                txttestname1.Text = testList[1];
                                txtcharge1.Text = testList[2];
                                txtbalance1.Text = testList[2];                                
                                sno = true;
                            }

                        }
                    }
                    if (sno == false)
                    {
                        if (txttestname2.Text == "" || txtcharge2.Text == "" || txtbalance2.Text == "")
                        {
                            if (txtsno2.Text == testList[0])
                            {
                                txttestname2.Text = testList[1];
                                txtcharge2.Text = testList[2];
                                txtbalance2.Text = testList[2];
                                sno = true;
                            }

                        }
                    }
                    if (sno == false)
                    {
                        if (txttestname3.Text == "" || txtcharge3.Text == "" || txtbalance3.Text == "")
                        {
                            if (txtsno3.Text == testList[0])
                            {
                                txttestname3.Text = testList[1];
                                txtcharge3.Text = testList[2];
                                txtbalance3.Text = testList[2];
                                sno = true;
                            }
                        }
                    }
                }

            }
            catch
            {

            }
        }

        protected void Unnamed6_TextChanged(object sender, EventArgs e)
        {
            string sno = txtsno1.Text;
            BillAmount(sno);
        }

        protected void txtsno2_TextChanged(object sender, EventArgs e)
        {
            string sno = txtsno2.Text;
            BillAmount(sno);
        }

        protected void txtsno3_TextChanged(object sender, EventArgs e)
        {
            string sno = txtsno3.Text;
            BillAmount(sno);
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            long totalAmount = 0;
            if (txtbalance1.Text == "")
            {
                txtbalance1.Text = "0";
                txtbalance1.Visible = false;
            }
            if (txtbalance2.Text == "")
            {
                txtbalance2.Text = "0";
                txtbalance2.Visible = false;
            }
            if (txtbalance3.Text == "")
            {
                txtbalance3.Text = "0";
                txtbalance3.Visible = false;
            }
           
            int BalAmt1 = Convert.ToInt32(txtbalance1.Text);
            int BalAmt2 = Convert.ToInt32(txtbalance2.Text);
            int BalAmt3 = Convert.ToInt32(txtbalance3.Text);
            totalAmount = BalAmt1 + BalAmt2 + BalAmt3;
            txttotalamt.Text=totalAmount.ToString();
            txtpaidamt.Text=totalAmount.ToString();
            string amount = wordtonumber(totalAmount);
            amount = amount + " Rupees";
            recei_box.Text = amount;
            btnadd.Visible = false;
        }

        public string wordtonumber(long number)
        {
            string word = "";
            if (number == 0)
            {
                word += "Zero";
            }
            if ((number / 100000) > 0)
            {
                word += wordtonumber(number / 100000) + " Lakh ";
                number %= 100000;
            }
            if ((number / 1000) > 0)
            {
                word += wordtonumber((number / 1000)) + " thousand ";
                number %= 1000;
            }
            if ((number / 100) > 0)
            {
                word += wordtonumber((number / 100)) + " hundred ";
                number %= 100;
            }
            if (number > 0)
            {
                var unitmap = new[] {"One", "Two", "Three","Four","Five","Six","Seven","Eight","Nine","Ten","Eleven","Twelve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen",
                    "Nineteen" };
                var tensMap = new[] { "Ten", "Twenty", "Thirty", "Fourty", "Fifty", "Sixty", "Seventy", "Eight", "Ninety" };
                if (number < 20)
                {
                    word += " " + unitmap[number - 1];
                }
                else
                {
                    word += tensMap[(number / 10) - 1];
                    if ((number % 10) > 0)
                        word += " " + unitmap[(number % 10) - 1];

                }
            }
            return word;
        }
    }
}
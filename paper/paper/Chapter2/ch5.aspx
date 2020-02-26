<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ch5.aspx.cs" Inherits="paper.Chapter2.ch5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

  * {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
            box-shadow: none !important;
  }
  * {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
  strong {
  font-weight: bold;
}
    p {
  margin: 0 0 10px;
}
    p {
    orphans: 3;
    widows: 3;
  }
  h3 {
  font-size: 24px;
}
  h3 {
    orphans: 3;
    widows: 3;
  }
  h3 {
    page-break-after: avoid;
  }
  h3 {
  font-family: inherit;
  font-weight: 500;
  line-height: 1.1;
  color: inherit;
}
    h3 {
  margin-top: 20px;
  margin-bottom: 10px;
}
  </style>
</head>
<body style="height: 1177px; width: 656px">

    <form id="form1" runat="server">
        <div style="height: 1188px; width: 644px; margin-right: 94px;">
    <h1><%: Title %>範例實作 - 貓狗辨識</h1>
            <p>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/SZym5OoGRfg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </p>
            <div>
            <h3>
                1.<span>如果發現特徵提取效果不好可以採取那些途徑？</span></h3>
            <p>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Group1" Text="增加卷積層" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Group1"  Text="增加池化層" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Group1" Text="減少池化層" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Group1" Text="增加訓練次數" />
            </p>
                </div>
            <div>
            <h3>
                2.<span>如果發現過度擬合可以採取那些途徑？</span></h3>
            <p>
                <asp:RadioButton ID="RadioButton5" runat="server" GroupName="Group2" Text="增加池化層" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton6" runat="server" GroupName="Group2"  Text="減少卷積層" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton7" runat="server" GroupName="Group2" Text="減少Dropout層的機率" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton8" runat="server" GroupName="Group2" Text="增加Dropout層的機率" />
            </p>
            <h3>
                3.<span>如果發現</span><span lang="EN-US">loss</span><span>值最後還在上下起伏，應該採取甚麼措施？</span></h3>
            <p>
                <asp:RadioButton ID="RadioButton9" runat="server" GroupName="Group3" Text="增加訓練次數" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton10" runat="server" GroupName="Group3"  Text="增加NN的隱藏層" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton11" runat="server" GroupName="Group3" Text="減少Dropout層機率" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton12" runat="server" GroupName="Group3" Text="增加池化層" />
            </p>
            <h3>
                4.<span>類似貓狗辨識這種分類函數，還適合運用在哪些地方？</span></h3>
            <p>
                <asp:RadioButton ID="RadioButton13" runat="server" GroupName="Group4" Text="預測房價" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton14" runat="server" GroupName="Group4"  Text="分析顧客行為" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton15" runat="server" GroupName="Group4" Text="語音辨識" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton16" runat="server" GroupName="Group4" Text="生產線上的不良品與不良品辨識" />
            </p>
                <p>
                    &nbsp;</p>
                </div>
            
    <br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 528px; top: 1118px; position: absolute" Text="Button" />
        </div>
    </form>

</body>
</html>

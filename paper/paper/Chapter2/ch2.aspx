<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ch2.aspx.cs" Inherits="paper.Chapter2.ch2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

  * {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
  * {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
            box-shadow: none !important;
  }
  strong {
  font-weight: bold;
}
    p {
    orphans: 3;
    widows: 3;
  }
        p {
  margin: 0 0 10px;
}
    h3 {
  margin-top: 20px;
  margin-bottom: 10px;
}
  h3 {
  font-family: inherit;
  font-weight: 500;
  line-height: 1.1;
  color: inherit;
}
  h3 {
    page-break-after: avoid;
  }
  h3 {
    orphans: 3;
    widows: 3;
  }
  h3 {
  font-size: 24px;
}
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 1157px; width: 582px; margin-right: 94px;">
    <h1><%: Title %>甚麼是機器學習？！</h1>
            <p>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/1qKkKAE9OV0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </p>
            <div>
            <h3>
                1.關於監督式學習，何者有誤？</h3>
            <p>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Group1" Text="是用有標記的資料" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Group1"  Text="常用來解分類問題" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Group1" Text="其中包含解連續型的資料，即為迴歸分析" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Group1" Text="可以用來做關聯式推薦系統" />
            </p>
                </div>
            <div>
            <h3>
                2.關於非監督式學習，何者正確？</h3>
            <p>
                <asp:RadioButton ID="RadioButton5" runat="server" GroupName="Group2" Text="是用有標記的資料" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton6" runat="server" GroupName="Group2"  Text="可以明確地把所有種類分群，並告知每一群的種類" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton7" runat="server" GroupName="Group2" Text="可以做天氣的預測" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton8" runat="server" GroupName="Group2" Text="可以以客源的特徵做分群" />
            </p>
            <h3>
                3.關於機器學習的步驟，何者正確？</h3>
            <p>
                <asp:RadioButton ID="RadioButton9" runat="server" GroupName="Group3" Text="步驟為：收集歷史資料，問一個問題，把問題變函數，打造函數學習機，開始學習(訓練)" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton10" runat="server" GroupName="Group3"  Text="收集的歷史資料不用太多，就可以很準確" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton11" runat="server" GroupName="Group3" Text="機器可以自動幫我們打造出函數學習機" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton12" runat="server" GroupName="Group3" Text="函數學習機決定要用哪種方法後，還需要調整大量的參數" />
            </p>
            <h3>
                4.以下何者敘述正確？</h3>
            <p>
                <asp:RadioButton ID="RadioButton13" runat="server" GroupName="Group4" Text="我們一定能找到一條函數符合所有歷史資料" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton14" runat="server" GroupName="Group4"  Text="所有點到函數的誤差和，要取最大為佳" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton15" runat="server" GroupName="Group4" Text="損失函數最小的函數即為最佳函數" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton16" runat="server" GroupName="Group4" Text="以上皆是" />
            </p>
                <p>
                    &nbsp;</p>
                </div>
            <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 401px; top: 1120px; position: absolute" Text="Button" OnClick="Button1_Click" />
    <br />
        </div>
    </form>
</body>
</html>

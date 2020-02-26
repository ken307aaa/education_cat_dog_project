<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ch3.aspx.cs" Inherits="paper.chapter.ch3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


h2 {
  font-size: 30px;
}
  h2 {
  margin-top: 20px;
  margin-bottom: 10px;
}

  h2 {
  font-family: inherit;
  font-weight: 500;
  line-height: 1.1;
  color: inherit;
}
  h2 {
    page-break-after: avoid;
  }
  
  h2 {
    orphans: 3;
    widows: 3;
  }
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
        .auto-style1 {
            text-align: right;
        }
        #img2 {
            height: 140px;
            width: 233px;
        }
        .auto-style2 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div style="height: 769px; width: 501px">
    <h2><strong>機器學習的模型</strong></h2>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 剛才提到過的，在第二步中的函數，就是機器學習的模型，我們需</p>
            <p>要找到ㄧ些方法來解決這些問題，而這些方法實作起來複雜，我們只需</p>
            <p>要知道架構，之後網路上有許多工具可以直接使用。</p>
    <h3><strong>Neural Network 神經網路</strong></h3>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;神經網路是AI的重要的技術，分為三個階段：輸入層、隱藏層、輸</p>
            <p>出層，如下圖，輸入層即是前因後果的&quot;前因&quot;，中間的隱藏層則是在處</p>
            <p>理這些接收進來的資訊，如特徵提取，把特徵抓出來看看是不是我們要</p>
            <p>的，最後在輸出層輸出辨識出的結果。</p>
            <div class="auto-style1">
                <asp:Image ID="Image1" runat="server" Height="239px" ImageUrl="~/Image/neural_network.gif" Width="571px" />
                <br />
                註：中間隱藏層可以有很多層</div>
    <h3><strong>Convolutional Neural Network 卷積神經網路</strong></h3>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CNN為神經網路的一種，主要用來處理影像問題，卷積就是在對圖</p>
            <p>片做擷取特徵的動作，找出最好的特徵，最後再進行分類，就像是修圖</p>
            <p>軟體中的各種功能一樣，就是用卷積做出來的效果！</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image2" runat="server" Height="257px" ImageUrl="~/Image/conv.gif" Width="430px" />
            </p>
            <p>由上圖可以看出，Image的特徵&quot;1&quot;分布在哪裡，這就是卷積層！</p>
            <p>黃色部分右下角乘上的數字是卷積核，不同的卷積核會有不同效果。</p>
            <p>如：</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <img id="img1" alt="" height="130" src="../Image/pika1.jpg" style="height: 131px; width: 231px" width="230" />&nbsp;&nbsp;
                </p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;
                <img id="img2" alt="" src="../Image/pika4.jpg" />&nbsp;
                <asp:Image ID="Image3" runat="server" Height="145px" ImageUrl="~/Image/pika2.jpg" Width="236px" />
&nbsp; </p>
            <p>再來由左上2*2內取出最大值、右上2*2內也是取出最大值，左下、右下</p>
            <p>也是如此，我們可以從此得知特徵的<span class="auto-style2">強度</span>，這個就叫做池化層。</p>
            <p>最後在接上一個全連接層，即可輸出結果！</p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" PostBackUrl="~/predict.aspx" Text="Button" />
            </p>
        </div>
        </div>
    </form>
</body>
</html>

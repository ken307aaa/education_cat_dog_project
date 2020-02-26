<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ch2.aspx.cs" Inherits="paper.ch2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

  h2 {
    orphans: 3;
    widows: 3;
  }
  h2 {
    page-break-after: avoid;
  }
  h2 {
  font-family: inherit;
  font-weight: 500;
  line-height: 1.1;
  color: inherit;
}
  h2 {
  margin-top: 20px;
  margin-bottom: 10px;
}

h2 {
  font-size: 30px;
}
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
p {
  margin: 0 0 10px;
}
    p {
    orphans: 3;
    widows: 3;
  }
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <div style="height: 769px; width: 501px">
    <h2><strong>機器學習的種類</strong></h2>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在機器學習中有監督式學習、非監督式學習兩種。</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 監督式學習指的是我們可以大致預測答案的學習，其中有分類、迴</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 歸兩種。</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.分類為預測結果為一個類別，如：顏色、動物、是與否。</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.迴歸則是預測結果是一連續線性，如：溫度、人數、價格。</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 非監督式學習則是我們無法預測會得到甚麼結果，如：分群。</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 一群人由學歷、工作、年齡、收入等，判斷是否會購買手機，答案</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 顯而易見，不是&quot;會&quot;就是&quot;不會&quot;，此結果可以預期，為監督式。</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 同樣一群人，如果是分群，有可能是以學歷分，或是以年齡，也可</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 能是混合多種原因，我們無法推測最終答案會是那些人在同一群，</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 此為非監督式學習。</p>
    <h3><strong>機器學習的步驟</strong></h3>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在機器裡面，所有動作都是由一個個函數所組成，函數即是每個布</p>
    <p>驟，我們得讓機器找出一個函數來解決問題。</p>
    <p>如：我們跟函數說日期，依照機器的學習結果預測，他告訴我們溫度。</p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 所以我們按照步驟</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.問一個問題</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.把問題變成函數型式</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.收集歷史資料</p>
    <h3><strong>甚麼是學習？！</strong></h3>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在上述的步驟3收集歷史資料，讓2.的函數去調整到較好的程度，就</p>
            <p>能依照這個已經建立好的函數去進行預測。</p>
            <p>如下圖隨機生成的數據，可以看到直線微微調整直到所有點到直線的距</p>
            <p>離和最小。<asp:Button ID="Button1" runat="server" PostBackUrl="~/chapter/ch3.aspx" style="z-index: 1; left: 614px; position: absolute" Text="Button" />
            </p>
            <div>
                <asp:Image ID="Image1" runat="server" Height="362px" ImageUrl="~/Image/regression.gif" Width="495px" />
            </div>
        </div>
        </div>
    </form>
</body>
</html>

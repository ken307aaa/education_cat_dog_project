<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ch3.aspx.cs" Inherits="paper.Chapter2.ch3" %>

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
  </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 1274px; width: 639px; margin-right: 94px;">
    <h1><%: Title %>函數學習機 - 人工神經網路</h1>
            <p>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/ag8-haGTVbs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </p>
            <div>
            <h3>
                1.<span>關於人工神經網路，何者有誤？</span></h3>
            <p>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Group1" Text="有三個不同的層" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Group1"  Text="輸入層跟輸出層只會有一層，但神經元數不一定" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Group1" Text="隱藏層只能有兩層" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Group1" Text="資料要輸入到輸入層的每個神經元之前大部分要先經過前處理" />
            </p>
                </div>
            <div>
            <h3>
                2.<span>若在</span><span lang="EN-US">XY</span><span>座標上以六條線來分隔兩個類別，下列何者最佳？</span></h3>
                <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/題目2.png" style="text-align: center" />
                </p>
            <p>
                <asp:RadioButton ID="RadioButton5" runat="server" GroupName="Group2" Text="需要兩層隱藏層，第一層六個神經元，第二層兩個神經元" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton6" runat="server" GroupName="Group2"  Text="需要六層隱藏層，每一層各一個神經元" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton7" runat="server" GroupName="Group2" Text="需要兩層隱藏層，第一層六個神經元，第二層三個神經元" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton8" runat="server" GroupName="Group2" Text="需要一層隱藏層，三個神經元" />
            </p>
            <h3>
                3.呈上題，何者正確？</h3>
            <p>
                <asp:RadioButton ID="RadioButton9" runat="server" GroupName="Group3" Text="輸入層需要兩層，每一層一個神經元" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton10" runat="server" GroupName="Group3"  Text="輸入層需要一層，兩個神經元" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton11" runat="server" GroupName="Group3" Text="輸出層需要兩層，一個輸出形狀，一個輸出顏色" OnCheckedChanged="RadioButton11_CheckedChanged" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton12" runat="server" GroupName="Group3" Text="這是一個典型的迴歸問題" />
            </p>
                <p>
                    &nbsp;</p>
                </div>
            
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" style="z-index: 1; left: 477px; top: 1244px; position: absolute" Text="Button" />
            
    <br />
        </div>
    </form>
</body>
</html>

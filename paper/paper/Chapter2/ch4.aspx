<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ch4.aspx.cs" Inherits="paper.Chapter2.ch4" %>

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
        <div style="height: 1358px; width: 622px; margin-right: 94px;">
    <h1><%: Title %><strong>卷積神經網路 - CNN</strong></h1>
            <p>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/1YfUFCB2cRQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </p>
            <div>
            <h3>
                1.<span>關於卷積神經網路，何者不正確？</span></h3>
            <p>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Group1" Text="對於處理影像的能力優良" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Group1"  Text="包含卷積層、池化層" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Group1" Text="卷積層是在對圖片進行特徵提取" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Group1" Text="卷積層後一定要接池化層" />
            </p>
                </div>
            <div>
            <h3>
                2.<span>關於下圖做卷積運算，何者正確？</span></h3>
                <p>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/conv2.png" />
                </p>
            <p>
                <asp:RadioButton ID="RadioButton5" runat="server" GroupName="Group2" Text="紅色中1的位置是2" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton6" runat="server" GroupName="Group2"  Text="紅色中2的位置是7" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton7" runat="server" GroupName="Group2" Text="紅色中1的計算式為：1*0+1*1+1*0+0*1+1*1+1*1+0*0+0*1+1*0=3" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton8" runat="server" GroupName="Group2" Text="紅色中2的計算式為：1+0+1+1+0+1+1+1+1+1+1+0+0+1+1+1+0=12" />
            </p>
            <h3>
                3.<span>有關卷積層敘述，何者正確？</span></h3>
            <p>
                <asp:RadioButton ID="RadioButton9" runat="server" GroupName="Group3" Text="卷積核又稱Filter濾波器，可以有很多個" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton10" runat="server" GroupName="Group3"  Text="不同種卷積核不可以一起使用" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton11" runat="server" GroupName="Group3" Text="卷積運算只能一層就要接池化層" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton12" runat="server" GroupName="Group3" Text="卷積運算後圖片會縮小，且無法變回原本大小" />
            </p>
            <h3>
                4.<span>有關池化層敘述，何者錯誤？</span></h3>
            <p>
                <asp:RadioButton ID="RadioButton13" runat="server" GroupName="Group4" Text="有max-pooling、mean-pooling兩種" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton14" runat="server" GroupName="Group4"  Text="一個池化層大小通常為2 x 2" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton15" runat="server" GroupName="Group4" Text="[ [ 2 , 3 ] , [ 4 , 5] ] 以2 x 2最大池化結果為 5" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton16" runat="server" GroupName="Group4" Text="池化後的結果可以直接丟入標準NN中進行最後運算" />
            </p>
                <p>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: right; z-index: 1; left: 494px; top: 1335px; position: absolute" Text="Button" />
                </p>
                </div>
            
    <br />
        </div>
    </form>
</body>
</html>

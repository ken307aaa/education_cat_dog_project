<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="predict.aspx.cs" Inherits="paper.predict" %>

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
  </style>
</head>
<body>

    <form id="form1" runat="server">
        <div>
        <div style="height: 769px; width: 501px">
    <h2><strong>貓狗辨識demo</strong></h2>
            <p>&nbsp;&nbsp;&nbsp;點選predict等程式loading model後即可選擇照片進行預測</p>
            <p>預測結果將顯示於下方</p>
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="predict" />
            </p>
        </div>
        </div>
    </form>
</body>
</html>

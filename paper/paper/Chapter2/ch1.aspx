<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ch1.aspx.cs" Inherits="paper.Chapter2.ch1" %>

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
            margin-right: 0px;
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
        #form1 {
            height: 845px;
            width: 607px;
        }
  </style>
</head>
<body style="height: 815px; width: 594px">
    <form id="form1" runat="server">
        <div style="height: 831px; width: 582px; margin-right: 94px;">
    <h1><%: Title %><strong>關於人工智慧</strong></h1>
            <p>
                <iframe width="560" height="315" src="https://www.youtube.com/embed/AmJzVFcymW0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </p>
            <h3>
                1.甚麼樣的情況下不適合使用人工智慧來解決問題？</h3>
            <p>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Group1" Text="生產線上的鏡頭，用來判斷每一個產品是不是良品。" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Group1"  Text="外景節目攝影組，希望光線不夠時，補光燈加大。" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Group1" Text="重複做著相同動作、生產相同產品的生產線。" />
            </p>
            <p>
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="Group1" Text="分析一個人的性別、生活習慣、家庭病史、工作類型等等，預測死亡年紀。" />
            </p>
            <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 472px; top: 608px; position: absolute" Text="Button" OnClick="Button1_Click" />
    <br />
        </div>
    </form>
</body>
</html>

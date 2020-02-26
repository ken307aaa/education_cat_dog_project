<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ch1.aspx.cs" Inherits="paper.ch1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

h2,
.h2 {
  font-size: 30px;
}
h1,
.h1,
h2,
.h2,
h3,
.h3 {
  margin-top: 20px;
  margin-bottom: 10px;
}
h1,
h2,
h3,
h4,
h5,
h6,
.h1,
.h2,
.h3,
.h4,
.h5,
.h6 {
  font-family: inherit;
  font-weight: 500;
  line-height: 1.1;
  color: inherit;
}
  h2,
  h3 {
    page-break-after: avoid;
  }
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
  * {
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
  *,
  *:before,
  *:after {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
            box-shadow: none !important;
  }
  h3,
.h3 {
  font-size: 24px;
}
b,
strong {
  font-weight: bold;
}
p {
  margin: 0 0 10px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 620px; width: 494px">
    <h2><%: Title %><strong>關於人工智慧</strong></h2>
    <h3><strong>何謂AI、機器學習</strong></h3>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;AI即是人類賦予機器智慧，讓機器擁有處理複雜問題的能力。</p>
    <p>而AI涵蓋了許多技術，包含機器學習、深度學習、專家系統...等等，</p>
    <p>而機器學習則是人類讓機器擁有學習的能力，透過學習以往的經驗，</p>
    <p>從而更精準的達成人類所說的經驗法則。
        </p>
    <h3><strong>應用情境</strong></h3>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我們先簡單的舉一個例子，一位幼兒在沒看過貓與狗之前，爸媽</p>
    <p>要如何教導他分辨貓與狗呢？答案顯而易見，假設我們是父母，我們</p>
    <p>拿很多例子(照片)給幼兒看，並告訴他哪些是狗、哪些是貓，各種不同<asp:Image ID="Image1" runat="server" ImageUrl="~/predictImage/cat_or_dog_4.jpg" style="z-index: 1; left: 701px; top: 285px; position: absolute; height: 178px; width: 161px" />
    </p>
    <p>的例子看多了，自然而然就能分辨出哪些是貓哪些是狗。</p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 站在幼兒的立場，我們看了許多的照片，並且有人跟我們說那些</p>
    <p>是狗、哪些是貓，當我們下次看見的照片是之前沒看過的，我們也能</p>
    <p>猜出這是狗還是貓，而原因就是因為：在之前的學習過程中，我們學</p>
    <p>到了貓跟狗的<span style="color: #FF0000">特徵</span>，當我們看到甚麼<span style="color: #FF0000">模樣</span>，我們就可以推斷她是貓還</p>
    <p>是狗。</p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 機器學習也是一樣意思，程式設計師是爸媽，機器則是小孩，我<asp:Image ID="Image2" runat="server" Height="150px" ImageUrl="~/predictImage/cat_or_dog_12.jpg" style="z-index: 1; left: 524px; top: 284px; position: absolute; height: 181px; width: 148px" Width="150px" />
            </p>
    <p>們教導機器如何去學習特徵，然後來幫我們解決判斷貓狗的問題。當</p>
    <p>然這只是一個很簡單的應用，在社會上許多問題都可以用人工智慧來</p>
    <p>解決，而我們只要設定好問題，就可以讓機器去學習，然後回答我們</p>
            <p>、或是給我們建議。</p>
    <br />
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/chapter/ch2.aspx" style="z-index: 1; left: 660px; top: 503px; position: absolute" Text="Button" />
        </div>
    </form>
</body>
</html>

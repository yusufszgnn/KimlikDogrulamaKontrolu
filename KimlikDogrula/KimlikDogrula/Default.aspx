<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="KimlikDogrula.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery.min.js"></script>
</head>
<body>
    <div class="container col-md-6">
        <br />
        <h3>T.C. Nüfus Veritabanı - T.C. Kimlik Doğrulama</h3>
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="exampleInputEmail1">T.C. Kimlik No:</label>
                <asp:TextBox ID="txtTc" CssClass="form-control" runat="server" placeholder="T.C Kimlik No" required ></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Ad:</label>
                <asp:TextBox ID="txtAd" CssClass="form-control" runat="server" placeholder="Adınız..." required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Soyad:</label>
                <asp:TextBox ID="txtSoyad" CssClass="form-control" runat="server" placeholder="Soyadınız..." required></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Doğum Yılı:</label>
                <asp:TextBox ID="txtDogumyili" CssClass="form-control" runat="server" placeholder="Doğum Yılınız..." required></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Kontrol Et" type="submit" CssClass="btn btn-success" OnClick="Button1_Click" />
        </form>
        <br />
        <div id="basarili" class="alert alert-success alert-dismissible fade show" role="alert" runat="server">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <strong>Kontrol Edildi!</strong> T.C. Kimlik Numaranız Doğru...
        </div>
        <div id="basarisiz" class="alert alert-danger alert-dismissible fade show" role="alert" runat="server">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <strong>Kontrol Edildi!</strong> T.C. Kimlik Numaranız Yanlış...
        </div>
    </div>
</body>
</html>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Ecolage</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
    <link rel="stylesheet" href="assets/css/Header-Dark.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <header class="header-dark" style="background: #000000;height: 100px;">
        <nav class="navbar navbar-default navigation-clean-search" style="color: rgb(255,0,0);height: 90px;">
            <div class="container">
                <div class="navbar-header" style="color: rgb(255,255,255);width: 200px;margin-left: 50px;">
                    <a class="navbar-brand" href="#">Payement Ecolage</a>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1" style="color: rgb(21,21,21);">
                    <p class="navbar-text navbar-right"> <a class="btn btn-default action-button" role="button" href="#">Retour</a></p>
                </div>
            </div>
        </nav>
    </header>
    <section class="login-clean" style="width: 100%;height: 90%;color: rgb(35,34,34);background: rgb(84,85,85);">
        <form method="post" style="width: 80%;margin-right: 10%;margin-left: 10%;padding: 0px;height: 100%;">
            <h2 class="sr-only">Login Form</h2>
            <div class="form-group" style="margin-top: 0px;">
                <p style="width: 30%;margin-top: 0px;margin-left: 10px;padding: 15px;background: rgba(255,255,255,0);color: rgb(0,0,0);transform: perspective(0px);">Niveau :</p>
                <input class="form-control" type="-text" name="classe" placeholder="Classe" style="margin-left: 30%;width: 70%;margin-top: -56px;">
            </div>
            <div class="form-group" style="margin-top: 0px;">
                <p style="width: 30%;margin-top: 0px;margin-left: 10px;padding: 15px;background: rgba(255,255,255,0);color: rgb(0,0,0);transform: perspective(0px);">Montant d'ecolage :</p>
                <input class="form-control" type="number" name="ecolage" placeholder="Valeur" style="margin-left: 30%;width: 70%;margin-top: -56px;">
            </div>
            <div class="form-group" style="margin-top: 0px;">
                <p style="width: 30%;margin-top: 0px;margin-left: 10px;padding: 15px;background: rgba(255,255,255,0);color: rgb(0,0,0);transform: perspective(0px);">Montant à payer :</p>
                <input class="form-control" type="number" name="payer" placeholder="Payé" style="margin-left: 30%;width: 70%;margin-top: -56px;">
            </div>
            <div class="form-group" style="margin-top: 0px;">
                <p style="width: 30%;margin-top: 0px;margin-left: 10px;padding: 15px;background: rgba(255,255,255,0);color: rgb(0,0,0);transform: perspective(0px);">Le Reste :</p>
                <input class="form-control" type="number" name="reste" placeholder="Reste" style="margin-left: 30%;width: 70%;margin-top: -56px;">
            </div>
            <div class="form-group"><button class="btn btn-primary btn-block" type="submit" style="width: 25%;margin-left: 50%;margin-bottom: 40px;">Payer</button></div>
        </form>
    </section>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
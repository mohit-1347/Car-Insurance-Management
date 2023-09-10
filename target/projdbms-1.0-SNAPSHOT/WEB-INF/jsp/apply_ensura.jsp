<%-- 
    Document   : apply_ensura
    Created on : 25-May-2023, 6:09:01 pm
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- ===============================================-->
    <!--    Document Title-->
    <!-- ===============================================-->
    <title>Ensura</title>

    <!-- ===============================================-->
    <!--    Favicons-->
    <!-- ===============================================-->
    <style type="text/css">svg:not(:root).svg-inline--fa{overflow:visible}.svg-inline--fa{display:inline-block;font-size:inherit;height:1em;overflow:visible;vertical-align:-.125em}.svg-inline--fa.fa-lg{vertical-align:-.225em}.svg-inline--fa.fa-w-1{width:.0625em}.svg-inline--fa.fa-w-2{width:.125em}.svg-inline--fa.fa-w-3{width:.1875em}.svg-inline--fa.fa-w-4{width:.25em}.svg-inline--fa.fa-w-5{width:.3125em}.svg-inline--fa.fa-w-6{width:.375em}.svg-inline--fa.fa-w-7{width:.4375em}.svg-inline--fa.fa-w-8{width:.5em}.svg-inline--fa.fa-w-9{width:.5625em}.svg-inline--fa.fa-w-10{width:.625em}.svg-inline--fa.fa-w-11{width:.6875em}.svg-inline--fa.fa-w-12{width:.75em}.svg-inline--fa.fa-w-13{width:.8125em}.svg-inline--fa.fa-w-14{width:.875em}.svg-inline--fa.fa-w-15{width:.9375em}.svg-inline--fa.fa-w-16{width:1em}.svg-inline--fa.fa-w-17{width:1.0625em}.svg-inline--fa.fa-w-18{width:1.125em}.svg-inline--fa.fa-w-19{width:1.1875em}.svg-inline--fa.fa-w-20{width:1.25em}.svg-inline--fa.fa-pull-left{margin-right:.3em;width:auto}.svg-inline--fa.fa-pull-right{margin-left:.3em;width:auto}.svg-inline--fa.fa-border{height:1.5em}.svg-inline--fa.fa-li{width:2em}.svg-inline--fa.fa-fw{width:1.25em}.fa-layers svg.svg-inline--fa{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.fa-layers{display:inline-block;height:1em;position:relative;text-align:center;vertical-align:-.125em;width:1em}.fa-layers svg.svg-inline--fa{-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter,.fa-layers-text{display:inline-block;position:absolute;text-align:center}.fa-layers-text{left:50%;top:50%;-webkit-transform:translate(-50%,-50%);transform:translate(-50%,-50%);-webkit-transform-origin:center center;transform-origin:center center}.fa-layers-counter{background-color:#ff253a;border-radius:1em;-webkit-box-sizing:border-box;box-sizing:border-box;color:#fff;height:1.5em;line-height:1;max-width:5em;min-width:1.5em;overflow:hidden;padding:.25em;right:0;text-overflow:ellipsis;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-bottom-right{bottom:0;right:0;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom right;transform-origin:bottom right}.fa-layers-bottom-left{bottom:0;left:0;right:auto;top:auto;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:bottom left;transform-origin:bottom left}.fa-layers-top-right{right:0;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top right;transform-origin:top right}.fa-layers-top-left{left:0;right:auto;top:0;-webkit-transform:scale(.25);transform:scale(.25);-webkit-transform-origin:top left;transform-origin:top left}.fa-lg{font-size:1.3333333333em;line-height:.75em;vertical-align:-.0667em}.fa-xs{font-size:.75em}.fa-sm{font-size:.875em}.fa-1x{font-size:1em}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-6x{font-size:6em}.fa-7x{font-size:7em}.fa-8x{font-size:8em}.fa-9x{font-size:9em}.fa-10x{font-size:10em}.fa-fw{text-align:center;width:1.25em}.fa-ul{list-style-type:none;margin-left:2.5em;padding-left:0}.fa-ul>li{position:relative}.fa-li{left:-2em;position:absolute;text-align:center;width:2em;line-height:inherit}.fa-border{border:solid .08em #eee;border-radius:.1em;padding:.2em .25em .15em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left,.fab.fa-pull-left,.fal.fa-pull-left,.far.fa-pull-left,.fas.fa-pull-left{margin-right:.3em}.fa.fa-pull-right,.fab.fa-pull-right,.fal.fa-pull-right,.far.fa-pull-right,.fas.fa-pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0);transform:rotate(0)}100%{-webkit-transform:rotate(360deg);transform:rotate(360deg)}}.fa-rotate-90{-webkit-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-webkit-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-webkit-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-webkit-transform:scale(-1,1);transform:scale(-1,1)}.fa-flip-vertical{-webkit-transform:scale(1,-1);transform:scale(1,-1)}.fa-flip-both,.fa-flip-horizontal.fa-flip-vertical{-webkit-transform:scale(-1,-1);transform:scale(-1,-1)}:root .fa-flip-both,:root .fa-flip-horizontal,:root .fa-flip-vertical,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-rotate-90{-webkit-filter:none;filter:none}.fa-stack{display:inline-block;height:2em;position:relative;width:2.5em}.fa-stack-1x,.fa-stack-2x{bottom:0;left:0;margin:auto;position:absolute;right:0;top:0}.svg-inline--fa.fa-stack-1x{height:1em;width:1.25em}.svg-inline--fa.fa-stack-2x{height:2em;width:2.5em}.fa-inverse{color:#fff}.sr-only{border:0;clip:rect(0,0,0,0);height:1px;margin:-1px;overflow:hidden;padding:0;position:absolute;width:1px}.sr-only-focusable:active,.sr-only-focusable:focus{clip:auto;height:auto;margin:0;overflow:visible;position:static;width:auto}.svg-inline--fa .fa-primary{fill:var(--fa-primary-color,currentColor);opacity:1;opacity:var(--fa-primary-opacity,1)}.svg-inline--fa .fa-secondary{fill:var(--fa-secondary-color,currentColor);opacity:.4;opacity:var(--fa-secondary-opacity,.4)}.svg-inline--fa.fa-swap-opacity .fa-primary{opacity:.4;opacity:var(--fa-secondary-opacity,.4)}.svg-inline--fa.fa-swap-opacity .fa-secondary{opacity:1;opacity:var(--fa-primary-opacity,1)}.svg-inline--fa mask .fa-primary,.svg-inline--fa mask .fa-secondary{fill:#000}.fad.fa-inverse{color:#fff}</style>
    <link rel="apple-touch-icon" sizes="180x180" href="assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="https://i.ibb.co/RBKyq0H/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="https://i.ibb.co/dL5Y0Yv/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicons/favicon.ico">
    <link rel="manifest" href="assets/img/favicons/manifest.json">
    <meta name="msapplication-TileImage" content="https://ibb.co/qWrQMQ8">
    <meta name="theme-color" content="#ffffff">

    <!-- ===============================================-->
    <!--    Stylesheets-->
    <!-- ===============================================-->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300;400;500;600;700;800&amp;display=swap" rel="stylesheet">
    <link href="vendors/prism/prism.css" rel="stylesheet">
    <link href="assets/css/theme.min.css" rel="stylesheet">
    <link href="assets/css/user.min.css" rel="stylesheet">
  </head>
</head>
<body>
    <body>     
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3 shadow-transition" data-navbar-on-scroll="data-navbar-on-scroll" style="background-image: none; background-color: rgba(0, 0, 0, 0.267); transition: none 0s ease 0s;">
            <div class="container"><a class="navbar-brand" href="index.html"><span class="text-primary fs-3 ms-2 fw-bolder">en</span><span class="fw-thin text-300 fs-3">sura</span></a><button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
              <div class="collapse navbar-collapse pt-4 pt-lg-0" id="navbarSupportedContent">
                <div class="d-flex mt-2 align-items-center mt-lg-0">
                  <div class="dropdown">
                  <!-- </div><a href="#!"> <svg class="svg-inline--fa fa-user fa-w-14 text-primary" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="user" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" data-fa-i2svg=""><path fill="currentColor" d="M224 256c70.7 0 128-57.3 128-128S294.7 0 224 0 96 57.3 96 128s57.3 128 128 128zm89.6 32h-16.7c-22.2 10.2-46.9 16-72.9 16s-50.6-5.8-72.9-16h-16.7C60.2 288 0 348.2 0 422.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-41.6c0-74.2-60.2-134.4-134.4-134.4z"></path></svg><i class="fas fa-user text-primary"> </i> Font Awesome fontawesome.com</a> -->
                </div>
              </div>
            </div>
          </nav> 
        <section class="py-0">
        <div class="bg-holder" style="background-image:url(assets/img/illustrations/bg.png);background-position:left center;background-size:auto 816px;"></div>
        <!--/.bg-holder-->
        <div class="container">
          <div class="row align-items-center min-vh-100">
            <div class="col-md-7 col-xl-7 pt-9 text-md-start text-center">
              <h1 class="display-2 text-light fw-thin">We provide the best <br class="d-none d-xl-block">value car <strong class="fw-bolder">insurance </strong></h1>
              <p class="fs-2 text-400">Simple Steps You Can Take to Improve Your <br class="d-none d-xxl-block">Financial Well-Being for the rest of Your Life </p><a class="btn btn-primary btn-ensurance mt-5" href="#!"><svg class="svg-inline--fa fa-chevron-right fa-w-10 fa-xs btn-icon" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="chevron-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" data-fa-i2svg=""><path fill="currentColor" d="M285.476 272.971L91.132 467.314c-9.373 9.373-24.569 9.373-33.941 0l-22.667-22.667c-9.357-9.357-9.375-24.522-.04-33.901L188.505 256 34.484 101.255c-9.335-9.379-9.317-24.544.04-33.901l22.667-22.667c9.373-9.373 24.569-9.373 33.941 0L285.475 239.03c9.373 9.372 9.373 24.568.001 33.941z"></path></svg><!-- <span class="fas fa-chevron-right fa-xs btn-icon"></span> Font Awesome fontawesome.com --><span class="btn-text">Learn more</span></a>
            </div>
            <div class="col-md-5 col-xl-5 pe-xxl-0">
              <div class="card card-bg shadow hero-header-form">
                <div class="card-body p-4 p-xl-6">
                  <h2 class="text-100 text-center">Apply For Insurance</h2>
                  <form class="mb-3" action="application" method="post" commandName="user">
                    <div class="form-floating mb-3"><input class="form-control input-box form-ensurance-header-control" id="floatingName" type="text" placeholder="name" name="name"><label for="floatingName">Your name</label></div>
                    <div class="form-floating mb-3"><textarea class="form-control input-box form-ensurance-header-control" id="floatingTextarea" placeholder="Leave a comment here" name="res_address"></textarea><label for="floatingTextarea">Address</label></div>
                    <div class="form-floating mb-3"><input class="form-control input-box form-ensurance-header-control" id="floatingEmail" type="text" placeholder="name@example.com" name="car_model"><label for="floatingEmail">Car Model and Name</label></div>
                    <div class="form-floating mb-3"><input class="form-control input-box form-ensurance-header-control" id="floatingCatrgory" type="text" placeholder="Insurance Category" name="licence_number"><label for="floatingCatrgory">Licence Number</label></div>
                    <div class="form-floating mb-3"><input class="form-control input-box form-ensurance-header-control" id="floatingPhone" type="text" placeholder="name@example.com" name="purchase_year"><label for="floatingPhone">Year of purchase</label></div>
                    <div class="col-12 d-grid"> <button class="btn btn-primary rounded-pill" type="submit">Apply</button></div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    <script src="vendors/popper/popper.min.js"></script>
    <script src="vendors/bootstrap/bootstrap.min.js"></script>
    <script src="vendors/anchorjs/anchor.min.js"></script>
    <script src="vendors/is/is.min.js"></script>
    <script src="vendors/fontawesome/all.min.js"></script>
    <script src="vendors/lodash/lodash.min.js"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
    <script src="vendors/prism/prism.js"></script>
    <script src="assets/js/theme.js"></script>
<!--    <script>
            alert("Welcome to Ensra.\n\
    You have successfully applied for the Ensura Car Insurance.");
    </script>-->

</body>
</body>
</html>
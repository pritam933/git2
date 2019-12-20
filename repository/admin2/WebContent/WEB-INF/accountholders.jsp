<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Upload KYC</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
    <meta name="description" content="Build whatever layout you need with our Architect framework.">
    <meta name="msapplication-tap-highlight" content="no">
  
    <link href="assets/css/dashboard.css" rel="stylesheet">

<style>

/* The container must be positioned relative: */
.custom-select {
  position: relative;
  font-family: Arial;
}

.custom-select select {
  display: none; /*hide original SELECT element: */
}

.select-selected {
  background-color: DodgerBlue;
}

/* Style the arrow inside the select element: */
.select-selected:after {
  position: absolute;
  content: "";
  top: 14px;
  right: 10px;
  width: 0;
  height: 0;
  border: 6px solid transparent;
  border-color: #fff transparent transparent transparent;
}

/* Point the arrow upwards when the select box is open (active): */
.select-selected.select-arrow-active:after {
  border-color: transparent transparent #fff transparent;
  top: 7px;
}

/* style the items (options), including the selected item: */
.select-items div,.select-selected {
  color: #ffffff;
  padding: 8px 16px;
  border: 1px solid transparent;
  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;
  cursor: pointer;
}

/* Style items (options): */
.select-items {
  position: absolute;
  background-color: DodgerBlue;
  top: 100%;
  left: 0;
  right: 0;
  z-index: 99;
}

/* Hide the items when the select box is closed: */
.select-hide {
  display: none;
}

.select-items div:hover, .same-as-selected {
  background-color: rgba(0, 0, 0, 0.1);
}
</style>

<script>

var x, i, j, selElmnt, a, b, c;
/* Look for any elements with the class "custom-select": */
x = document.getElementsByClassName("custom-select");
for (i = 0; i < x.length; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  /* For each element, create a new DIV that will act as the selected item: */
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /* For each element, create a new DIV that will contain the option list: */
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < selElmnt.length; j++) {
    /* For each option in the original select element,
    create a new DIV that will act as an option item: */
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /* When an item is clicked, update the original select box,
        and the selected item: */
        var y, i, k, s, h;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        h = this.parentNode.previousSibling;
        for (i = 0; i < s.length; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            for (k = 0; k < y.length; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
    /* When the select box is clicked, close any other select boxes,
    and open/close the current select box: */
    e.stopPropagation();
    closeAllSelect(this);
    this.nextSibling.classList.toggle("select-hide");
    this.classList.toggle("select-arrow-active");
  });
}

function closeAllSelect(elmnt) {
  /* A function that will close all select boxes in the document,
  except the current select box: */
  var x, y, i, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  for (i = 0; i < y.length; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < x.length; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}

/* If the user clicks anywhere outside the select box,
then close all select boxes: */
document.addEventListener("click", closeAllSelect);
    </script>
</head>
<body>
    <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
        <div class="app-header header-shadow">
            <div class="app-header__logo">
                <div class="logo-src"></div>
                <div class="header__pane ml-auto">
                    <div>
                        <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="app-header__mobile-menu">
                <div>
                    <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>
            </div>
            <div class="app-header__menu">
                <span>
                    <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                        <span class="btn-icon-wrapper">
                            <i class="fa fa-ellipsis-v fa-w-6"></i>
                        </span>
                    </button>
                </span>
            </div>    <div class="app-header__content">
                <div class="app-header-left">
                    <div class="search-wrapper">
                        <div class="input-holder">
                            <input type="text" class="search-input" placeholder="Type to search">
                            <button class="search-icon"><span></span></button>
                        </div>
                        <button class="close"></button>
                    </div>
                    <ul class="header-menu nav">
                        <li class="nav-item">
                            <a href="javascript:void(0);" class="nav-link">
                                <i class="nav-link-icon fa fa-database"> </i>
                                Statistics
                            </a>
                        </li>
                        <li class="btn-group nav-item">
                            <a href="javascript:void(0);" class="nav-link">
                                <i class="nav-link-icon fa fa-edit"></i>
                                Projects
                            </a>
                        </li>
                        <li class="dropdown nav-item">
                            <a href="javascript:void(0);" class="nav-link">
                                <i class="nav-link-icon fa fa-cog"></i>
                                Settings
                            </a>
                        </li>
                    </ul>        </div>
                <div class="app-header-right">
                    <div class="header-btn-lg pr-0">
                        <div class="widget-content p-0">
                            <div class="widget-content-wrapper">
                                <div class="widget-content-left">
                                    <div class="btn-group">
                                        <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="p-0 btn">
                                            <img width="42" class="rounded-circle" src="assets/images/avatars/1.jpg" alt="">
                                            <i class="fa fa-angle-down ml-2 opacity-8"></i>
                                        </a>
                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                            <button type="button" tabindex="0" class="dropdown-item">User Account</button>
                                            <button type="button" tabindex="0" class="dropdown-item">Settings</button>
                                            <h6 tabindex="-1" class="dropdown-header">Header</h6>
                                            <button type="button" tabindex="0" class="dropdown-item">Actions</button>
                                            <div tabindex="-1" class="dropdown-divider"></div>
                                            <button type="button" tabindex="0" class="dropdown-item">Dividers</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget-content-left  ml-3 header-user-info">
                                    <div class="widget-heading">
                                        Abhisekh Singh
                                    </div>
                                    <div class="widget-subheading">
                                        CEO
                                    </div>
                                </div>
                                <div class="widget-content-right header-user-info ml-3">
                                    <button type="button" class="btn-shadow p-1 btn btn-primary btn-sm show-toastr-example">
                                        <i class="fa text-white fa-calendar pr-1 pl-1"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>        </div>
            </div>
        </div>        <div class="ui-theme-settings">
            <button type="button" id="TooltipDemo" class="btn-open-options btn btn-warning">
                <i class="fa fa-cog fa-w-16 fa-spin fa-2x"></i>
            </button>
            <div class="theme-settings__inner">
                <div class="scrollbar-container">
                    <div class="theme-settings__options-wrapper">
                        <h3 class="themeoptions-heading">Layout Options
                        </h3>
                        <div class="p-3">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <div class="widget-content p-0">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left mr-3">
                                                <div class="switch has-switch switch-container-class" data-class="fixed-header">
                                                    <div class="switch-animate switch-on">
                                                        <input type="checkbox" checked data-toggle="toggle" data-onstyle="success">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Fixed Header
                                                </div>
                                                <div class="widget-subheading">Makes the header top fixed, always visible!
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="widget-content p-0">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left mr-3">
                                                <div class="switch has-switch switch-container-class" data-class="fixed-sidebar">
                                                    <div class="switch-animate switch-on">
                                                        <input type="checkbox" checked data-toggle="toggle" data-onstyle="success">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Fixed Sidebar
                                                </div>
                                                <div class="widget-subheading">Makes the sidebar left fixed, always visible!
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="widget-content p-0">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left mr-3">
                                                <div class="switch has-switch switch-container-class" data-class="fixed-footer">
                                                    <div class="switch-animate switch-off">
                                                        <input type="checkbox" data-toggle="toggle" data-onstyle="success">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Fixed Footer
                                                </div>
                                                <div class="widget-subheading">Makes the app footer bottom fixed, always visible!
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <h3 class="themeoptions-heading">
                            <div>
                                Header Options
                            </div>
                            <button type="button" class="btn-pill btn-shadow btn-wide ml-auto btn btn-focus btn-sm switch-header-cs-class" data-class="">
                                Restore Default
                            </button>
                        </h3>
                        <div class="p-3">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <h5 class="pb-2">Choose Color Scheme
                                    </h5>
                                    <div class="theme-settings-swatches">
                                        <div class="swatch-holder bg-primary switch-header-cs-class" data-class="bg-primary header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-secondary switch-header-cs-class" data-class="bg-secondary header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-success switch-header-cs-class" data-class="bg-success header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-info switch-header-cs-class" data-class="bg-info header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-warning switch-header-cs-class" data-class="bg-warning header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-danger switch-header-cs-class" data-class="bg-danger header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-light switch-header-cs-class" data-class="bg-light header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-dark switch-header-cs-class" data-class="bg-dark header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-focus switch-header-cs-class" data-class="bg-focus header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-alternate switch-header-cs-class" data-class="bg-alternate header-text-light">
                                        </div>
                                        <div class="divider">
                                        </div>
                                        <div class="swatch-holder bg-vicious-stance switch-header-cs-class" data-class="bg-vicious-stance header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-midnight-bloom switch-header-cs-class" data-class="bg-midnight-bloom header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-night-sky switch-header-cs-class" data-class="bg-night-sky header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-slick-carbon switch-header-cs-class" data-class="bg-slick-carbon header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-asteroid switch-header-cs-class" data-class="bg-asteroid header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-royal switch-header-cs-class" data-class="bg-royal header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-warm-flame switch-header-cs-class" data-class="bg-warm-flame header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-night-fade switch-header-cs-class" data-class="bg-night-fade header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-sunny-morning switch-header-cs-class" data-class="bg-sunny-morning header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-tempting-azure switch-header-cs-class" data-class="bg-tempting-azure header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-amy-crisp switch-header-cs-class" data-class="bg-amy-crisp header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-heavy-rain switch-header-cs-class" data-class="bg-heavy-rain header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-mean-fruit switch-header-cs-class" data-class="bg-mean-fruit header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-malibu-beach switch-header-cs-class" data-class="bg-malibu-beach header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-deep-blue switch-header-cs-class" data-class="bg-deep-blue header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-ripe-malin switch-header-cs-class" data-class="bg-ripe-malin header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-arielle-smile switch-header-cs-class" data-class="bg-arielle-smile header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-plum-plate switch-header-cs-class" data-class="bg-plum-plate header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-happy-fisher switch-header-cs-class" data-class="bg-happy-fisher header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-happy-itmeo switch-header-cs-class" data-class="bg-happy-itmeo header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-mixed-hopes switch-header-cs-class" data-class="bg-mixed-hopes header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-strong-bliss switch-header-cs-class" data-class="bg-strong-bliss header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-grow-early switch-header-cs-class" data-class="bg-grow-early header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-love-kiss switch-header-cs-class" data-class="bg-love-kiss header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-premium-dark switch-header-cs-class" data-class="bg-premium-dark header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-happy-green switch-header-cs-class" data-class="bg-happy-green header-text-light">
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <h3 class="themeoptions-heading">
                            <div>Sidebar Options</div>
                            <button type="button" class="btn-pill btn-shadow btn-wide ml-auto btn btn-focus btn-sm switch-sidebar-cs-class" data-class="">
                                Restore Default
                            </button>
                        </h3>
                        <div class="p-3">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <h5 class="pb-2">Choose Color Scheme
                                    </h5>
                                    <div class="theme-settings-swatches">
                                        <div class="swatch-holder bg-primary switch-sidebar-cs-class" data-class="bg-primary sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-secondary switch-sidebar-cs-class" data-class="bg-secondary sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-success switch-sidebar-cs-class" data-class="bg-success sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-info switch-sidebar-cs-class" data-class="bg-info sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-warning switch-sidebar-cs-class" data-class="bg-warning sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-danger switch-sidebar-cs-class" data-class="bg-danger sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-light switch-sidebar-cs-class" data-class="bg-light sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-dark switch-sidebar-cs-class" data-class="bg-dark sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-focus switch-sidebar-cs-class" data-class="bg-focus sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-alternate switch-sidebar-cs-class" data-class="bg-alternate sidebar-text-light">
                                        </div>
                                        <div class="divider">
                                        </div>
                                        <div class="swatch-holder bg-vicious-stance switch-sidebar-cs-class" data-class="bg-vicious-stance sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-midnight-bloom switch-sidebar-cs-class" data-class="bg-midnight-bloom sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-night-sky switch-sidebar-cs-class" data-class="bg-night-sky sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-slick-carbon switch-sidebar-cs-class" data-class="bg-slick-carbon sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-asteroid switch-sidebar-cs-class" data-class="bg-asteroid sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-royal switch-sidebar-cs-class" data-class="bg-royal sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-warm-flame switch-sidebar-cs-class" data-class="bg-warm-flame sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-night-fade switch-sidebar-cs-class" data-class="bg-night-fade sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-sunny-morning switch-sidebar-cs-class" data-class="bg-sunny-morning sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-tempting-azure switch-sidebar-cs-class" data-class="bg-tempting-azure sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-amy-crisp switch-sidebar-cs-class" data-class="bg-amy-crisp sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-heavy-rain switch-sidebar-cs-class" data-class="bg-heavy-rain sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-mean-fruit switch-sidebar-cs-class" data-class="bg-mean-fruit sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-malibu-beach switch-sidebar-cs-class" data-class="bg-malibu-beach sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-deep-blue switch-sidebar-cs-class" data-class="bg-deep-blue sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-ripe-malin switch-sidebar-cs-class" data-class="bg-ripe-malin sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-arielle-smile switch-sidebar-cs-class" data-class="bg-arielle-smile sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-plum-plate switch-sidebar-cs-class" data-class="bg-plum-plate sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-happy-fisher switch-sidebar-cs-class" data-class="bg-happy-fisher sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-happy-itmeo switch-sidebar-cs-class" data-class="bg-happy-itmeo sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-mixed-hopes switch-sidebar-cs-class" data-class="bg-mixed-hopes sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-strong-bliss switch-sidebar-cs-class" data-class="bg-strong-bliss sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-grow-early switch-sidebar-cs-class" data-class="bg-grow-early sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-love-kiss switch-sidebar-cs-class" data-class="bg-love-kiss sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-premium-dark switch-sidebar-cs-class" data-class="bg-premium-dark sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-happy-green switch-sidebar-cs-class" data-class="bg-happy-green sidebar-text-light">
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <h3 class="themeoptions-heading">
                            <div>Main Content Options</div>
                            <button type="button" class="btn-pill btn-shadow btn-wide ml-auto active btn btn-focus btn-sm">Restore Default
                            </button>
                        </h3>
                        <div class="p-3">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <h5 class="pb-2">Page Section Tabs
                                    </h5>
                                    <div class="theme-settings-swatches">
                                        <div role="group" class="mt-2 btn-group">
                                            <button type="button" class="btn-wide btn-shadow btn-primary btn btn-secondary switch-theme-class" data-class="body-tabs-line">
                                                Line
                                            </button>
                                            <button type="button" class="btn-wide btn-shadow btn-primary active btn btn-secondary switch-theme-class" data-class="body-tabs-shadow">
                                                Shadow
                                            </button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>        <div class="app-main">
                <div class="app-sidebar sidebar-shadow">
                    <div class="app-header__logo">
                        <div class="logo-src"></div>
                        <div class="header__pane ml-auto">
                            <div>
                                <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                    <span class="hamburger-box">
                                        <span class="hamburger-inner"></span>
                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="app-header__mobile-menu">
                        <div>
                            <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                    <div class="app-header__menu">
                        <span>
                            <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                                <span class="btn-icon-wrapper">
                                    <i class="fa fa-ellipsis-v fa-w-6"></i>
                                </span>
                            </button>
                        </span>
                    </div>   
                    
                    
                    
                    
                    <div class="scrollbar-sidebar">
                            <div class="app-sidebar__inner">
                                <ul class="vertical-nav-menu">
                                    <li class="app-sidebar__heading">Dashboard</li>
                                    <li>
                                        <a href="Dashboard.jsp" class="mm-active">
                                            <i class="metismenu-icon fa fa-home"></i>
                                           Home
                                        </a>
                                    </li>
                                    <!---<li class="app-sidebar__heading">UI Components</li>   --->
                                    <li
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                    >
                                       
                                    <li class="app-sidebar__heading">User Account Management</li>
                                    <li>
                                        <a href="kycupload.jsp">
                                            <i class="metismenu-icon pe-7s-eyedropper">
                                            </i>Status and KYC
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="metismenu-icon pe-7s-display2">
                                            </i>Instant Fund
                                        </a>
                                    </li>
                                   
    
    
                                    <li class="app-sidebar__heading">Mass Load & Build Accounts</li>
                                    <li>
                                        <a href="#">
                                            <i class="metismenu-icon pe-7s-graph2">
                                            </i>Mass Fund Loading Accounts
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="metismenu-icon pe-7s-graph2">
                                            </i>Mass Building Card Accounts
                                        </a>
                                    </li>
                                    <li>
                                        <a href="charts-chartjs.html">
                                            <i class="metismenu-icon pe-7s-graph2">
                                            </i>Mass Building Virtual Accounts
                                        </a>
                                    </li>
                                    <li>
                                        <a href="charts-chartjs.html">
                                            <i class="metismenu-icon pe-7s-graph2">
                                            </i>Mass Fund Transferring
                                        </a>
                                    </li>
    
    
    
                                    <li class="app-sidebar__heading">Queries</li>
                                    <li>
                                        <a href="forms-layouts.html">
                                            <i class="metismenu-icon pe-7s-eyedropper">
                                            </i>Account Activities
                                        </a>
                                    </li>
                                    <li>
                                        <a href="forms-layouts.html">
                                            <i class="metismenu-icon pe-7s-eyedropper">
                                            </i> Account Activities of Agents
                                        </a>
                                    </li>
                                    <li>
                                        <a href="accountholders.jsp">
                                            <i class="metismenu-icon pe-7s-eyedropper">
                                            </i> Account Holders
                                        </a>
                                    </li>
                                    <li>
                                        <a href="forms-layouts.html">
                                            <i class="metismenu-icon pe-7s-eyedropper">
                                            </i> Commisson Of Agents
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>  
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <div class="app-main__outer">
                    <div class="app-main__inner">
                        <div class="app-page-title">
                            <div class="page-title-wrapper">
                                <div class="page-title-heading">
                                    <div class="page-title-icon">
                                        <i class="pe-7s-graph text-success">
                                        </i>
                                    </div>
                                    <div> All Account Holders
                                        <div class="page-title-subheading">All registered users are displayed here
                                        </div>
                                    </div>
                                </div>
                                <div class="page-title-actions">
                                    <button type="button" data-toggle="tooltip" title="Example Tooltip" data-placement="bottom" class="btn-shadow mr-3 btn btn-dark">
                                        <i class="fa fa-star"></i>
                                    </button>
                                    <div class="d-inline-block dropdown">
                                        <button type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="btn-shadow dropdown-toggle btn btn-info">
                                            <span class="btn-icon-wrapper pr-2 opacity-7">
                                                <i class="fa fa-business-time fa-w-20"></i>
                                            </span>
                                            Buttons
                                        </button>
                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                            <ul class="nav flex-column">
                                                <li class="nav-item">
                                                    <a href="javascript:void(0);" class="nav-link">
                                                        <i class="nav-link-icon lnr-inbox"></i>
                                                        <span>
                                                            Inbox
                                                        </span>
                                                        <div class="ml-auto badge badge-pill badge-secondary">86</div>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="javascript:void(0);" class="nav-link">
                                                        <i class="nav-link-icon lnr-book"></i>
                                                        <span>
                                                            Book
                                                        </span>
                                                        <div class="ml-auto badge badge-pill badge-danger">5</div>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="javascript:void(0);" class="nav-link">
                                                        <i class="nav-link-icon lnr-picture"></i>
                                                        <span>
                                                            Picture
                                                        </span>
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a disabled href="javascript:void(0);" class="nav-link disabled">
                                                        <i class="nav-link-icon lnr-file-empty"></i>
                                                        <span>
                                                            File Disabled
                                                        </span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>    </div>
                        </div>          
                        







                        <div class="row">

                            
                            <div class="col-md-12">
                                
                                <div class="main-card mb-3 card">
                                    <div class="card-header">Registered Users
                                            <div class="d-block text-center card-footer">
                                                    <button class="mr-2 btn-icon btn-icon-only btn btn-outline-danger"><i class="pe-7s-trash btn-icon-wrapper"> </i></button>
                                                    <button class="btn-wide btn btn-success">Copy</button>
                                                    <button class="btn-wide btn btn-success">Excel</button>
                                                    <button class="btn-wide btn btn-success">Pdf</button>
                                                    <button class="btn-wide btn btn-success">Print</button>
                                                </div>
                                        


                                            
                                        <div class="btn-actions-pane-right">


                                            
                                            <div role="group" class="btn-group-sm btn-group">



                                                
                                                <button class="active btn btn-focus">Last Week</button>
                                                <button class="btn btn-focus">All Month</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                                            <thead>
                                            <tr>
                                                <th class="text-center">#</th>
                                                <th>Name</th>
                                                <th class="text-center">User ID</th>
                                                <th class="text-center">KYC</th>
                                                <th class="text-center">Agent Name</th>
                                                
                                                <th class="text-center">Phone Number</th>
                                                <th class="text-center">Phone Verification</th>
                                                <th class="text-center">User Profile</th>
                                                
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center text-muted">#4</td>
                                                    <td>
                                                        <div class="widget-content p-0">
                                                            <div class="widget-content-wrapper">
                                                                <div class="widget-content-left mr-3">
                                                                    <div class="widget-content-left">
                                                                        <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                                </div>
                                                                <div class="widget-content-left flex2">
                                                                    <div class="widget-heading">User 4</div>
                                                                    <div class="widget-subheading opacity-7">StyloPay</div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">25123</td>
                                                    <td class="text-center">
                                                        <div class="badge badge-danger">On Hold</div>
                                                    </td>
                                                    <td class="text-center">RSI</td>
                                                    <td class="text-center"> 41466161496</td>
                                                    <td class="text-center">no</td>
                                                    <td class="text-center">
                                                        <div class="mb-2 mr-2 dropleft btn-group">
                                                            <button class="btn-wide btn btn-primary">Details</button>
                                                            <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                            <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                                <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                                <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                                <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                                <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                                <div tabindex="-1" class="dropdown-divider"></div>
                                                                <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                                </button>
                                                            </div>
                                                        </div>
                                                                 
                                                        </td>
                                                </tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#3</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt="">
                                                                </div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">user 3</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">59862</td>
                                                <td class="text-center">
                                                    <div class="badge badge-info">In Progress</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center">496124986</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                          <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <!---<button type="button" tabindex="0" class="dropdown-item">User Infromation</button> --->

                                                           <div> <button type="button" class="dropdown-item" data-toggle="modal" data-target=".bd-example-modal-lg">User Information</button>



                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="text-center text-muted">#4</td>
                                                <td>
                                                    <div class="widget-content p-0">
                                                        <div class="widget-content-wrapper">
                                                            <div class="widget-content-left mr-3">
                                                                <div class="widget-content-left">
                                                                    <img width="40" class="rounded-circle" src="assets/images/avatars/.jpg" alt=""></div>
                                                            </div>
                                                            <div class="widget-content-left flex2">
                                                                <div class="widget-heading">User 4</div>
                                                                <div class="widget-subheading opacity-7">StyloPay</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="text-center">25123</td>
                                                <td class="text-center">
                                                    <div class="badge badge-danger">On Hold</div>
                                                </td>
                                                <td class="text-center">RSI</td>
                                                <td class="text-center"> 41466161496</td>
                                                <td class="text-center">no</td>
                                                <td class="text-center">
                                                    <div class="mb-2 mr-2 dropleft btn-group">
                                                        <button class="btn-wide btn btn-primary">Details</button>
                                                        <button type="button" aria-haspopup="true" aria-expanded="false" data-toggle="dropdown" class="dropdown-toggle-split dropdown-toggle btn btn-primary"><span class="sr-only">Toggle Dropdown</span></button>
                                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu">
                                                            <button type="button" tabindex="0" class="dropdown-item">User Infromation</button>
                                                            <button type="button" tabindex="0" class="dropdown-item">Status</button>
                                                            <!---<h6 tabindex="-1" class="dropdown-header">Header</h6>--->
                                                            <button type="button" tabindex="0" class="dropdown-item">Balance</button>
                                                            <div tabindex="-1" class="dropdown-divider"></div>
                                                            <button type="button" tabindex="0" class="dropdown-item">Edit User
                                                            </button>
                                                        </div>
                                                    </div>
                                                             
                                                    </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>













                    
                    <div class="app-wrapper-footer">
                        <div class="app-footer">
                            <div class="app-footer__inner">
                                <div class="app-footer-left">
                                    <ul class="nav">
                                        <li class="nav-item">
                                            <a href="javascript:void(0);" class="nav-link">
                                                Footer Link 1
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="javascript:void(0);" class="nav-link">
                                                Footer Link 2
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="app-footer-right">
                                    <ul class="nav">
                                        <li class="nav-item">
                                            <a href="javascript:void(0);" class="nav-link">
                                                Footer Link 3
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="javascript:void(0);" class="nav-link">
                                                <div class="badge badge-success mr-1 ml-0">
                                                    <small>NEW</small>
                                                </div>
                                                Footer Link 4
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>    </div>
        </div>
    </div>
    <script type="text/javascript" src="assets/scripts/dashboard.js"></script></body>
</html>

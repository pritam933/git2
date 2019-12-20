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
                                    <div>Status and KYC
                                        <div class="page-title-subheading">Register to Gold or Platinum and upload the documents
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
                        </div>            <ul class="body-tabs body-tabs-layout tabs-animated body-tabs-animated nav">
                            <li class="nav-item">
                                <a role="tab" class="nav-link active" id="tab-0" data-toggle="tab" href="#tab-content-0">
                                    <span>KYC Upload</span>
                                </a>
                            </li>  
                            <li class="nav-item">
                                <a role="tab" class="nav-link" id="tab-1" data-toggle="tab" href="#tab-content-1">
                                    <span> KYC Questionnaire</span>
                                </a>
                            </li>   
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane tabs-animation fade show active" id="tab-content-0" role="tabpanel">
                                <div class="main-card mb-3 card">
                                    <div class="card-body"> <!---<h5 class="card-title">Rows</h5>--->
                                         <form class=""   method=POST   action="/admin2/kycupload" modelAttribute="uploadFiles" enctype="multipart/form-data" ">
                                            <div class="form-row">
                                                <div class="col-md-2">
                                                    <div class="position-relative form-group"><label for="username" class="">User Name</label><input name="User Name" id="username" onchange="getdetails(this.value)" placeholder="User Name" type="username" class="form-control"></div>
                                                </div> 


                                            </br>
                                               
                                            </div>
                                          





                                            
                                            <!---<div class="position-relative form-group"><label for="exampleAddress" class="">Card Number</label><input name="address" id="exampleAddress" placeholder="xxxx xxxx xx06 4505" type="text" class="form-control"></div>---->
                                           
                                            <div class="form-row">
                                                <div class='col-md-3'>
                                                   <div class="position-relative form-group"><label for="accountid" class="">Account ID</label><input name="accountid" id="accountid" placeholder="Account ID" type="text" class="form-control"    disabled></div>
                                                    </div>
                                                    </br></br></br></br>
                                                    <div class="col-md-2">
                                                    <div class="position-relative form-group"><label for="exampleAddress2" class="">First name</label><input name="address2" id="fname" placeholder="First name" type="text" class="form-control"  disabled>
                                                    </div>
                                                    </div>
                                                <div class="col-md-2">
                                                    <div class="position-relative form-group"><label for="exampleCity" class="">last Name</label><input name="city"  id="lname" placeholder="Last Name" type="text" class="form-control"  disabled></div>
                                                </div>

                                                  <div class="col-md-3">
                                                    <div class="position-relative form-group"><label for="userpemissiongroup" class="">User Permission Group</label><input name="userpemissiongroup"  id="userpemissiongroup" placeholder="User Permission Group" type="text" class="form-control"  disabled></div>
                                                </div>
                                                <!---<div class="col-md-2">
                                                    <div class="position-relative form-group"><label for="exampleState" class="">State</label><input name="state" id="exampleState" type="text" class="form-control"></div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="position-relative form-group"><label for="exampleZip" class="">Zip</label><input name="zip" id="exampleZip" type="text" class="form-control"></div>
                                                </div>--->
                                            </div>

                                            <!-- Surround the select box within a "custom-select" DIV element.
Remember to set the width: -->
                                            </br>
<label>
<div >
       Due Diligence Level :

            <select>   


          <option value="0">Select </option>
          <option value="1">Gold</option>
          <option value="2">Platinum</option>
        
        </select>
      </div> </lable>


  </br>
    </br>                   
                        <div class="position-relative form-group"><label for="exampleFile" class="">ID Proof  [Front Side]</label><input name="files" id="fileupload1" type="file" class="form-control-file">
                                                        <small class="form-text text-muted">File Type : .jpg,.jpeg,.png,.pdf.  </small>
                                                    </div>

</br>


<div class="position-relative form-group"><label for="exampleFile" class="">ID Proof [Back Side]</label><input name="files" id="fileupload2" type="file" class="form-control-file">
    <small class="form-text text-muted">File Type : .jpg,.jpeg,.png,.pdf.  </small>
</div>


</br>

                                                     <div class="position-relative form-group"><label for="exampleFile" class="">Proof Of Address</label><input name="files" id="fileupload3" type="file" class="form-control-file">
                                                        <small class="form-text text-muted">File Type : .jpg,.jpeg,.png,.pdf.</small>
                                                    </div>





                                            <div class="position-relative form-check"><input name="check" id="exampleCheck" type="checkbox" class="form-check-input"><label for="exampleCheck" class="form-check-label">Confirm</label></div>

 
                                            <input type="submit" class="mt-2 btn btn-primary"  value="Submit"> 
                                            
                                            
                                            
                                            
                                            
                       <!--                      
                        <h2 class="fs-title">Upload Documents</h2>
									<h3 class="fs-subtitle">We will never sell it</h3>
									<input type="file" name="files" placeholder="ID Front" id="idFront"/>
									<input type="file" name="files" placeholder="ID Back" id="idBack"/>
									<input type="file" name="files" placeholder="Proof Of Address" id="poa"/>
									<textarea name="address" placeholder="Address"></textarea>
									<h2 class="fs-title">Upload Documents</h2>
									<label style="font-size:0.7em" for="file-upload" class="custom-file-upload">
									<i class="fa fa-cloud-upload"></i> ID Proof Document (Front)
									</label>
									<select required name="state" id="State" class="">
									<option value="">Select ID Type</option>
									<option value="">Passport</option>
									<option value="">Driver's Licence</option>
									<option value="">National ID</option>
									</select>	
									</select>	
									<input id="fileupload1" type="file" name="files" placeholder="ID Front" onchange="return validate_fileupload(this.value, this.id)" accept="image/x-png,application/pdf,image/jpeg"/>
									<label style="font-size:0.7em" for="file-upload" class="custom-file-upload">
									<i class="fa fa-cloud-upload"></i> ID Proof Document (Back)
									</label>
									<input id="fileupload2" type="file" required name="files" placeholder="ID  Back" onchange="return validate_fileupload(this.value, this.id)" accept="image/x-png,application/pdf,image/jpeg"/>
									<label style="font-size:0.7em" for="file-upload" class="custom-file-upload">
									<i class="fa fa-cloud-upload">	</i> POA Document
									</label>
									<select name="state" id="State" class="">
									<option value="">Select Address Proof Type</option>
									<option value="">Utility Bill(*Less than 60days)</option>
									<option value="">Bank statements(*Less than 60days)</option>
									<option value="">Driver's Licence</option>
									<option value="">Lease agreement registered with the competent tax authority.</option>
									</select>
									<input id="fileupload3" type="file" name="files" placeholder="POA"  required onchange="return validate_fileupload(this.value, this.id)" accept="image/x-png,application/pdf,image/jpeg"/>
									<input type="button" name="previous" class="previous action-button" value="Previous" />
									<input type="submit" name="submit" class="next action-button" value="Submit" />                
                                              -->
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                      <!-- test form -->     
                                            
                                            
                                            <!-- <form id="msform" method="post" action="/kycUpload" modelAttribute="uploadFiles" enctype="multipart/form-data" ">

									<fieldset>
									<h2 class="fs-title">Upload Documents</h2>
									<h3 class="fs-subtitle">We will never sell it</h3>
									<input type="file" name="files" placeholder="ID Front" id="idFront"/>
									<input type="file" name="files" placeholder="ID Back" id="idBack"/>
									<input type="file" name="files" placeholder="Proof Of Address" id="poa"/>
									<textarea name="address" placeholder="Address"></textarea>
									<h2 class="fs-title">Upload Documents</h2>
									<label style="font-size:0.7em" for="file-upload" class="custom-file-upload">
									<i class="fa fa-cloud-upload"></i> ID Proof Document (Front)
									</label>
									<select required name="state" id="State" class="">
									<option value="">Select ID Type</option>
									<option value="">Passport</option>
									<option value="">Driver's Licence</option>
									<option value="">National ID</option>
									</select>	
									</select>	
									<input id="fileupload1" type="file" name="files" placeholder="ID Front" onchange="return validate_fileupload(this.value, this.id)" accept="image/x-png,application/pdf,image/jpeg"/>
									<label style="font-size:0.7em" for="file-upload" class="custom-file-upload">
									<i class="fa fa-cloud-upload"></i> ID Proof Document (Back)
									</label>
									<input id="fileupload2" type="file" required name="files" placeholder="ID  Back" onchange="return validate_fileupload(this.value, this.id)" accept="image/x-png,application/pdf,image/jpeg"/>
									<label style="font-size:0.7em" for="file-upload" class="custom-file-upload">
									<i class="fa fa-cloud-upload">	</i> POA Document
									</label>
									<select name="state" id="State" class="">
									<option value="">Select Address Proof Type</option>
									<option value="">Utility Bill(*Less than 60days)</option>
									<option value="">Bank statements(*Less than 60days)</option>
									<option value="">Driver's Licence</option>
									<option value="">Lease agreement registered with the competent tax authority.</option>
									</select>
									<input id="fileupload3" type="file" name="files" placeholder="POA"  required onchange="return validate_fileupload(this.value, this.id)" accept="image/x-png,application/pdf,image/jpeg"/>
									<input type="button" name="previous" class="previous action-button" value="Previous" />
									<input type="submit" name="submit" class="next action-button" value="Submit" />
									</fieldset>
									</form> -->
                                             
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                        </form>
                                    </div>
                                </div>
                               
                            </div>


                            <div class="tab-pane tabs-animation fade" id="tab-content-1" role="tabpanel">
                                    <div class="main-card mb-3 card">
                                        <div class="card-body"><h5 align='center' class="card-title">KNOW YOUR CUSTOMER QUESTIONNAIRE</h5>
                                               



                                            <form class="cards__settings-form" id="card_info"  method="post" action="<?php echo $base_url."">
        
                                                <input type="hidden" id="StateName" name="StateName" value="">
                                                <input type="hidden" id="CountryName" name="CountryName" value="">
                                                <input type="hidden" id="BirthCountryName" name="BirthCountryName" value="">
                                                          
                        
                        <table class="table table-bordered">
                          <tbody>
                            <tr>
                              <td>
                              <div class="form-group row">
                                <label for="staticEmail" class="col-sm-4 col-form-label">(Only for physical Card holders)<BR>
                        1st 4 followed by last 4 digits of Card No :  :</label>
                                <div class="col-sm-8">
                                  <input type="text" readonly class="form-control-plaintext" id="AccountNumber" name="AccountNumber" placeholder="Last Name"  value="<?php echo @substr( @$CardInformation['CardNum'],0,4)."**** ****".substr( @$CardInformation['CardNum'],-4); ?>">
                                </div>
                              </div>
                             </td>
                              <td>
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-5 col-form-label">DATE(dd/mm/yyyy) :</label>
                                <div class="col-sm-7">
                                  <input type="text"  class="form-control-plaintext" id="TodayDate" name="TodayDate" placeholder="Second Last Name"   value="<?php echo date('d/m/y');?>">
                                </div>
                                </div>
                              </td>
                              
                            
                            </tr>
                              
                          </tbody>
                        </table>
                        
                        <table class="table table-bordered">
                          <thead class="thead-light">
                            <tr>
                              <th class="text-center" colspan="3" scope="col">PERSONAL IDENTIFICATION DATA</th>
                              
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>
                              <div class="form-group row">
                                <label for="staticEmail" class="col-sm-4 col-form-label">Last name :</label>
                                <div class="col-sm-8">
                                  <input type="text" readonly class="form-control-plaintext" id="LastName" name="LastName" placeholder="Last Name"  value="<?php echo @$userdetailcheck['User_LastName'];?>">
                                </div>
                              </div>
                             </td>
                              <td>
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-5 col-form-label">Second Last Name :</label>
                                <div class="col-sm-7">
                                  <input type="text"  class="form-control-plaintext" id="SecondLastName" name="SecondLastName" placeholder="Second Last Name"   value="<?php echo @$userdetailcheck['SecondLastName'];?>">
                                </div>
                                </div>
                              </td>
                              <td>
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-4 col-form-label">Name(s) :</label>
                                <div class="col-sm-8">
                                  <input type="text" readonly class="form-control-plaintext" id="Name" name="Name" value="<?php echo @$userdetailcheck['FirstName'];?>">
                                </div>
                                </div>
                              </td>
                            
                            
                            </tr>
                            
                            
                            
                            <tr>
                              <td>
                              <div class="form-group row">
                                <label for="staticEmail" class="col-sm-5 col-form-label">Date of birth :</label>
                                <div class="col-sm-7">
                                  <input required readonly data-provide="datepicker" data-date-autoclose="true" id="DateOfBirth" name="DateOfBirth" class="cards__settings-field" data-date-format="dd-mm-yyyy" placeholder="Birth Date" title="Birth Date is required" value="<?php if($userdetailcheck['BirthDate']!='') { if(date('d-m-Y',strtotime(@$userdetailcheck['BirthDate']))!= date('d-m-Y')) { echo date('d-m-Y',strtotime(@$userdetailcheck['BirthDate'])); } } ?>">
                                </div>
                              </div>
                             </td>
                              <td>
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-5 col-form-label">Gender : </label>
                                <div class="col-sm-7">
                                                    <input type="radio" class="form-check-input" id="Gender" name="Gender[]" value="Male">
                                                    <label class="form-check-label" for="exampleCheck1">Male</label>
                                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" class="form-check-input" id="Gender" name="Gender[]" value="Female">
                                                    <label class="form-check-label" for="exampleCheck1">Female</label>
                                                    <span id="Gender_error"></span>
                                </div>
                                </div>
                                
                              </td>
                              
                               <td>
                                    
                              </td>
                            
                           </tr>
                            
                            
                            <tr>
                              <td colspan=3>
                                  
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-5 col-form-label">Address : </label>
                                </div>
                                </td>
                            </tr>
                            
                            
                            <tr>
                              <td>
                                  
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-3 col-form-label">Suburb : </label>
                                
                                <div class="col-sm-9">
                                  <input class="form-control-plaintext" name="suburb" type="text" id="Suburb" placeholder="Suburb"  title="Suburb is required" value="<?php echo @$userdetailcheck['Suburb'];?>" >
                                </div>
                                
                                
                                </div>
                                </td>
                              <td>
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-3 col-form-label">Zip Code : </label>
                                
                                <div class="col-sm-9">
                                    <input required type="text" class="form-control-plaintext" id="Zipcode" name="Zipcode" placeholder="Zip Code" title="Zipcode is required" value="<?php echo @$userdetailcheck['ZipCode'];?>">
                                </div>
                                
                                
                                </div>
                                </td>
                              <td>
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-4 col-form-label">Municipality : </label>
                                
                                <div class="col-sm-8">
                                  <input required type="text" class="form-control-plaintext" id="Municipality" name="Municipality" placeholder="Municipality"  value="" title="Municipality is required">
                                </div>
                                
                                
                                </div>
                                </td>
                            </tr>
                            
                            
                            <tr>
                              <td>
                                  
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-3 col-form-label">City : </label>
                                
                                <div class="col-sm-9">
                                   <input required type="text" class="form-control-plaintext" id="City" name="City" placeholder="City" title="City is required"  value="<?php echo @$userdetailcheck['City'];?>">
                                   
                                   
                                </div>
                                
                                
                                </div>
                                </td>
                              <td>
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-3 col-form-label">State : </label>
                                
                                <div class="col-sm-9">
                                <select class="cards__settings-field cards__select" required id="State" name="state" title="Select State" data-placeholder="Select state">
                                <option value="">Select State</option>
                                </select>
                                                    
                                </div>
                                
                                
                                </div>
                                </td>
                              <td>
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-4 col-form-label">Country : </label>
                                
                                <div class="col-sm-8">
                                  
                                  
                                  
                                </div>
                                
                                
                                </div>
                                </td>
                            </tr>
                            
                             
                            <tr>
                              <td>
                                  
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-3 col-form-label">Phone : </label>
                                
                                <div class="col-sm-9">
                                    <input readonly type="text" style="width: 100%" class="form-control-plaintext" id="PhoneNumber" name="PhoneNumber" placeholder="Phone"  value="<?php echo @$userdetailcheck['CellPhone'];?>"  >
                                    
                                    
                                </div>
                                
                                
                                </div>
                                </td>
                              <td>
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-3 col-form-label">Mobile : </label>
                                
                                <div class="col-sm-9">
                                  <input type="text"  class="form-control-plaintext" id="Mobile" name="Mobile" placeholder="Mobile" value="">
                                </div>
                                
                                
                                </div>
                                </td>
                              <td>
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-3 col-form-label">Home : </label>
                                
                                <div class="col-sm-9">
                                  <input type="text"  class="form-control-plaintext" id="Home" name="Home" placeholder="Home" value="">
                                </div>
                                
                                
                                </div>
                                </td>
                            </tr>
                            
                             
                            <tr>
                              <td colspan=3>
                                  
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Type of Address : </label>
                                <div class="col-sm-10">
                                                    <input attr-type="TypeOfAddress" type="radio" class="form-check-input unother_check" id="TypeOfAddress" name="TypeOfAddress[]"  value="Owner">
                                                    <label class="form-check-label" for="exampleCheck1">Owner</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input attr-type="TypeOfAddress" type="radio" class="form-check-input unother_check" id="TypeOfAddress" name="TypeOfAddress[]"  value="Mortgaged">
                                                    <label class="form-check-label" for="exampleCheck1">Mortgaged </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input attr-type="TypeOfAddress" type="radio" class="form-check-input unother_check" id="exampleCheck1" name="TypeOfAddress[]" value="Renting">
                                                    <label class="form-check-label" for="exampleCheck1">Renting </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input attr-type="TypeOfAddress" type="radio" class="form-check-input unother_check" id="exampleCheck1" name="TypeOfAddress[]" value="Familiar">
                                                    <label class="form-check-label" for="exampleCheck1">Familiar </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input attr-type="TypeOfAddress" type="radio" class="form-check-input othercheck" id="exampleCheck1" name="TypeOfAddress[]" value="others">
                                                    <input type="text" placeholder="Other" id="TypeOfAddress_text"  name="TypeOfAddress_text"  class="cards__settings-field" style="height: 25px; width:200px;" title="Others Field is required">
                                                    <span id="TypeOfAddress_error"></span>
                                                    
                                </div>
                                </div>
                            </td>
                            </tr>
                            
                           
                            <tr>
                              <td colspan=3>
                                  
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Marital status : </label>
                                <div class="col-sm-10">
                                                    <input type="radio" attr-type="MaritalStatus" class="form-check-input unother_check" id="MaritalStatus" name="MaritalStatus[]" value="Single">
                                                    <label class="form-check-label" for="exampleCheck1">Single </label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="MaritalStatus" class="form-check-input unother_check" id="MaritalStatus" name="MaritalStatus[]" value="Married">
                                                    <label class="form-check-label" for="exampleCheck1">Married  </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="MaritalStatus" class="form-check-input unother_check"  id="MaritalStatus" name="MaritalStatus[]" value="Divorced">
                                                    <label class="form-check-label" for="exampleCheck1">Divorced </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="MaritalStatus" class="form-check-input unother_check"  id="MaritalStatus" name="MaritalStatus[]" value="Widow(er)">
                                                    <label class="form-check-label" for="exampleCheck1">Widow(er) </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="MaritalStatus" class="form-check-input unother_check"  id="MaritalStatus" name="MaritalStatus[]" value="Common Law Marraige">
                                                    <label class="form-check-label" for="exampleCheck1">Common Law Marraige </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input attr-type="MaritalStatus" type="radio" class="form-check-input othercheck" id="MaritalStatus"  name="MaritalStatus[]" value="others">
                                                    <input type="text" placeholder="Other" id="MaritalStatus_text" name="MaritalStatus_text" class="cards__settings-field" style="height: 25px; width:100px;" title="Others Field is required">
                                                    <span id="MaritalStatus_error"></span>
                                                    
                                </div>
                                </div>
                                </td>
                            </tr>
                            
                           
                            <tr>
                              <td>
                                  
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-3 col-form-label">Email : </label>
                                <div class="col-sm-9">
                                                   <input readonly type="text" style="width: 100%" class="form-control-plaintext" id="Email" name="Email" placeholder="Email"  value="<?php echo @$userdetailcheck['Email_ID'];?>"  >
                                                    
                                </div>
                                </div>
                                </td>
                              
                              <td>
                                  
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-4 col-form-label">Place of Birth : </label>
                                <div class="col-sm-8">
                                                 
                                </div>
                                </div>
                                </td>
                                
                              <td>
                                  
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-4 col-form-label">Nationality :</label>
                                <div class="col-sm-8">
                                  <input required type="text" style="width: 100%" class="form-control-plaintext" id="Nationality" name="Nationality" placeholder="Nationality" title="Nationality is required" >                    
                                                    
                                </div>
                                </div>
                                </td>
                            </tr>
                            
                           
                            
                            
                          </tbody>
                        </table>
                                        
                         <table class="table table-bordered">
                          <thead class="thead-light">
                            <tr>
                              <th class="text-center" colspan="3" scope="col">TRANSACTIONALITY</th>
                              
                            </tr>
                          </thead>
                          <tbody>  
                              <tr>
                               <td colspan=4>
                                  
                                <div class="form-group row">
                                <label for="staticEmail" class="col-sm-2 col-form-label">Type of Account : </label>
                                <div class="col-sm-10">
                                                    <input type="radio" attr-type="TypeOfAccount" class="form-check-input unother_check" id="TypeOfAccount" name="TypeOfAccount[]" value="Personal">
                                                    <label class="form-check-label" for="exampleCheck1">Personal </label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="TypeOfAccount" class="form-check-input unother_check" id="TypeOfAccount" name="TypeOfAccount[]" value="Work">
                                                    <label class="form-check-label" for="exampleCheck1">Work  </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    
                                                    <span id="TypeOfAccount_error"></span>
                                                    
                                                    
                                                    
                                </div>
                                </div>
                                </td>
                            </tr>
                            <tr>
                            <td colspan=2>
                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-12 col-form-label">Expected deposits and withdrawal amount in a month (in thousand US dollars) : </label>
                                <div class="col-sm-12">
                            
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="ExpectedDeposits" class="form-check-input unother_check" id="ExpectedDeposits" name="ExpectedDeposits[]" value="0 -99"> 
                                                    <label class="form-check-label" for="exampleCheck1">0 -99</label></br>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="ExpectedDeposits" class="form-check-input unother_check" id="ExpectedDeposits" name="ExpectedDeposits[]" value="100 -499">
                                                    <label class="form-check-label" for="exampleCheck1">100 -499 </label></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="ExpectedDeposits" class="form-check-input unother_check" id="ExpectedDeposits" name="ExpectedDeposits[]" value="500 -999 ">
                                                    <label class="form-check-label" for="exampleCheck1">500 -999  </label></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="ExpectedDeposits" class="form-check-input unother_check" id="ExpectedDeposits" name="ExpectedDeposits[]" value="1000 -4999">
                                                    <label class="form-check-label" for="exampleCheck1">1000 -4999  </label></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="ExpectedDeposits" class="form-check-input unother_check" id="ExpectedDeposits" name="ExpectedDeposits[]" value="> 5000">
                                                    <label class="form-check-label" for="exampleCheck1">> 5000   </label></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    
                                                    <span id="ExpectedDeposits_error"></span>
                            
                            
                                </div>
                            </div>
                            </td>
                            
                            <td colspan=2>
                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-12 col-form-label">Expected number of transactions (deposits and withdrawal) in a month : </label>
                                <div class="col-sm-12">
                            
                                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="ExpectedNumber" class="form-check-input unother_check" id="ExpectedNumber" name="ExpectedNumber[]" value="0 -9"> 
                                                    <label class="form-check-label" for="exampleCheck1">0 -9</label></br>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="ExpectedNumber" class="form-check-input unother_check" id="ExpectedNumber" name="ExpectedNumber[]" value="10 -199">
                                                    <label class="form-check-label" for="exampleCheck1">10 -19 </label></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="ExpectedNumber" class="form-check-input unother_check" id="ExpectedNumber" name="ExpectedNumber[]" value="20 -39">
                                                    <label class="form-check-label" for="exampleCheck1">20 -39  </label></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="ExpectedNumber" class="form-check-input unother_check" id="ExpectedNumber" name="ExpectedNumber[]" value="> 40">
                                                    <label class="form-check-label" for="exampleCheck1">> 40  </label></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    
                                                   <span id="ExpectedNumber_error"></span>
                                        
                            
                                </div>
                            </div>
                            </td>
                            
                            </tr>
                            
                            
                            
                          </tbody>
                        </table>
                        
                             
                         <table class="table table-bordered">
                          <thead class="thead-light">
                            <tr>
                              <th class="text-center" colspan="3" scope="col">BANK ACCOUNT</th>
                              
                            </tr>
                          </thead>
                          <tbody>  
                              <tr>
                              <td colspan="3">
                                  
                                <div class="form-group row">
                                <div class="col-sm-12">
                                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="BankAccount" class="form-check-input unother_check" id="BankAccount" name="BankAccount[]" value="I have a Personal Bank Account"> 
                                                    <label class="form-check-label" for="exampleCheck1">I have a Personal Bank Account </label></br>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="BankAccount" class="form-check-input unother_check" id="BankAccount" name="BankAccount[]" value="I have a Business Bank Account">
                                                    <label class="form-check-label" for="exampleCheck1">I have a Business Bank Account  </label></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <input type="radio" attr-type="BankAccount" class="form-check-input unother_check" id="BankAccount" name="BankAccount[]" value="I do not have a Bank Account ">
                                                    <label class="form-check-label" for="exampleCheck1">I do not have a Bank Account  </label></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    
                                                    <span id="BankAccount_error"></span>
                                                    
                                </div>
                                </div>
                                </td>
                            </tr>
                            <tr>
                              <td colspan="3" class="text-center"><button class="cardPin__modal-submit" type="submit">Submit</button></td>
                            </tr>  
                            
                          </tbody>
                        </table>
                        
                            </form> 
                                        </div>
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
    <script type="text/javascript" src="assets/scripts/dashboard.js"></script>
    <script type="text/javascript" src="assets/scripts/Details.js"></script>
    <!-- <script type="text/javascript" src="assets/scripts/jquery.min.js"></script> -->
    <!-- <script type="text/javascript" src="assets/scripts/jquery-3.2.1.min.js"></script> -->
    <script type="text/javascript" src="assets/scripts/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="assets/scripts/intlTelInput.js"></script>
     <script type="text/javascript" src="assets/scripts/less.min.js"></script>
      <script type="text/javascript" src="assets/scripts/bootstrap.min.js"></script>
      
    
    
    </body>
</html>

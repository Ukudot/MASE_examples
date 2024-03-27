<!DOCTYPE html PUBLIC>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
  <link rel="stylesheet" href="${url.resourcesPath}/css/spid-sp-access-button.min.css">
  <link rel="stylesheet" href="${url.resourcesPath}/css/bootstrap-italia.min.css">

  <link rel="stylesheet" href="${url.resourcesPath}/css/custom.css">

  <script src="${url.resourcesPath}/js/spid-idps.js"></script>

</head>

<body>
  <header class="it-header-wrapper">
  <div class="it-header-slim-wrapper">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="it-header-slim-wrapper-content">
            <a class="d-none d-lg-block navbar-brand" href="${properties.headerTitleLink}">${properties.headerTitle}</a>
            <div class="nav-mobile">
              <nav aria-label="Navigazione secondaria">
                <a class="it-opener d-lg-none" data-bs-toggle="collapse" href="#menuC1" role="button" aria-expanded="false" aria-controls="menuC1">
                  <span>${properties.headerTitle}</span>
                  <!-- <svg class="icon" aria-hidden="true"><use href="${url.resourcesPath}/svg/sprites.svg#it-expand"></use></svg> -->
                </a>
                <!-- <div class="link-list-wrapper collapse" id="menuC1">
                  <ul class="link-list">
                    <li><a class="dropdown-item list-item" href="#">Link 1</a></li>
                    <li><a class="dropdown-item list-item" href="#">Link 2</a></li>
                    <li><a class="dropdown-item list-item" href="#">Link 3</a></li>
                  </ul>
                </div> -->
              </nav>
            </div>
            <!-- <div class="it-header-slim-right-zone">
              <div class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <span class="visually-hidden">Selezione lingua: lingua selezionata</span>
                  <span>ITA</span>
                  <svg class="icon d-none d-lg-block"><use href="${url.resourcesPath}/svg/sprites.svg#it-expand"></use></svg>
                </a>
                <div class="dropdown-menu">
                  <div class="row">
                    <div class="col-12">
                      <div class="link-list-wrapper">
                        <ul class="link-list">
                          <li><a class="dropdown-item list-item" href="#"><span>ITA <span class="visually-hidden">selezionata</span></span></a></li>
                          <li><a class="dropdown-item list-item" href="#"><span>ENG</span></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div> -->
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="it-nav-wrapper">
    <div class="it-header-center-wrapper">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="it-header-center-content-wrapper">
              <div class="it-brand-wrapper">
                <a href="${properties.brandLink}">
                  <svg class="icon" aria-hidden="true"><use href="${url.resourcesPath}/svg/sprites.svg#it-pa"></use></svg>
                  <div class="it-brand-text">
                    <div class="it-brand-title">${properties.brandTitle}</div>
                    <div class="it-brand-tagline d-none d-md-block">${properties.brandTagLine}</div>
                  </div>
                </a>
              </div>
              <!--<div class="it-right-zone">
                <div class="it-socials d-none d-md-flex">
                  <span>Seguici su</span>
                  <ul>
                    <li>
                      <a href="#" aria-label="Facebook" target="_blank">
                        <svg class="icon"><use href="${url.resourcesPath}/svg/sprites.svg#it-facebook"></use></svg>
                      </a>
                    </li>
                    <li>
                      <a href="#" aria-label="Github" target="_blank">
                        <svg class="icon"><use href="${url.resourcesPath}/svg/sprites.svg#it-github"></use></svg>
                      </a>
                    </li>
                    <li>
                      <a href="#" aria-label="Twitter" target="_blank">
                        <svg class="icon"><use href="${url.resourcesPath}/svg/sprites.svg#it-twitter"></use></svg>
                      </a>
                    </li>
                  </ul>
                </div>
              </div> -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--<div class="it-header-navbar-wrapper">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <nav class="navbar navbar-expand-lg has-megamenu" aria-label="Navigazione principale">
              <button class="custom-navbar-toggler" type="button" aria-controls="navC1" aria-expanded="false" aria-label="Mostra/Nascondi la navigazione" data-bs-toggle="navbarcollapsible" data-bs-target="#navC1">
                <svg class="icon">
                  <use href="${url.resourcesPath}/svg/sprites.svg#it-burger"></use>
                </svg>
              </button>
              <div class="navbar-collapsable" id="navC1" style="display: none;">
                <div class="overlay" style="display: none;"></div>
                <div class="close-div">
                  <button class="btn close-menu" type="button">
                    <span class="visually-hidden">Nascondi la navigazione</span>
                    <svg class="icon">
                      <use href="${url.resourcesPath}/svg/sprites.svg#it-close-big"></use>
                    </svg>
                  </button>
                </div>
                <div class="menu-wrapper">
                  <ul class="navbar-nav">
                    <li class="nav-item active"><a class="nav-link active" href="#" aria-current="page"><span>Link 1 (attivo)</span></a></li>
                    <li class="nav-item"><a class="nav-link disabled" href="#" aria-disabled="true"><span>Link 2 (disabilitato)</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><span>Link 3</span></a></li>
                    <li class="nav-item"><a class="nav-link" href="#"><span>Link 4</span></a></li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" id="mainNavDropdownC1">
                        <span>Menu Dropdown</span>
                        <svg class="icon icon-xs">
                          <use href="${url.resourcesPath}/svg/sprites.svg#it-expand"></use>
                        </svg>
                      </a>
                      <div class="dropdown-menu" role="region" aria-labelledby="mainNavDropdownC1">
                        <div class="link-list-wrapper">
                          <ul class="link-list">
                            <li><a class="dropdown-item list-item" href="#"><span>Link lista 1</span></a></li>
                            <li><a class="dropdown-item list-item" href="#"><span>Link lista 2</span></a></li>
                            <li><a class="dropdown-item list-item" href="#"><span>Link lista 3</span></a></li>
                            <li><span class="divider"></span></li>
                            <li><a class="dropdown-item list-item" href="#"><span>Link lista 4</span></a></li>
                          </ul>
                        </div>
                      </div>
                    </li>
                    <li class="nav-item dropdown megamenu">
                      <button type="button" class="nav-link dropdown-toggle px-lg-2 px-xl-3" data-bs-toggle="dropdown" aria-expanded="false" id="megamenu-5" data-focus-mouse="false">
                          <span>Megamenu</span><svg role="img" class="icon icon-xs ms-1"><use href="${url.resourcesPath}/svg/sprites.svg#it-expand"></use></svg>
                      </button>
                      <div class="dropdown-menu shadow-lg" role="region" aria-labelledby="megamenu-5">
                        <div class="megamenu pb-5 pt-3 py-lg-0">
                          <div class="row">
                            <div class="col-xs-12 col-lg-4 px-0">
                              <div class="row">
                                <div class="col-12 it-vertical it-description pb-lg-3">
                                  <div class="description-content ps-4 ps-sm-5 ms-3">
                                    <div class="ratio ratio-21x9 lightgrey-bg-a1 mb-4 rounded">
                                      <figure class="figure">
                                        <img src="https://via.placeholder.com/560x240/ebebeb/808080/?text=Immagine" class="figure-img img-fluid rounded" alt="Segnaposto">
                                      </figure>
                                    </div>
                                    <p>
                                      Testo utile a fornire una descrizione dei contenuti della sezione <strong>megamenu</strong>.
                                    </p>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="col-12 col-lg-8">
                              <div class="it-heading-link-wrapper">
                                <a class="it-heading-link" href="#"><svg role="img" class="icon icon-sm me-2 mb-1"><use href="${url.resourcesPath}/svg/sprites.svg#it-arrow-right-triangle"></use></svg>
                                <span>Esplora la sezione megamenu</span>
                                </a>
                              </div>
                              <div class="row">
                                <div class="col-12 col-lg-6">
                                  <div class="link-list-wrapper">
                                    <ul class="link-list">
                                      <li>
                                        <a class="list-item dropdown-item" href="#">
                                          <svg role="img" class="icon icon-sm me-2"><use href="${url.resourcesPath}/svg/sprites.svg#it-arrow-right-triangle"></use></svg>
                                          <span>Link lista 1</span>
                                        </a>
                                      </li>
                                      <li>
                                        <a class="list-item dropdown-item" href="#">
                                          <svg role="img" class="icon icon-sm me-2"><use href="${url.resourcesPath}/svg/sprites.svg#it-arrow-right-triangle"></use></svg>
                                          <span>Link lista 2</span>
                                        </a>
                                      </li>
                                      <li>
                                        <a class="list-item dropdown-item " href="#">
                                          <svg role="img" class="icon icon-sm me-2"><use href="${url.resourcesPath}/svg/sprites.svg#it-arrow-right-triangle"></use></svg>
                                          <span>Link lista 3</span>
                                        </a>
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                                <div class="col-12 col-lg-6">
                                  <div class="link-list-wrapper">
                                    <ul class="link-list">
                                      <li>
                                        <a class="list-item dropdown-item" href="#">
                                          <svg role="img" class="icon icon-sm me-2"><use href="${url.resourcesPath}/svg/sprites.svg#it-arrow-right-triangle"></use></svg>
                                          <span>Link lista 4</span>
                                        </a>
                                      </li>
                                      <li>
                                        <a class="list-item dropdown-item" href="#">
                                          <svg role="img" class="icon icon-sm me-2"><use href="${url.resourcesPath}/svg/sprites.svg#it-arrow-right-triangle"></use></svg>
                                          <span>Link lista 5</span>
                                        </a>
                                      </li>
                                      <li>
                                        <a class="list-item dropdown-item " href="#">
                                          <svg role="img" class="icon icon-sm me-2"><use href="${url.resourcesPath}/svg/sprites.svg#it-arrow-right-triangle"></use></svg>
                                          <span>Link lista 6</span>
                                        </a>
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                  </ul> 
                </div>
              </div>
            </nav>
          </div>
        </div>
      </div>
    </div> -->
  </div>
</header>
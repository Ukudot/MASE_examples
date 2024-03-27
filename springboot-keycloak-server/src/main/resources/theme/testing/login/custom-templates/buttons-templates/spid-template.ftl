<#include "../modals/what-is-spid-modal.ftl">



<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
    <div class="d-flex justify-content-center">
        <a class="italia-it-button italia-it-button-size-l button-spid" spid-idp-button="#spid-idp-button-medium-get" aria-haspopup="true" aria-expanded="false">
            <span class="italia-it-button-icon"><img src="${url.resourcesPath}/svg/spid/spid-ico-circle-bb.svg" alt="" /></span>
            <span class="italia-it-button-text">Entra con SPID</span>
        </a>
        <div id="spid-idp-button-medium-get" class="spid-idp-button spid-idp-button-tip spid-idp-button-relative">
            <ul id="spid-idp-list-small-root-get" class="spid-idp-button-menu" data-spid-remote aria-labelledby="spid-idp">
            </ul>
        </div>
    </div>
</div>
<div class="col-sm-12 col-md-12 col-lg-6 col-xl-6">
    <div class="d-flex">
        <div class="text-start">
            <div class="row">
                <a href="#" data-bs-toggle="modal" data-bs-target="#what-is-spid-modal" class="text-decoration-none fw-bold">
                    Cos'è SPID?
                </a>
            </div>
            <div class="row">
                <a href="https://www.spid.gov.it/" target="_blank" class="text-decoration-none fw-light">
                    <svg class="icon icon-sm icon-primary">
                        <use href="${url.resourcesPath}/svg/sprites.svg#it-external-link"></use>
                    </svg>
                    Maggiori informazioni su SPID
                </a>
            </div>
            <div class="row">
                <a href="https://www.spid.gov.it/richiedi-spid" target="_blank" class="text-decoration-none fw-light">
                    <svg class="icon icon-sm icon-primary">
                        <use href="${url.resourcesPath}/svg/sprites.svg#it-external-link"></use>
                    </svg>
                    Non hai SPID?
                </a>
            </div>
        </div>
    </div>
</div>
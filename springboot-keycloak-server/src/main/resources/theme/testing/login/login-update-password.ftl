<#include "header.ftl">

<div class="container my-4">
    <#include "custom-templates/error-messages/error-message-top.ftl">
    <div class="row">
        <div class="col-12">
            <div class="card-wrapper card-space">
                <div class="card card-bg">
                    <div class="card-body">

                        <#include "custom-templates/client-info.ftl">

                        <form id="kc-form-update-password" action="${url.loginAction}" method="post">
                            <div class="form-group">
                                <label for="password" class="text-uppercase">${msg("passwordNew")}</label>
                                <input type="password" data-bs-input class="form-control" id="password" name="password-new" aria-labelledby="infoPassword" autocomplete="off">
                                <span class="password-icon" aria-hidden="true">
                                <svg class="password-icon-visible icon icon-sm"><use href="${url.resourcesPath}/svg/sprites.svg#it-password-visible"></use></svg>
                                <svg class="password-icon-invisible icon icon-sm d-none"><use href="${url.resourcesPath}/svg/sprites.svg#it-password-invisible"></use></svg>
                                </span>
                            </div>

                            <div class="form-group">
                                <label for="password-confirm" class="text-uppercase">${msg("passwordConfirm")}</label>
                                <input type="password" data-bs-input class="form-control" id="password-confirm" name="password-confirm" aria-labelledby="infoPasswordConfirm" autocomplete="off">
                                <span class="password-icon" aria-hidden="true">
                                <svg class="password-icon-visible icon icon-sm"><use href="${url.resourcesPath}/svg/sprites.svg#it-password-visible"></use></svg>
                                <svg class="password-icon-invisible icon icon-sm d-none"><use href="${url.resourcesPath}/svg/sprites.svg#it-password-invisible"></use></svg>
                                </span>
                            </div>

                            <div class="d-flex justify-content-center">
                                <button id="kc-update-password" type="submit" class="btn btn-primary text-uppercase">${msg("doSubmit")}</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>

<#include "footer.ftl">
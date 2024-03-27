<#include "header.ftl">

<div class="container my-4">
    <#include "custom-templates/error-messages/error-message-top.ftl">
    <div class="row">
        <div class="col-12 mb-3">
            <a href="${url.loginUrl}" class="go-back text-decoration-none">
                <svg class="icon icon-sm icon-primary me-2"><use href="${url.resourcesPath}/svg/sprites.svg#it-arrow-left"></use></svg>
                ${msg("doBack")?no_esc}
            </a>
        </div>
        <div class="col-12">
            <div class="card-wrapper card-space">
                <div class="card card-bg">
                    <div class="card-body">
                        <#include "custom-templates/client-info.ftl">
                        <form id="kc-form-reset-password" action="${url.loginAction}" method="post">
                            <div class="form-group">
                                <label for="username" class="text-uppercase">
                                <#if realm.loginWithEmailAllowed>
                                    ${msg("usernameOrEmail")}
                                <#else>
                                    ${msg("username")}
                                </#if>
                                </label>
                                <input type="text" class="form-control" id="username" name="username" value="${(auth.attemptedUsername!'')}">
                            </div>
                            <div class="d-flex justify-content-center">
                                <button id="kc-reset-password" type="submit" class="btn btn-primary text-uppercase">${msg("doSubmit")}</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>

<#include "footer.ftl">
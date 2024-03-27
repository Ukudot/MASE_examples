<#include "header.ftl">

<div class="container my-4">
    <#include "custom-templates/error-messages/error-message-top.ftl">
    <div class="row">
        
        <div class="col-12">
            <div class="card-wrapper card-space">
                <div class="card card-bg">
                    <div class="card-body">
                        
                        <#include "custom-templates/client-info.ftl">
                        
                        <#if properties.usernameAndPasswordLoginEnabled?boolean> 
                        <form id="kc-form-login" onsubmit="login.disabled=true; return true;" action="${url.loginAction}" method="post">
                            <div class="form-group">
                                <label for="username" class="text-uppercase">
                                <#if realm.loginWithEmailAllowed>
                                    ${msg("usernameOrEmail")}
                                <#else>
                                    ${msg("username")}
                                </#if>
                                </label>
                                <input type="text" class="form-control" id="username" name="username" value="${(login.username!'')}">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-uppercase">${msg("password")}</label>
                                <input type="password" data-bs-input class="form-control" id="password" name="password" aria-labelledby="infoPassword">
                                <span class="password-icon" aria-hidden="true">
                                <svg class="password-icon-visible icon icon-sm"><use href="${url.resourcesPath}/svg/sprites.svg#it-password-visible"></use></svg>
                                <svg class="password-icon-invisible icon icon-sm d-none"><use href="${url.resourcesPath}/svg/sprites.svg#it-password-invisible"></use></svg>
                                </span>
                            </div>

                        <#if realm.rememberMe>
                            <div class="col-12 mb-3">
                                <div class="form-check">
                                    <input id="rememberMe" name="rememberMe" type="checkbox" checked="checked">
                                    <label for="rememberMe">${msg("rememberMe")}</label>
                                </div>
                            </div>
                        <#else>
                            <div class="col-12 mb-3">
                                <div class="form-check">
                                    <input id="rememberMe" name="rememberMe" type="checkbox">
                                    <label for="rememberMe">${msg("rememberMe")}</label>
                                </div>
                            </div>
                        </#if>

                        <#if realm.resetPasswordAllowed>
                            <div class="col-12">
                                <a href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a>
                            </div>
                        </#if>

                        <#if realm.registrationAllowed>
                            <div class="col-12 mt-1">
                                <span>${msg("noAccount")}</span> <a href="${url.registrationUrl}">${msg("doRegister")}</a>
                            </div>
                        </#if>

                            <div class="d-flex flex-row-reverse">
                                <button id="kc-login" type="submit" class="btn btn-primary text-uppercase">${msg("doLogIn")}</button>
                            </div>
                        </form>
                        </#if>
                        <#if properties.digitalIdentityEnabled?boolean>
                            <#if properties.usernameAndPasswordLoginEnabled?boolean && properties.digitalIdentityEnabled?boolean>
                                <div class="col-12 mt-3">
                                    <div class="d-flex justify-content-center">
                                        <p class="fw-light text-uppercase">${msg("identity-provider-login-label")}</p>
                                    </div>
                                </div>
                            </#if>
                            <div class="col-12">
                                <#include "custom-templates/digital-identity-${properties.digitalIdentitySectionVisualizationMode}.ftl">
                            </div>
                        </#if> 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<#include "footer.ftl">
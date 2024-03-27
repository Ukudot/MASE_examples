<#include "header.ftl">
<#include "custom-templates/macros/custom-user-attributes.ftl">

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
                        <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
                            <div class="form-group">
                                <label for="firstname" class="text-uppercase">
                                    ${msg("firstName")}
                                </label>
                                <input type="text" class="form-control" id="firstname" name="firstname" value="${(register.formData.firstName!'')}" autocomplete="firstname">
                            </div>
                            <div class="form-group">
                                <label for="lastname" class="text-uppercase">
                                    ${msg("lastName")}
                                </label>
                                <input type="text" class="form-control" id="lastname" name="lastname" value="${(register.formData.lastName!'')}" autocomplete="lastname">
                            </div>

                            <div class="form-group">
                                <label for="email" class="text-uppercase">
                                    ${msg("email")}
                                </label>
                                <input type="text" class="form-control" id="email" name="email" value="${(register.formData.email!'')}" autocomplete="email">
                            </div>

                            <#if !realm.registrationEmailAsUsername>
                            <div class="form-group">
                            <label for="username" class="text-uppercase">
                                ${msg("username")}
                            </label>
                            <input type="text" class="form-control" id="username" name="username" value="${(register.formData.username!'')}" autocomplete="username">
                            </div>
                            </#if>

                            <#if passwordRequired??>
                            <div class="form-group">
                                <label for="password" class="text-uppercase">${msg("password")}</label>
                                <input type="password" data-bs-input class="form-control" id="password" name="password" aria-labelledby="infoPassword" autocomplete="new-password">
                                <span class="password-icon" aria-hidden="true">
                                <svg class="password-icon-visible icon icon-sm"><use href="${url.resourcesPath}/svg/sprites.svg#it-password-visible"></use></svg>
                                <svg class="password-icon-invisible icon icon-sm d-none"><use href="${url.resourcesPath}/svg/sprites.svg#it-password-invisible"></use></svg>
                                </span>
                            </div>

                            <div class="form-group">
                                <label for="password-confirm" class="text-uppercase">${msg("passwordConfirm")}</label>
                                <input type="password" data-bs-input class="form-control" id="password-confirm" name="password-confirm" aria-labelledby="infoPasswordConfirm" autocomplete="password-confirm">
                                <span class="password-icon" aria-hidden="true">
                                <svg class="password-icon-visible icon icon-sm"><use href="${url.resourcesPath}/svg/sprites.svg#it-password-visible"></use></svg>
                                <svg class="password-icon-invisible icon icon-sm d-none"><use href="${url.resourcesPath}/svg/sprites.svg#it-password-invisible"></use></svg>
                                </span>
                            </div>
                            </#if>


                            <#if properties.customAttributes?has_content>
                                <@customUserAttributes/>
                            </#if>

                            <div class="d-flex flex-row-reverse">
                                <button id="kc-login" type="submit" class="btn btn-primary text-uppercase">${msg("doRegister")}</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<#include "footer.ftl">
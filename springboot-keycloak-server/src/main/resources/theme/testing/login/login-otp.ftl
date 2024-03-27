<#include "header.ftl">

<div class="container my-4">
    <#include "custom-templates/error-messages/error-message-top.ftl">
    <div class="row">
        <div class="col-12">
            <div class="card-wrapper card-space">
                <div class="card card-bg">
                    <div class="card-body">
                        <#include "custom-templates/client-info.ftl">
                        <form id="kc-otp-login-form" action="${url.loginAction}" method="post">

                            <#if otpLogin.userOtpCredentials?size gt 1>
                                <div class="col-12 mb-5">
                                    <#list otpLogin.userOtpCredentials as otpCredential>
                                    <div class="form-check">
                                        <input id="kc-otp-credential-${otpCredential?index}" type="radio" name="selectedCredentialId" value="${otpCredential.id}" <#if otpCredential.id == otpLogin.selectedCredentialId>checked="checked"</#if>>
                                        <label for="kc-otp-credential-${otpCredential?index}" tabindex="${otpCredential?index}">
                                            <span class="${properties.kcLoginOTPListItemHeaderClass!}">
                                                <span class="${properties.kcLoginOTPListItemIconBodyClass!}">
                                                <i class="${properties.kcLoginOTPListItemIconClass!}" aria-hidden="true"></i>
                                                </span>
                                                <span class="${properties.kcLoginOTPListItemTitleClass!}">${otpCredential.userLabel}</span>
                                            </span>
                                        </label>
                                    </div>
                                    </#list>
                                    <hr>
                                </div>
                            </#if>

                            <div class="form-group input-number">
                                <label for="otp" class="text-uppercase">${msg("authenticatorCode")}</label>
                                <input type="number" class="form-control" id="otp" name="otp">
                            </div>
                            <div class="d-flex justify-content-center">
                                <button id="kc-login" name="login" type="submit" class="btn btn-primary text-uppercase">${msg("doSubmit")}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>

<#include "footer.ftl">
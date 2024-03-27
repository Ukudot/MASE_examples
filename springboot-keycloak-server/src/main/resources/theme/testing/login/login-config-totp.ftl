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
                            
                            <h5>${msg("loginTotpTitle")}</h5>
                            <p>${msg("loginTotpStep1")}</p>

                            <ul id="kc-totp-supported-apps">
                                <#list totp.supportedApplications as app>
                                    <li>${msg(app)}</li>
                                </#list>
                            </ul>

                            <hr>

                            <#if mode?? && mode = "manual">
                                
                                    <p>${msg("loginTotpManualStep2")}</p>
                                    <p><span id="kc-totp-secret-key">${totp.totpSecretEncoded}</span></p>
                                    <p><a href="${totp.qrUrl}" id="mode-barcode">${msg("loginTotpScanBarcode")}</a></p>
                                
                                    <p>${msg("loginTotpManualStep3")}</p>
                                    <p>
                                    <ul>
                                        <li id="kc-totp-type">${msg("loginTotpType")}: ${msg("loginTotp." + totp.policy.type)}</li>
                                        <li id="kc-totp-algorithm">${msg("loginTotpAlgorithm")}: ${totp.policy.getAlgorithmKey()}</li>
                                        <li id="kc-totp-digits">${msg("loginTotpDigits")}: ${totp.policy.digits}</li>
                                        <#if totp.policy.type = "totp">
                                            <li id="kc-totp-period">${msg("loginTotpInterval")}: ${totp.policy.period}</li>
                                        <#elseif totp.policy.type = "hotp">
                                            <li id="kc-totp-counter">${msg("loginTotpCounter")}: ${totp.policy.initialCounter}</li>
                                        </#if>
                                    </ul>
                                    </p>
                            <#else>
                                    <p>${msg("loginTotpStep2")}</p>
                                    <img id="kc-totp-secret-qr-code" src="data:image/png;base64, ${totp.totpSecretQrCode}" alt="Figure: Barcode"><br/>
                                    <p><a href="${totp.manualUrl}" id="mode-manual">${msg("loginTotpUnableToScan")}</a></p>
                            </#if>

                            <hr>

                            <p>${msg("loginTotpStep3")}</p>
                            <p>${msg("loginTotpStep3DeviceName")}</p>
                            
                            <form action="${url.loginAction}" id="kc-totp-settings-form" method="post">
                                
                                <div class="row">
                                    <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 form-group input-number mt-4">
                                        <label for="totp" class="text-uppercase">${msg("authenticatorCode")}<span class="required">*</span></label>
                                        <input type="number" class="form-control" id="totp" name="totp" value="${totp.totpSecret}">
                                        <input type="hidden" id="totpSecret" name="totpSecret" value="${totp.totpSecret}" />
                                        <#if mode??><input type="hidden" id="mode" name="mode" value="${mode}"/></#if>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 form-group input-number mt-4">
                                        <label for="userLabel" class="text-uppercase">${msg("loginTotpDeviceName")}<#if totp.otpCredentials?size gte 1><span class="required">*</span></#if></label>
                                        <input type="text" class="${properties.kcInputClass!}" id="userLabel" name="userLabel" autocomplete="off"/>
                                    </div>
                                </div>

                                <div class="d-flex justify-content-center">
                                    <button id="saveTOTPBtn" type="submit" class="btn btn-primary text-uppercase">${msg("doSubmit")}</button>
                                </div>
                                
                            </form>

                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>

<#include "footer.ftl">
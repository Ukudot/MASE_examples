<#import "template.ftl" as layout>
<#include "header.ftl">
<div class="container-fluid" style="min-height: 80svh;">
    <div class="row d-flex justify-content-center">
        <div class="col-6 p-5 h-25 rounded-3 shadow m-5">
<@layout.registrationLayout displayMessage=true; section>
    
            <#if section = "header">
                ${kcSanitize(msg("webauthn-error-title"))?no_esc}
            <#elseif section = "form">
        
                <script type="text/javascript">
                    refreshPage = () => {
                        document.getElementById('isSetRetry').value = 'retry';
                        document.getElementById('executionValue').value = '${execution}';
                        document.getElementById('kc-error-credential-form').submit();
                    }
                </script>
        
                <form id="kc-error-credential-form" class="${properties.kcFormClass!}" action="${url.loginAction}"
                      method="post">
                    <input type="hidden" id="executionValue" name="authenticationExecution"/>
                    <input type="hidden" id="isSetRetry" name="isSetRetry"/>
                </form>
                <div class="row d-flex justify-content-end">
                    <div class="col-4 d-flex justify-content-end">
                        <input tabindex="4" onclick="refreshPage()" type="button"
                               class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}"
                               name="try-again" id="kc-try-again" value="${kcSanitize(msg("doTryAgain"))?no_esc}"
                        />
                    </div>
                </div>
        
                <#if isAppInitiatedAction??>
                    <form action="${url.loginAction}" class="${properties.kcFormClass!}" id="kc-webauthn-settings-form" method="post">
                        <button type="submit"
                                class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}"
                                id="cancelWebAuthnAIA" name="cancel-aia" value="true">${msg("doCancel")}
                        </button>
                    </form>
                </#if>
        
            </#if>

            </@layout.registrationLayout>
        </div>
    </div>
</div>
<#include "footer.ftl">

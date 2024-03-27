<#include "header.ftl">

<div class="container my-4">
    <#include "custom-templates/error-messages/error-message-top.ftl">
    <div class="row">
        
        <div class="col-12">
            <div class="card-wrapper card-space">
                <div class="card card-bg">
                    <div class="card-body">
                        
                        <#include "custom-templates/client-info.ftl">
                        
                        <div class="col-12">
                            <p class="fw-bold text-uppercase">${msg("pageExpiredTitle")}</p>
                        </div>

                        <div class="col-12">
                            <p id="instruction1" class="instruction">
                                ${msg("pageExpiredMsg1")} <a id="loginRestartLink" href="${url.loginRestartFlowUrl}">${msg("doClickHere")}</a><br/>
                                ${msg("pageExpiredMsg2")} <a id="loginContinueLink" href="${url.loginAction}">${msg("doClickHere")}</a>
                            </p>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<#include "footer.ftl">
<#include "header.ftl">

<div class="container my-4">
    <#include "custom-templates/error-messages/error-message-top.ftl">
    <div class="row">
        <div class="col-12">
            <div class="card-wrapper card-space">
                <div class="card card-bg">
                    <div class="card-body">
                        <#include "custom-templates/client-info.ftl">
                        <div class="d-flex justify-content-center">
                            <p>${msg("emailVerifyInstruction2")}</p>
                        </div>

                        <div class="d-flex justify-content-center">
                            <a href="${url.loginAction}" class="btn btn-primary text-decoration-none text-uppercase" role="button">${msg("doClickHere")}</a>
                        </div>

                        <div class="d-flex justify-content-center">
                            <p>${msg("emailVerifyInstruction3")}</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>

<#include "footer.ftl">
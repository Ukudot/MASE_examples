<#include "header.ftl">

<div class="container my-4">
    <div class="row">
        <#if client?? && client.baseUrl?has_content>
        <div class="col-12 mb-3">
            <a href="${client.baseUrl}" class="go-back text-decoration-none">
                <svg class="icon icon-sm icon-primary me-2"><use href="${url.resourcesPath}/svg/sprites.svg#it-arrow-left"></use></svg>
                ${msg("doBack")?no_esc}
            </a>
        </div>
        </#if>

        <div class="col-12">
            <div class="card-wrapper card-space">
                <div class="card card-bg">
                    <div class="card-body">
                        <p>
                            ${kcSanitize(message.summary)?no_esc}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>

<#include "footer.ftl">
<div class="d-flex justify-content-center mb-3">
    <h5 class="text-uppercase">${msg("digital-identity-title")}</h5>
</div>
<#if properties.digitalIdentitySPID?boolean>
  <div class="row">
    <#include "buttons-templates/spid-template.ftl">
  </div>
</#if>
<#if properties.digitalIdentityCIE?boolean>
  <div class="row mt-4">
    <#include "buttons-templates/cie-template.ftl">
  </div>
</#if>

<#if properties.digitalIdentityEIDAS?boolean>
  <div class="row mt-4">
    <#include "buttons-templates/eidas-template.ftl">
  </div>
</#if>

<#if properties.digitalIdentityCNS?boolean>
  <div class="row mt-4">
    <#include "buttons-templates/cns-template.ftl">
  </div>
</#if>
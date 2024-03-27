<div class="d-flex justify-content-center mb-3">
    <h5 class="text-uppercase">${msg("digital-identity-title")}</h5>
</div>
<nav>
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
  <#if properties.digitalIdentitySPID?boolean>
    <a class="nav-item nav-link active" id="nav-tab1-tab" data-bs-toggle="tab" href="#nav-tab1" role="tab" aria-controls="nav-tab1" aria-selected="true">SPID</a>
  </#if>

  <#if properties.digitalIdentityCIE?boolean>
    <a class="nav-item nav-link" id="nav-tab2-tab" data-bs-toggle="tab" href="#nav-tab2" role="tab" aria-controls="nav-tab2" aria-selected="false">CIE</a>
  </#if>
  
  <#if properties.digitalIdentityEIDAS?boolean>
    <a class="nav-item nav-link" id="nav-tab3-tab" data-bs-toggle="tab" href="#nav-tab3" role="tab" aria-controls="nav-tab3" aria-selected="false">eIDAS</a>
  </#if>

  <#if properties.digitalIdentityCNS?boolean>
    <a class="nav-item nav-link" id="nav-tab4-tab" data-bs-toggle="tab" href="#nav-tab4" role="tab" aria-controls="nav-tab4" aria-selected="false">CNS</a>
  </#if>

  </div>
</nav>

<div class="tab-content" id="nav-tabContent">
  <#if properties.digitalIdentitySPID?boolean>
    <div class="tab-pane p-4 fade show active" id="nav-tab1" role="tabpanel" aria-labelledby="nav-tab1-tab">
      <#include "tabs-templates/spid-template.ftl">
    </div>
  </#if>
  
  <#if properties.digitalIdentityCIE?boolean>
    <div class="tab-pane p-4 fade" id="nav-tab2" role="tabpanel" aria-labelledby="nav-tab2-tab">
      <#include "tabs-templates/cie-template.ftl">
    </div>
  </#if>

  <#if properties.digitalIdentityEIDAS?boolean>  
    <div class="tab-pane p-4 fade" id="nav-tab3" role="tabpanel" aria-labelledby="nav-tab3-tab">
      <#include "tabs-templates/eidas-template.ftl">
    </div>
  </#if>

  <#if properties.digitalIdentityCNS?boolean>
    <div class="tab-pane p-4 fade" id="nav-tab4" role="tabpanel" aria-labelledby="nav-tab4-tab">
      <#include "tabs-templates/cns-template.ftl">
    </div>
  </#if>
</div>

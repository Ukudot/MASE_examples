<div class="col-12 mb-3">
    <#if client.name??>
    <div class="d-flex justify-content-center">
        <p class="text-uppercase">${client.name}</p>
    </div>
    </#if>
    <#if client.description??>
    <div class="d-flex justify-content-center">
        <p class="fw-light"><small>${client.description}</small></p>
    </div>
    </#if>
</div>
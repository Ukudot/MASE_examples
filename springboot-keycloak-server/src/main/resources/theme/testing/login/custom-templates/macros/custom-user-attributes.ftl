<#macro customUserAttributes>
<section class="section section-muted mb-3" aria-describedby="titleEx2">
    <div class="section-content">
        <div class="container">
            <#list properties.customAttributes?split(",") as attr>
                <#switch attr?split(':')[1]>
                    <#case "toggle">
                    <#case "checkbox">
                    <div class="form-check mb-5">
                        <div class="toggles">
                            <label for="${attr?split(':')[0]}" class="text-uppercase">
                            ${attr?split(":")[0]}
                            <input type="checkbox" id="${attr?split(':')[0]}" name="user.attributes.${attr?split(':')[0]}">
                            <span class="lever"></span>
                            </label>
                        </div>
                    </div>
                    <#break>
                    <#default>
                    <div class="form-group">
                        <label for="${attr?split(':')[0]}" class="active text-uppercase">
                            ${attr?split(":")[0]}
                        </label>
                        <input type="${(attr?split(':')[1])}" class="form-control" id="${attr?split(':')[0]}" name="user.attributes.${attr?split(':')[0]}">
                    </div>
                    <#break>
                </#switch>
            </#list>
        </div>
    </div>
</section>
</#macro>
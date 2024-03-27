<#include "../macros/internal-message-type-mapping.ftl">
<#if message??>
    <@internalMessageTypeMapping message.type/>
    <div class="row">
        <div class="col-12">
            <div class="alert alert-${internalMessageType}" role="alert">
                ${kcSanitize(message.summary)?no_esc}
            </div>
        </div>
    </div>
</#if>

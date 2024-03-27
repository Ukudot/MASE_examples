<#macro internalMessageTypeMapping messageType>
    <#switch messageType>
        <#case "success">
            <#assign internalMessageType="success">
            <#break>
        <#case "error">
            <#assign internalMessageType="danger">
            <#break>
        <#case "info">
            <#assign internalMessageType="info">
            <#break>
        <#case "warning">
            <#assign internalMessageType="warning">
            <#break>
        <#default>
            <#assign internalMessageType="info">
            <#break>
    </#switch>
</#macro>
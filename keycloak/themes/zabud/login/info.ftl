<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "background">
        <div class="${properties.zbWrapperContentUpdPass!} ${properties.zbWrapperContentInfo!}">
            <img class="${properties.zbBackgroundImageUpdPass!}" src="${url.resourcesPath}/img/backgroundRecoveryUser.svg">
        </div>
    <#elseif section = "header">
        <img class="${properties.zbImageZabud!}" src="${url.resourcesPath}/img/logo.svg">
        <h1 class="${properties.zbTitleFormLogin!}">
            <#if messageHeader??>
                ${messageHeader}
            <#else>
                ${message.summary}
            </#if>
        </h1>
    <#elseif section = "form">
    <div id="kc-info-message">
        <p class="instruction"><#if requiredActions??><#list requiredActions> <b><#items as reqActionItem>${msg("requiredAction.${reqActionItem}")}<#sep>, </#items></b></#list><#else></#if></p>
        <#if skipLink??>
        <#else>
            <#if pageRedirectUri?has_content>
                <p><a href="${pageRedirectUri}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
            <#elseif actionUri?has_content>
                <p><a href="${actionUri}">${kcSanitize(msg("proceedWithAction"))?no_esc}</a></p>
            <#elseif (client.baseUrl)?has_content>
                <p><a href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
            </#if>
        </#if>
    </div>
    </#if>
</@layout.registrationLayout>
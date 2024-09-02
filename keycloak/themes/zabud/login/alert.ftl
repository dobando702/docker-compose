<#macro alert displayMessage=true>
    <#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
        <div class="alert-${message.type} ${properties.kcAlertClass!} pf-m-<#if message.type = 'error'>danger<#else>${message.type}</#if>">
            <div class="pf-c-alert__icon">
                <#if message.type = 'success'><span class="${properties.kcFeedbackSuccessIcon!}"></span></#if>
                <#if message.type = 'warning'><span class="${properties.kcFeedbackWarningIcon!}"></span></#if>
                <#if message.type = 'error'><span class="${properties.kcFeedbackErrorIcon!}"></span></#if>
                <#if message.type = 'info'><span class="${properties.kcFeedbackInfoIcon!}"></span></#if>
            </div>
                <span class="${properties.kcAlertTitleClass!}">${kcSanitize(message.summary)?no_esc}</span>
        </div>
    </#if>
</#macro>
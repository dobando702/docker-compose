<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
    <#if section = "background">
        <div class="${properties.zbWrapperContentUpdPass!}">
            <img class="${properties.zbBackgroundImageUpdPass!}" src="${url.resourcesPath}/img/banner-update-password.svg">
        </div>
    <#elseif section = "header">
        <img class="${properties.zbImageZabud!}" src="${url.resourcesPath}/img/logo.svg">
        <h1 class="${properties.zbTitleFormLogin!}">${msg("updatePasswordTitle")}</h1>
    <#elseif section = "form">
        <p class="subtitle-form-update-password">${msg("zbInfoUpdatPassword")}</p>
        <form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <input type="text" id="username" name="username" value="${username}" autocomplete="username"
                   readonly="readonly" style="display:none;"/>
            <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>

            <div class="${properties.kcFormGroupClass!} ${properties.zbFormGroup!}">
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="password" id="password-new" name="password-new" 
                        class="${properties.kcInputClass!} ${properties.zbPfCFormControl!}"
                        autofocus autocomplete="new-password" 
                        placeholder="${msg("passwordNew")}"
                        aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
                    />
                    <img src="${url.resourcesPath}/img/lock.svg" class="${properties.zbImgPadLock!}">

                    <#if messagesPerField.existsError('password')>
                        <span id="input-error-password" class="${properties.kcInputErrorMessageClass!} ${properties.zbInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('password'))?no_esc}
                        </span>
                    </#if>
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${properties.zbFormGroup!}">
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="password" id="password-confirm" name="password-confirm"
                           class="${properties.kcInputClass!} ${properties.zbPfCFormControl!}"
                           autocomplete="new-password"
                           placeholder="${msg("passwordConfirm")}"
                           aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                    />
                    <img src="${url.resourcesPath}/img/lock.svg" class="${properties.zbImgPadLock!}">

                    <#if messagesPerField.existsError('password-confirm')>
                        <span id="input-error-password-confirm" class="${properties.kcInputErrorMessageClass!} ${properties.zbInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                        </span>
                    </#if>

                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${properties.zbFormGroup!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <#if isAppInitiatedAction??>
                            <div class="checkbox">
                                <label><input type="checkbox" id="logout-sessions" name="logout-sessions" value="on" checked> ${msg("logoutOtherSessions")}</label>
                            </div>
                        </#if>
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <#if isAppInitiatedAction??>
                        <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}" />
                        <button class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" type="submit" name="cancel-aia" value="true" />${msg("doCancel")}</button>
                    <#else>
                        <button class="${properties.zbButtonLogin!}" name="login" id="kc-login" type="submit">${msg("doSubmit")}</button>
                    </#if>
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>
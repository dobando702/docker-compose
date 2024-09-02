<#import "template.ftl" as layout>
<#import "alert.ftl" as alertMessages>
<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>
    <#if section = "background">
        <div class="${properties.zbContentClass!}">
            <div class="${properties.zbWrapperContentClass!}">
                <img class="${properties.zbScaleImage!}" src="${url.resourcesPath}/img/banner.svg">
            </div>
        </div>
    <#elseif section = "header">
        <div class="row">
            <div class="col-md-2">
                <a tabindex="6" href="${url.loginUrl}">
                    <img class="${properties.zbImageZabud!} ${properties.zbScaleImageArrow!}" src="${url.resourcesPath}/img/arrow-left.svg">
                </a>
            </div>
            <div class="col-md-10">
                <img class="${properties.zbImageZabud!}" src="${url.resourcesPath}/img/logo.svg">
            </div>
        </div>
        <h1 class="${properties.zbTitleFormLogin!}">${msg("requiredAction.UPDATE_PASSWORD")}</h1>
        <p class="subtitle-form-update-password">${msg("zbInfoPasswordUpdate")}</p>
    <#elseif section = "form">

    <@alertMessages.alert/>
    
    <div id="kc-form" <#if realm.password && social.providers??>class="${properties.kcContentWrapperClass!}"</#if>>
      <div id="kc-form-wrapper" <#if realm.password && social.providers??>class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}"</#if>>
        <#if realm.password>
            <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                <div class="${properties.kcFormGroupClass!}" data-tip="${msg("zbLoginInputMsjToolTip")}">
                    <input tabindex="1" id="username" class="${properties.kcInputClass!} ${properties.zbPfCFormControl!}" name="username" placeholder="${msg("user")}" value="${(login.username!'')}"  type="text" autofocus autocomplete="off" />
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormGroupClass!}">
                    <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                    <button class="${properties.zbButtonLogin!}" name="login" id="kc-login" type="submit">${msg("doSend")}</button>
                </div>
            </form>
        </#if>
        </div>
        <#if realm.password && social.providers??>
            <div id="kc-social-providers" class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}">
                <ul class="${properties.kcFormSocialAccountListClass!} <#if social.providers?size gt 4>${properties.kcFormSocialAccountDoubleListClass!}</#if>">
                    <#list social.providers as p>
                        <li class="${properties.kcFormSocialAccountListLinkClass!}"><a href="${p.loginUrl}" id="zocial-${p.alias}" class="zocial ${p.providerId}"> <span>${p.displayName}</span></a></li>
                    </#list>
                </ul>
            </div>
        </#if>
      </div>
    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed && !registrationDisabled??>
            <div id="kc-registration">
                <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
            </div>
        </#if>
    </#if>

</@layout.registrationLayout>

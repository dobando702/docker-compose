<#import "zb-template.ftl" as zbTemplate>
<#outputformat "plainText">
    <#assign requiredActionsText>
        <#if requiredActions??>
            <#list requiredActions>
                <#items as reqActionItem>
                    ${msg("requiredAction.${reqActionItem}")}
                    <#sep>, </#sep>
                </#items>
            </#list>
        </#if>
    </#assign>
</#outputformat>

<#assign attributes = user.getAttributes()>
<#assign realNameLowerCase = realmName?lower_case>

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:o="urn:schemas-microsoft-com:office:office"
    xmlns:v="urn:schemas-microsoft-com:vml">
    
    <head>
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
        <meta content="width=device-width" name="viewport" />
        <meta content="IE=edge" http-equiv="X-UA-Compatible" />

        <!-- Style -->
        <@zbTemplate.zbStyle/>

    </head>

    <body class="clean-body" style="margin: 0; padding: 0; -webkit-text-size-adjust: 100%; background-color: #f8f8f9;">
        <table bgcolor="#f8f8f9" cellpadding="0" cellspacing="0" class="nl-container" role="presentation"
            style="table-layout: fixed; vertical-align: top; min-width: 320px; Margin: 0 auto; border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #f8f8f9; width: 100%;"
            valign="top" width="100%">
            <tbody>
                <tr style="vertical-align: top;" valign="top">
                    <td style="word-break: break-word; vertical-align: top;" valign="top">

                    <!-- Topline -->
                    <@zbTemplate.zbTopline/>

                    <!-- Top Whitespace -->
                    <@zbTemplate.zbTopWhitespace/>
                    
                    <!-- Image Header -->
                    <@zbTemplate.zbImageHeader tenant=realNameLowerCase/>

                        <!-- Body -->
                        <div style="background-color:transparent;">
                            <div class="block-grid"
                                style="Margin: 0 auto; min-width: 320px; max-width: 640px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;">
                                <div style="border-collapse: collapse;display: table;width: 100%;background-color:#ffffff;">
                                    <div class="col num12"
                                        style="min-width: 320px; max-width: 640px; display: table-cell; vertical-align: top; width: 580px;">
                                        <div style="width:100% !important;">
                                            <div
                                                style="border-top:0px solid transparent; border-left:30px solid #FFFFFF; border-bottom:0px solid transparent; border-right:30px solid #FFFFFF; padding-top:0px; padding-bottom:0px; padding-right: 0px; padding-left: 0px;">
                                                
                                                <!-- Top line body -->
                                                <@zbTemplate.zbBodyTopLineBody/>

                                                <!-- Email content -->
                                                <@zbTemplate.zbBodyEmailContentDefault full_name="${user.firstName} ${user.lastName}" user_login=user.username url=link expiration=linkExpiration/>
                                                <!--
                                                <#if requiredActions??>
                                                    <@zbTemplate.zbBodyEmailContent actions=requiredActions/>
                                                </#if>
                                                -->

                                                <!--html>
                                                    <body>
                                                        ${kcSanitize(msg("executeActionsBodyHtml",link, linkExpiration, realmName, requiredActionsText, linkExpirationFormatter(linkExpiration)))?no_esc}
                                                    </body>
                                                </html-->

                                                <!-- bottom line body -->
                                                <@zbTemplate.zbBodyBottomLineBody/>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    <!-- Footer -->
                    <@zbTemplate.zbFooter tenant=realNameLowerCase/>

                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>

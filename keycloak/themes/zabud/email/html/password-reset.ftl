<#import "zb-template.ftl" as zbTemplate>
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
                                                <@zbBodyEmailContentDefault full_name="${user.firstName} ${user.lastName}" user_login=user.username url=link expiration=linkExpiration/>

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
<!--body>
${kcSanitize(msg("passwordResetBodyHtml",link, linkExpiration, realmName, linkExpirationFormatter(linkExpiration)))?no_esc}
</body-->
</html>


<#macro zbBodyEmailContentDefault full_name="" user_login="" url="" expiration="">
    <!-- Email content -->
    <div
        style="color:#555555;font-family:Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif;line-height:1.5;padding-top:50px;padding-right:30px;padding-bottom:55px;padding-left:30px;">
        <div
            style="line-height: 1.5; font-size: 12px; font-family: Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif; color: #555555; mso-line-height-alt: 18px;">
            <p
                style="font-size: 15px; line-height: 1.5; word-break: break-word; text-align: left; font-family: Roboto, Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif; mso-line-height-alt: 23px; margin: 0;">
                <span style="color: #2C2C2C; font-size: 20px;">
                    ${kcSanitize(msg("zbTemplate_ResetPassword_name", full_name))?no_esc}                         
                </span>
                <br/><br/>
                <span style="color: #2C2C2C; font-size: 20px;">
                    ${kcSanitize(msg("zbTemplate_ResetPassword_content"))?no_esc}
                </span>
                <br/><br/>
                <span style="color: #2C2C2C; font-size: 20px;">
                    ${kcSanitize(msg("zbTemplate_ResetPassword_url", url))?no_esc}
                </span>
                <br/><br/>
                <span style="color: #2C2C2C; font-size: 20px;">
                    ${kcSanitize(msg("zbTemplate_EmailContentDefault_footer", linkExpirationFormatter(expiration)))?no_esc}
                </span>
                <table border="0" cellpadding="0" cellspacing="0" class="divider" role="presentation"
                    style="table-layout: fixed; vertical-align: top; border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; min-width: 100%; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;"
                    valign="top" width="100%">
                    <tbody>
                        <tr style="vertical-align: top;" valign="top">
                            <td class="divider_inner"
                                style="word-break: break-word; vertical-align: top; min-width: 100%; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; padding-top: 20px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px;"
                                valign="top">
                                <table align="center" border="0" cellpadding="0" cellspacing="0" class="divider_content"
                                    role="presentation"
                                    style="table-layout: fixed; vertical-align: top; border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; border-top: 0px solid #BBBBBB; width: 100%;"
                                    valign="top" width="100%">
                                    <tbody>
                                        <tr style="vertical-align: top;" valign="top">
                                            <td
                                                style="word-break: break-word; vertical-align: top; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;"
                                                valign="top"><span></span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </p>
        </div>
    </div>
</#macro>
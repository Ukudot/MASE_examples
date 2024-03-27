<#macro logoutOtherSessions>
<div class="container-fluid p-0">
    <div class="row">
        <div class="col-6">
            <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                <div class="${properties.kcFormOptionsWrapperClass!}">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" id="logout-sessions" name="logout-sessions" value="on" checked>
                            ${msg("logoutOtherSessions")}
                        </label>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</#macro>
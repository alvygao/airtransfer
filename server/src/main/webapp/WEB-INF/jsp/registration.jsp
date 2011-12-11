<div id="cDialogForm" class="cRegistration cDialogForm">
    <form action="${appBaseUrl}/html/registration" method="POST">
        <div>
            <label for="cEmail">${i18n['label.registration.form.emailTitle']}</label>
            <input id="cEmail" type="text" name="email">
        </div>
        <div>
            <label for="cPasswoed">${i18n['label.registration.form.password']}</label>
            <input id="cPasswoed" type="password" name="password" />
        </div>
        <div>
            <label for="cRepeatPassword">${i18n['label.registration.form.password_repeat']}</label>
            <input id="cRepeatPassword" type="password" name="password_repeat" />
        </div>
        <div>
            <a href="" class="cSubmit">${i18n['label.registration.form.submit_btn']}</a>
        </div>
    </form>
</div>
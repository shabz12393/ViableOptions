
var passwordMinLength = 8;
function GetPasswordStrength(password) {
    var result = 0;
    if (password) {
        result++;
        if (password.length >= passwordMinLength) {
            if (/[a-z]/.test(password))
                result++;
            if (/[A-Z]/.test(password))
                result++;
            if (/\d/.test(password))
                result++;
            if (!(/^[a-z0-9]+$/i.test(password)))
                result++;
        }
    }
    return result;
}
function ApplyPasswordStrength(value) {
    password_rc.SetValue(value);
    switch (value) {
        case 0:
            rating_lbl.SetValue("Password safety");
            break;
        case 2:
            rating_lbl.SetValue("Too simple");
            break;
        case 4:
            rating_lbl.SetValue("Normal");
            break;
        case 6:
            rating_lbl.SetValue("Safe");
            break;
        case 8:
            rating_lbl.SetValue("Very safe");
            break;
        default:
            rating_lbl.SetValue("Password safety");
    }
}
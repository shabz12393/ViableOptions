function onImageClick(s, e) {
    pcAccount.ShowAtElementByID("popupZone");
}

function onFormCallback(s, e) {
    lpForm.Hide();
    if (s.cpMessage) {
        alert(s.cpMessage);
        delete s.cpMessage;
    }
}

function onCallback(s, e) {
    lpForm.Hide();
    if (s.cpMessage) {
        alert(s.cpMessage);
        grid.Refresh();
        delete s.cpMessage;
    }
}

function onEndCallback(s, e) {
    if (s.cpMessage) {
        alert(s.cpMessage);
        delete s.cpMessage;
    }
}

function onUserCallback(s, e) {
    if (s.cpDelete) {
        alert(s.cpDelete);
        delete s.cpDelete;
    }
}
function onSelectedIndex(s, e) {
    s.SetSelectedIndex(0);
}

function onSubmit(s, e) {
    if (ASPxClientEdit.ValidateEditorsInContainer(null)) {
        lpForm.Show();
        cpForm.PerformCallback();
    }
}
function onDepositCallback(s, e) {
    if (s.cpMessage) {
        alert(s.cpMessage);
        delete s.cpMessage;
    }
    else if (s.cpDeposit) {
        location.reload();
        delete s.cpMessage;
    }
}
/* Add Item*/
function addItem(s, e) {
    if (ASPxClientEdit.ValidateEditorsInContainer(null)) {
        var item = tbItem.GetText();
        var category = cbCategory.GetText();
        var price = sePrice.GetValue();
        var order_level = seOrderLevel.GetValue();
        var stock = seStock.GetValue();
        var confirmOrder = 'Confirm Information:';
        var orderDetails = 'Item Details: ' +
		'\n Item: ' + item +
		'\n category: ' + category +
		'\n Price: ' + price +
		'\n re-order-level: ' + order_level +
         '\n stock: ' + stock +
		 "\n " + confirmOrder;
        if (confirm(orderDetails)) {
            lpForm.Show();
            cpForm.PerformCallback();
        }
    }
}

function onSubmitPayment(s, e) {
    if (ASPxClientEdit.ValidateEditorsInContainer(null)) {
        var confirm_payment = 'Confirm Payment:';
        var deposit = deposit_se.GetNumber();
        var cash = cash_se.GetNumber();
        var balance = cash - deposit;
        var payment_mode = payment_mode_cb.GetText();

        var payment_details = 'Payment Details: ' + '\n Deposit: ' + deposit + '\n Balance: ' + balance + '\n Payment Mode: ' + payment_mode
             + '\n' + confirm_payment;
        if (confirm(payment_details)) {
            booking_charges_cp.PerformCallback();
        }
    }
}

function onBookingChargesCallback(s, e) {
    if (s.cpMessage) {
        alert(s.cpMessage);
        booking_charges_gv.Refresh();
        customer_payments_gv.Refresh();
        delete s.cpMessage;
    }
}

function onChangePassword(s, e) {
    cpChange.PerformCallback();
}

function onPasswordCallback(s, e) {
    if (s.cpUpdate) {
        alert(s.cpUpdate);
        pcAccount.Hide();
        delete s.cpUpdate;
    } else if (s.cpError) {
        alert(s.cpError);
        delete s.cpError;
    }
}

function updatePassword(s, e) {
    cpPassword.PerformCallback();
}

/*Sets Popup Control*/
function OnPopupInit(s, e) {
    SetPopup(s,e);
    window.onresize = SetPopup(s,e);
}
/* Sets Popup control width and height*/
function SetPopup(s, e) {
    var browserHeight = $(window).height();
    var browserWidth = $(window).width();
    s.SetHeight(browserHeight);
    s.SetWidth(browserWidth);
}
/* Refreshes gridview onpopup close*/
function refresh(s, e) {
   grid.Refresh();
}
/*Callback Panell Callback*/
function callback(s, e) {
    cpNew.PerformCallback();
}
/*New Row*/
function gridCallback(s, e) {
    grid.PerformCallback();
}

function OnPageInit(s, e) {
    AdjustSize(s,e);
    ASPxClientUtils.AttachEventToElement(window, "resize", function (evt) {
        AdjustSize(s,e);
    });
}
function AdjustSize(s,e) {
    var height = document.documentElement.clientHeight;
    s.SetHeight(height);
}

function OnRedirect(s, e) {
    s.PerformCallback('redirect|' + e.visibleIndex);
}



function Record_Payment(s, e) {
    if (ASPxClientEdit.ValidateEditorsInContainer(null)) {
        var confirm_payment = 'Confirm Payment:';
        var cash = seCash.GetNumber();
        var discount = seDiscount.GetNumber();
        var payt_mode = cbPaymentMode.GetText();
        var notes = mNotes.GetText();
        var receipt_no = tbReceipt.GetText();

        var payment_details = 'Payment Details: '
            + '\n Cash: ' + cash
            + '\n Discount: ' + discount
            + '\n Payment Mode: ' +payt_mode
            + '\n Notes: ' + notes
            + '\n Receipt No: ' + receipt_no
             + '\n' + confirm_payment;
        if (confirm(payment_details)) {
            lpForm.Show();
            cpPayment.PerformCallback();
        }
    }
}
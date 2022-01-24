/*
Callbacks
*/

function onFormCallback(s, e) {
    lpForm.Hide();
    if (s.cpMessage) {
        alert(s.cpMessage);
        delete s.cpMessage;
    }
}
function onBookItemCallback(s, e) {
    lpForm.Hide();
    if (s.cpSubmit) {
        window.parent.pcItems.Hide();
        window.parent.popup.Hide();
        delete s.cpSubmit;
    } else if (s.cpMessage) {
        alert(s.cpMessage);
        gvItems.Refresh();
        delete s.cpMessage;
    }
}
function onPaymentCallback(s, e) {
    lpForm.Hide();
    if (s.cpMessage) {
        window.parent.cpReceipt.PerformCallback();
        delete s.cpMessage;
    } else if (s.cpDenied) {
        alert(s.cpDenied);
        delete s.cpDenied;
    }
}

function onItemChanged(s, e) {
    cbPrice.PerformCallback();
    cbStock.PerformCallback();
}

function onBookingCallback(s, e) {
    lpForm.Hide();
    if (s.cpMessage) {
        alert(s.cpMessage);
        delete s.cpMessage;
    } else if (s.cpSubmit) {
        window.parent.cpItems.PerformCallback();
        delete s.cpSubmit;
    } else {
        gvItems.Refresh();
        cbStock.PerformCallback();
    }
}


function onSelectedIndex(s, e) {
    s.SetSelectedIndex(0);
}

function onSubmit(s, e) {
    if (ASPxClientEdit.ValidateEditorsInContainer(null)) {
        lpForm.Show();
        cpForm.PerformCallback();
    } else if (ASPxClientEdit.ValidateGroup('itemGrp')) {
        lpForm.Show();
        cpForm.PerformCallback();
    }
}


function submit(s, e) {
    lpForm.Show();
    cpForm.PerformCallback();
}


function onEndCallback(s, e) {
    if (s.cpMessage) {
        alert(s.cpMessage);
        delete s.cpMessage;
    }
}

function onSaleCallback(s, e) {
    lpForm.Hide();
    if (s.cpMessage) {
        alert(s.cpMessage);
        delete s.cpMessage;
    } else if (s.cpSubmit) {
        window.parent.cpPayment.PerformCallback();
        delete s.cpSubmit;
    } else {
        gvItems.Refresh();
        cbStock.PerformCallback();
    }
}
/*Check time difference*/
function checkTime(s, e) {
    sDate = new Date();
    sDate.setHours(teFrom.GetDate().getHours(), teFrom.GetDate().getMinutes(), teFrom.GetDate().getSeconds());

    eDate = new Date();
    eDate.setHours(teTo.GetDate().getHours(), teTo.GetDate().getMinutes(), teTo.GetDate().getSeconds());

    if (sDate > eDate) {
        alert("Start time should be less than End Time");
    }
}

/*
\Submit
*/

function onOverridePrice(s, e) {
    if (s.GetChecked()) {
        sePrice.SetVisible(true);
        cbPrice.SetVisible(false);
    }
    else {
        sePrice.SetVisible(false);
        cbPrice.SetVisible(true);
    }
}

function calculateAmount(s, e) {
    var price;
    if (cbOverride.GetChecked()) {
        price = sePrice.GetValue();
    } else {
        price = cbPrice.GetText();
    }
    var qty = seQty.GetNumber();
    var amount = price * qty;
    cbAmount.SetText(amount);
}



function addEventItem(s, e) {
    if (ASPxClientEdit.ValidateEditorsInContainer(null)) {
        var item = cbItem.GetText();
        var qty = seQty.GetValue();
        var price;
        if (cbOverride.GetChecked()) {
            price = sePrice.GetValue();
        } else {
            price = cbPrice.GetText();
        }
        var amount = price * qty;
        var confirmOrder = 'Confirm Transaction:';
        var orderDetails = 'Cart Details: '
		+ '\n Item: ' + item
		+ '\n Price: ' + price
		+ '\n Quantity: ' + qty
		+ '\n Amount: ' + amount + "\n"
		+ confirmOrder;
        if (confirm(orderDetails)) {
            lpForm.Show();
            cpForm.PerformCallback('Add');
        }
    }
}

function closeSale() {
    window.parent.pcNew.Hide();
}

function onSubmitPayment(s, e) {
    if (ASPxClientEdit.ValidateEditorsInContainer(null)) {
        var confirm_payment = 'Confirm Payment:';
        var deposit = seDeposit.GetNumber();
        var amount = seCash.GetNumber();
        var balance = amount - deposit;
        var discount = seDiscount.GetNumber();
        var payment_mode = cbPaymentMode.GetText();

        var payment_details = 'Payment Details: ' + '\n Deposit: ' + deposit + '\n Discount: ' + discount + '\n Balance: ' + balance + '\n Payment Mode: ' + payment_mode
             + '\n' + confirm_payment;
        if (confirm(payment_details)) {
            lpForm.Show();
            cpForm.PerformCallback();
        }
    }
}






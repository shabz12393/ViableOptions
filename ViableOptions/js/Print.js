﻿function Print() {
    var dvReport = document.getElementById("dvReport");
    var frame1 = dvReport.getElementsByTagName("iframe")[0];
    if (navigator.appName.indexOf("Chrome") != -1) {
        frame1.name = frame1.id;
        window.frames[frame1.id].focus();
        window.frames[frame1.id].print();
    }
    else {
        var frameDoc = frame1.contentWindow ? frame1.contentWindow : frame1.contentDocument.document ? frame1.contentDocument.document : frame1.contentDocument;
        frameDoc.print();
    }
}
function ValidateForm() {

    if (document.getElementById('Txtname').value == "") {
            alert("Please Enter Ptient's Name");
        document.getElementById('Txtname').focus();
            return false;

    }
    if (document.getElementById('Txtage').value == "") {
        alert("Please Enter Ptient's Age");
        document.getElementById('Txtage').focus();
        return false;

    }
    var str20 = document.getElementById('Txtage').value;

    if (isNaN(str20)) {
        alert("Invalid Patient Age. Must be a number value");
        document.getElementById('Txtage').focus();
        return false;
    }

    if (document.getElementById('Txtloc').value == "") {
        alert("Please Enter Patient's Location");
        document.getElementById('Txtloc').focus();
        return false;

    }



}

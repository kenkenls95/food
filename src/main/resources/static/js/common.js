function openPopup(url, windowName, height, width) {
    newwindow = window.open(url, windowName, 'height=' + height + ',width=' + width);
    if (window.focus) {
        newwindow.focus()
    }
    return false;
}

function validate(id) {
    var texts = document.querySelectorAll('#' + id + ' input[type=text]');
    var selects = document.querySelectorAll('#' + id + ' select');
    var files = document.querySelectorAll('#' + id + ' input[type=file]');

    for (let i = 0; i < texts.length; i++) {
        var text = texts[i];
        if (!text.value && text.id) {
            alert(text.placeholder + ' không được để trống');
            text.focus();
            return false;
        }
    }
    for (let i = 0; i < selects.length; i++) {
        var select = selects[i];
        if (!select.value) {
            alert(select.getAttribute('tag') + ' không được để trống');
            select.focus();
            return false;
        }
    }
    for (let i = 0; i < files.length; i++) {
        var file = files[i];
        if (!file.files.length) {
            alert('File không được để trống');
            file.focus();
            return false;
        }
        // for (let j = 0; j < file.files.length; j++) {
        //     var f = file.files[i];
        //     if(['png', 'img'].indexOf(f.name.split('.').pop()) == -1){
        //         alert('File không hỗ trợ định dạng');
        //         return false;
        //     }
        // }
    }
    return true;
}

function uploadFile(e, id) {
    let files = e.files;
    if (!files.length) return;
    let formData = new FormData();
    // formData.append('file', [...files]);
    $.each(files, function (i, file) {
        formData.append('file', file);
    });
    console.log(formData);
    axios.post("/api/upload", formData, {
        headers: {
            'Content-Type': 'multipart/form-data'
        }
    }).then(function (res) {
        $('#' + id + '').val(res.data.link);
    }, function (err) {
    })
}

function formatMoney(amount, decimalCount = 2, decimal = ".", thousands = ",") {
    try {
        decimalCount = Math.abs(decimalCount);
        decimalCount = isNaN(decimalCount) ? 2 : decimalCount;

        const negativeSign = amount < 0 ? "-" : "";

        let i = parseInt(amount = Math.abs(Number(amount) || 0).toFixed(decimalCount)).toString();
        let j = (i.length > 3) ? i.length % 3 : 0;

        return negativeSign + (j ? i.substr(0, j) + thousands : '') + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + thousands) + (decimalCount ? decimal + Math.abs(amount - i).toFixed(decimalCount).slice(2) : "");
    } catch (e) {
        console.log(e)
    }
};

var listPrice = document.querySelectorAll(".fPrice");
listPrice.forEach(function(e,i){
    var price = formatMoney(e.innerText);
    e.innerText = "đ" + price;
})

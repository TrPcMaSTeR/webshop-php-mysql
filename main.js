function includeHTML() {
    var i, xhttp;
    /*search for elements with a certain atrribute:*/
    let elements = document.querySelectorAll('[include-html]');
    for (i = 0; i < elements.length; i++) {
        let singleElement = elements[i];
        if (singleElement) {
            /* Make an HTTP request using the attribute value as the file name: */
            xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function () {
                if (this.readyState == 4) {
                    if (this.status == 200) {
                        var doc = new DOMParser().parseFromString(
                            this.responseText,
                            'text/html'
                        );
                        singleElement.after(doc.body.firstChild);
                        singleElement.remove();
                    }
                    if (this.status == 404) {
                        singleElement.innerHTML = 'Page not found.';
                    }
                    /* Remove the attribute, and call this function once more: */
                    singleElement.removeAttribute('include-html');
                    includeHTML();
                }
            };
            xhttp.open('GET', singleElement.getAttribute('include-html'), true);
            xhttp.send();
            /* Exit the function: */
            return;
        }
    }
}

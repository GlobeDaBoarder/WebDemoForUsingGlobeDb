(function () {
    const formElement = document.getElementById("form");

    formElement.addEventListener('submit', function (event) {
        if (!formElement.checkValidity()) {
            event.preventDefault()
            event.stopImmediatePropagation()
        }
        else {
            const username = document.getElementById("username").value;
            const password = document.getElementById("password").value;
            const json = JSON.stringify({username: username, password: password})
            self.postMessage(json);
        }

        formElement.classList.add('was-validated')
    });
})()
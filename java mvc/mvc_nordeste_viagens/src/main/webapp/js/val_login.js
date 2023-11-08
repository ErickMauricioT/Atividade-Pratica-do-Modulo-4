function validar_log() {
    var email = document.getElementById("inputEmail").value;
    var senha = document.getElementById("inputPassword").value;


    if (email === "" || senha === "") {
        alert("Por favor, preencha todos os campos.");
        return false;
    }
}
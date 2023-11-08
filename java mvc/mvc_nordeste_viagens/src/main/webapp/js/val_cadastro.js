function validar_cad() {
    var name = document.getElementById("nome").value;
    var bornDate = document.getElementById("bornDate").value;
    var email = document.getElementById("email").value;
    var cpf = document.getElementById("cpf").value;
    var tel = document.getElementById("tel").value;
    var adress = document.getElementById("adress").value;
    


    if (nome === "" || bornDate === "" || email === "" || cpf === "" || tel === "" || adress === "") {
        alert("Por favor, preencha todos os campos.");
        return false;
    }
}
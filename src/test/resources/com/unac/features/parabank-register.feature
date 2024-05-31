Feature: Registrarse en parabank y verificar el registro
  Yo como usuario
  Necesito registrarme en la página parabank
  Para validar que el registro fue exitoso

  Scenario: Registrarse en parabank
    Given Deseo abrir la pagina parabank "https://parabank.parasoft.com/"
    When ingreso a la opcion de Register
    When ingreso los siguientes datos para mi registro: First Name: "Javier", Last Name: "Jaramillo", Address: "1020 Principal", City: "Cali", State: "Valle", Zip Code: "0055", Phone: "432-234-5050", SSN: "321-99-0099", Username: "jajavier", Password: "javier123", Confirm: "javier123"
    When presiono el boton Open New Account y en el select escogemos "SAVINGS"
    When luego presiono el boton Open New Account
    When guardo el numero Your new account number
    Then valido que la cuenta exista en la opcion de Accounts Overview

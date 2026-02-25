typedef ValidationResult = ({bool isValid, String message});



ValidationResult passwordValidation(String password){
  if(password.length < 8){
    return (isValid: false, message: 'password precisa ter pelo menos 8 caracteres');
  }

  if(!RegExp(r'[A-Z]').hasMatch(password)){
    return (isValid: false, message: 'password precisa ter pelo menos 1 caractere maiusculo');

  }

  if(!RegExp(r'[0-9]').hasMatch(password)){
    return (isValid: false, message: 'password precisa ter pelo menos 1 número');

  }

return (
 isValid: true,
 message: 'password válido');


}

void main(){
  ValidationResult result = passwordValidation('passsssssssssssS124');
  print('Is valid : ${result.isValid}, message: ${result.message} ');
}

import 'dart:async';

mixin Validator_shop_details{
  var shop_name_validator = StreamTransformer<String, String>.fromHandlers(
      handleData: (shop_name, sink){
        if(shop_name.toUpperCase()== true){
          sink.add(shop_name);
        }else{
          sink.addError('Shop name shold be in Uppercase letter');
        }
      }
  );

  var shop_email_validator = StreamTransformer<String, String>.fromHandlers(
      handleData: (shoper_email, sink){
        if(shoper_email.contains("@")){
          sink.add(shoper_email);
        }else{
          sink.addError('enter a correct email');
        }
      }
  );

  var Shop_panno_validator = StreamTransformer<String, String>.fromHandlers(
      handleData: (shop_panno, sink){
        if(shop_panno.length >= 6){
          sink.add(shop_panno);
        }else{
          sink.addError('Enter a valid Number');
        }
      }
  );
  var shop_phoneno_validator = StreamTransformer<String, String>.fromHandlers(
      handleData: (shop_phoneno, sink){
        if(shop_phoneno.length == 8 || shop_phoneno.length == 10){
          sink.add(shop_phoneno);
        }else{
          sink.addError('Enter a valid Number');
        }
      }
  );
  var shop_owner_validator = StreamTransformer<String, String>.fromHandlers(
      handleData: (shop_owner, sink){
        if(shop_owner != null){
          sink.add(shop_owner);
        }else{
          sink.addError('Enter a Name');
        }
      }
  );
  var shop_type_validator = StreamTransformer<String, String>.fromHandlers(
      handleData: (shop_type, sink){
        if(shop_type != null){
          sink.add(shop_type);
        }else{
          sink.addError('Enter a Type');
        }
      }
  );
}
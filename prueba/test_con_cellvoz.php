<?php


$curl = curl_init();
$data= file_get_contents("php://input");
$datos=json_decode($data);


$mandar['account']=$datos->{"Cell_user_voz"};
$mandar['password']=$datos->{"Cell_pass_voz"};
$mensaje= json_encode($mandar);


curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.cellvoz.co/v2/auth/login',
  CURLOPT_SSL_VERIFYHOST=>0,
  CURLOPT_SSL_VERIFYPEER=>0,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS => $mensaje,
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json'
  )
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;

?>
<?php
class Validar_cell  {

    public function Validar_cellvoz($datos = array())
    {
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://api.cellvoz.co/v2/auth/login', /**Cuando ya este fuera de produccion cambiar el .co por .com**/ 
            CURLOPT_SSL_VERIFYHOST=>0,
            CURLOPT_SSL_VERIFYPEER=>0,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => $datos,
            CURLOPT_HTTPHEADER => array(
              'Content-Type: application/json'
            )
          ));
        
          $respon = curl_exec($curl);
          echo $respon;
          $response=json_decode($respon);
          curl_close($curl);

        return $response;
    }
}
   
?>
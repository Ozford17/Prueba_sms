<?php
    
    
    class mensaje {


        public function pasarela_validacion_solo($datos=array()){
            
            $code=0;
            $resp=0;
            $toNumber=$datos["number"];
            while($code==0)
            {  
                $respuesta= $this->enviar_mensaje_solo($datos);
                if($respuesta["Code"]==403)
				{
					require_once './src/consultas.php';
					$consultas= new consultas();
					$respu=$consultas->Mostrar_sms_cellvoz_id($_SESSION['user_id']);
					if($fila=mysqli_fetch_assoc($respu))
					{
                        $Api_key=$fila['cell_akey_voz'];
						$mandar['account']=$fila['cell_user_voz'];
						$mandar['password']=base64_decode($fila['cell_pass_voz']);
						$mensaje= json_encode($mandar);
						/****************Pedir nuevo token ****************/
						require_once './validate_cellvoz.php'; 
						$validar_cell = new Validar_cell(); 
						$response =$validar_cell->Validar_cellvoz($mensaje);
						if($response->{"token"}){ /**Si devuelve el token**/
							$user=$mandar['account'];
							$password=base64_encode($mandar['password']);
							$token=base64_encode($response->{'token'});
							$Apikey =$Api_key;
							$pasarela=$fila['sms_gateway'];
							$id=$_SESSION['user_id'];
							require_once './src/consultas.php';
							$consultas= new consultas();
							$consultas->update_sms_cellvoz($id,$pasarela,$user,$password,$token,$Apikey);
						}
						else{
                            $code=1;
							$resp=403;
						}
					}
                    else{
                        
                        $code=1;
                        $resp=1;
                    }
				}
                else{
                    $res=json_decode($respuesta["response"]);
					if($res->{"success"})
					{
						$_SESSION['message_status'] = 1;
						$_SESSION['message'] = 'Success! message sent to '.DBout($toNumber).' subscriber.';
                        $code=1;
						$resp=200;
					}
					else{
						$_SESSION['message_status'] = 0;
						$_SESSION['message'] ="CODE: 500 ".$res->{"message"};
                        $code=1;
						$resp=500;
					}
                }
                

            }
            return $resp;
        }

        public function enviar_mensaje_solo($datos = array()){
            require_once './src/consultas.php';
            $consultas= new consultas();
            $datos["type"]=1;
            $data=json_encode($datos);
            var_dump($datos);
            $resp=$consultas->Mostrar_sms_cellvoz_id($_SESSION['user_id']);
            if($fila=mysqli_fetch_array($resp))
            {
                $curl = curl_init();
                $autho=array(
                    'Content-Type: application/json',
                    'Api-key: 644ebc55dfd99cca669ad6f9ded1cbe445bb8a73',
                    'Authorization: Bearer '.base64_decode($fila["cell_TOK_voz"]));
                
                curl_setopt_array($curl, array(
                  CURLOPT_URL => 'https://api.cellvoz.co/v2/sms/single',
                  CURLOPT_SSL_VERIFYHOST=>0,
				  CURLOPT_SSL_VERIFYPEER=>0,
                  CURLOPT_RETURNTRANSFER => true,
                  CURLOPT_ENCODING => '',
                  CURLOPT_MAXREDIRS => 10,
                  CURLOPT_TIMEOUT => 0,
                  CURLOPT_FOLLOWLOCATION => true,
                  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                  CURLOPT_CUSTOMREQUEST => 'POST',
                  CURLOPT_POSTFIELDS =>$data,
                  CURLOPT_HTTPHEADER => $autho
                ));

                

                $response = curl_exec($curl);
                var_dump($response);

                $resultado["response"]=$response;
                $result=json_decode($response);
                if($result->{"message"}=="Error en la autenticacion : EXPIRED")
                {
                    $resultado['Code']=403;    
                }
                else
                {
                    $resultado['Code']=curl_getinfo($curl)["http_code"];
                }
                
                
                curl_close($curl);
                return $resultado;
            }  
            

        }

        public function pasarela_validacion_masivo($datos=array()){
            $code=0;
            $resp=0;
            //var_dump($datos);
            while($code==0)
            {  
                $respuesta= $this->enviar_mensaje_masivos($datos);
                var_dump($respuesta);
                if($respuesta["Code"]==403)
				{
					require_once './src/consultas.php';
					$consultas= new consultas();
					$respu=$consultas->Mostrar_sms_cellvoz_id($_SESSION['user_id']);
					if($fila=mysqli_fetch_assoc($respu))
					{
                        $Api_key=$fila['cell_akey_voz'];
						$mandar['account']=$fila['cell_user_voz'];
						$mandar['password']=base64_decode($fila['cell_pass_voz']);
						$mensaje= json_encode($mandar);
						/****************Pedir nuevo token ****************/
						require_once './validate_cellvoz.php'; 
						$validar_cell = new Validar_cell(); 
						$response =$validar_cell->Validar_cellvoz($mensaje);
						if($response->{"token"}){ /**Si devuelve el token**/
							$user=$mandar['account'];
							$password=base64_encode($mandar['password']);
							$token=base64_encode($response->{'token'});
							$Apikey =$Api_key;
							$pasarela=$fila['sms_gateway'];
							$id=$_SESSION['user_id'];
							require_once './src/consultas.php';
							$consultas= new consultas();
							$consultas->update_sms_cellvoz($id,$pasarela,$user,$password,$token,$Apikey);
						}
						else{
                            $code=1;
							$resp=403;
						}
					}
                    else{
                        
                        $code=1;
                        $resp=1;
                    }
				}
                else{
                    $res=json_decode($respuesta["response"]);
					if($res->{"success"})
					{
						$_SESSION['message_status'] = 1;
						$_SESSION['message'] = 'Success! message sent to all subscriber.';
                        $code=1;
						$resp=200;
					}
					else{
						$_SESSION['message_status'] = 0;
						$_SESSION['message'] ="CODE: 500 ".$res->{"message"};
                        $code=1;
						$resp=500;
					}
                }
                

            }
            return $resp;
        }

        public function enviar_mensaje_masivos($datos =array()){
            require_once './src/consultas.php';
            $consultas= new consultas();
            $data=json_encode($datos);
            
            $resp=$consultas->Mostrar_sms_cellvoz_id($_SESSION['user_id']);
            if($fila=mysqli_fetch_array($resp))
            {
                $curl = curl_init();
                
                $autho=array(
                    'Content-Type: application/json',
                    'Api-key: 644ebc55dfd99cca669ad6f9ded1cbe445bb8a73',
                    'Authorization: Bearer '.base64_decode($fila["cell_TOK_voz"]));
                
                curl_setopt_array($curl, array(
                  CURLOPT_URL => 'https://api.cellvoz.co/v2/sms/multiple',
                  CURLOPT_SSL_VERIFYHOST=>0,
				  CURLOPT_SSL_VERIFYPEER=>0,
                  CURLOPT_RETURNTRANSFER => true,
                  CURLOPT_ENCODING => '',
                  CURLOPT_MAXREDIRS => 10,
                  CURLOPT_TIMEOUT => 0,
                  CURLOPT_FOLLOWLOCATION => true,
                  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                  CURLOPT_CUSTOMREQUEST => 'POST',
                  CURLOPT_POSTFIELDS =>$data,
                  CURLOPT_HTTPHEADER => $autho
                 
                ));

                $response = curl_exec($curl);

                $resultado["response"]=$response;
                $result=json_decode($response);
                if($result->{"message"}=="Error en la autenticacion : EXPIRED")
                {
                    $resultado['Code']=403;    
                }
                else
                {
                    $resultado['Code']=curl_getinfo($curl)["http_code"];
                }
                
                
                
                curl_close($curl);
                return $resultado;
            }
        }
    }
?>
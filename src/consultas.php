<?php
require_once "Conexion.php";
  class consultas extends conexionBD{
    /*==============================================================================================================
      :::::::::::::::::::::::::::::UTILIDADES::::::::::::::::::::
    ===============================================================================================================*/
    

    /*=============================================================================================================
               usuario numeros telefono
    ===============================================================================================================*/
    public function users_telem($id,$tipo){
      $sql="SELECT * FROM users_phone_numbers WHERE type = $tipo AND user_id=$id";
      //echo $sql."<br>";
      $resultado=$this->consultar($sql);
      return $resultado;
    }

    /*=============================================================================================================
               Datos de la configuracion de la aplicacion
    ===============================================================================================================*/
    public function Dato_aplicacion_settings_id($id){
      $sql="SELECT *FROM application_settings where user_id=$id";
      //echo $sql."<br>";
      $resultado=$this->consultar($sql);
      return $resultado;
    }

    /*=============================================================================================================
               Actualizar pasarela de sms a CellVoz
    ===============================================================================================================*/
    public function update_sms_cellvoz($id,$pasarela,$user,$password,$token,$apikey){
      $sql="UPDATE application_settings set sms_gateway='$pasarela', cell_user_voz='$user', cell_pass_voz='$password', cell_TOK_voz='$token', cell_akey_voz='$apikey' where id=$id";
      //echo $sql."<br>";
      $resultado=$this->consultar($sql);
      return $resultado;
    }
    /*=============================================================================================================
               Datos pasarela de sms a CellVoz
    ===============================================================================================================*/
    public function Mostrar_sms_cellvoz_id($id){
      $sql="SELECT sms_gateway, cell_user_voz , cell_pass_voz, cell_TOK_voz, cell_akey_voz FROM application_settings where id=$id";
      //echo $sql."<br>";
      $resultado=$this->consultar($sql);
      return $resultado;
    }
    /*=============================================================================================================
                telefono de subscritor por id
    ===============================================================================================================*/
    public function Telefono_subscriptor_id($id){
      $sql="SELECT phone_number FROM subscribers WHERE id='$id'";
      //echo $sql."<br>";
      $resultado=$this->consultar($sql);
      return $resultado;
    }
    /*=============================================================================================================
                Lista de telefonos de subscriptotes de una sola campaña
    ===============================================================================================================*/
    public function Telefonos_subscriptors_campaing($id_campaing){
      $sql="SELECT s.id as id, s.phone_number as phone_number
            FROM subscribers s, subscribers_group_assignment sga 
            WHERE sga.subscriber_id=s.id and sga.group_id=$id_campaing ";
      echo $sql."<br>";
      $resultado=$this->consultar($sql);
      return $resultado;
    }

    /*=============================================================================================================
                telefonos de subscriptotes por todas las campañas
    ===============================================================================================================*/
    public function Telefono_subscriptors_group_campaing($id_campaing){
      $sql="SELECT s.phone_number 
            FROM subscribers s, subscribers_group_assignment sga 
            WHERE sga.group_id='$id_campaing' and sga.subscriber_id=s.id group by s.phone_number";
      //echo $sql."<br>";
      $resultado=$this->consultar($sql);
      return $resultado;
    }

    /*=============================================================================================================
                telefonos de subscriptotes por todas las campañas por fecha  
    ===============================================================================================================*/
    public function Telefono_subscriptors_group_campaing_date($id_campaing, $fecha_ini,$ficha_fin){
      $sql="SELECT s.phone_number 
            FROM subscribers s, subscribers_group_assignment sga 
            WHERE sga.group_id='$id_campaing' and sga.subscriber_id=s.id and date(s.created_date) between '$fecha_ini' and '$ficha_fin'  
            group by s.phone_number";
      //echo $sql."<br>";
      $resultado=$this->consultar($sql);
      return $resultado;
    }


    /*=============================================================================================================
                Traer todos los numeros de todas las campañas 
    ===============================================================================================================*/
    public function Telefono_subscriptors_all_campains($client){
      $sql="SELECT c.id, c.title, s.phone_number
            FROM campaigns c, subscribers s, subscribers_group_assignment sga
            where c.user_id='$client' and c.id=sga.group_id and sga.subscriber_id=s.id and  s.status='1'
            group by s.phone_number";
      //echo $sql."<br>";
      $resultado=$this->consultar($sql);
      return $resultado;
    }
    /*=============================================================================================================
                
    ===============================================================================================================*/
    public function Telefono_subscriptors_all_campains_date($client, $fecha_ini,$ficha_fin){
      $sql="SELECT s.phone_number 
            from subscribers s, subscribers_group_assignment sb 
            where s.id=subscriber_id and s.user_id=$client and date(s.created_date) between '$fecha_ini' and '$ficha_fin' 
            group by s.phone_number";
      //echo $sql."<br>";
      $resultado=$this->consultar($sql);
      return $resultado;
    }

    /*=============================================================================================================
                Insertar mesajes programados
    ===============================================================================================================*/
    public function insert_sms_programers_schedulers($title, $time, $group_id, $phone_number, $message, $fileName, $user_id,$attach_mobile_device, $send_immediate, $custom, $search){
      $sql="INSERT  into schedulers ( title, scheduled_time, group_id, phone_number, message, media, user_id, scheduler_type, attach_mobile_device, send_immediate, custom, search)
            values ( '$title', '$time', '$group_id', '$phone_number', '$message', '$fileName', '$user_id', '1', '$attach_mobile_device', '$send_immediate', '$custom', '$search')";
      //echo $sql."<br>";
      $resultado=$this->consultar($sql);
      return $resultado;
    }

    




     
  }
  ?>

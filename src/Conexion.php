
<?php
  /**
   *
   */
  class conexionBD{
   
    
    var $host='localhost';
    var $username='root';
    var $password='';
    var $db='prueba1';

    
    var $conexion;
    
   
    

    public function consultar($sql){
      try {
        $this->conexion=mysqli_connect($this->host,$this->username,$this->password) or die("No se pudo conectar con el servidor");
        mysqli_select_db($this->conexion,$this->db) or die("No se pudo conectar con la base de datos");
        mysqli_set_charset($this->conexion,'utf8');
          $resultado=mysqli_query($this->conexion,$sql);
          return($resultado);
      } catch (PDOException $e) {
        cabecera("Error grave",MENU_PRINCIPAL);
        echo " <p>Error: No se puede establecer coneccion con la Base de Datos.</p>\n\n";
        echo  " <p>Error: ".$e->getMessage()."</p>\n";
        die();
        exit();
      }
    }
  }
?>
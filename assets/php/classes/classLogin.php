<?php 

require_once 'database.php';

class Login{
     
    private $id;
    private $email;
    private $senha;
    private $tipo;


    public function __construct() {        
        $database = new Database();
        $dbSet = $database->dbSet();
        $this->conn = $dbSet;
    }

    public function setEmail($value){
        $this->email = $value;
    }

    public function setSenha($value){
        $this->senha = $value;
    }

    public function setTipo($value){
        $this->tipo = $value;
    }
     
    public function view(){
        $stmt = $this->conn->prepare("SELECT * FROM `login` WHERE `id` = :id;");
        $stmt->bindParam(":id", $this->id);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_OBJ);
        return $row;
    }

    public function locate(){
        $stmt = $this->conn->prepare("SELECT * FROM `login` WHERE `email` = :email AND `senha` = :senha;");
        $stmt->bindParam(":email", $this->email);
        $this->senha = sha1($this->senha);
        $stmt->bindParam(":senha", $this->senha);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_OBJ);
        return $row;
    }

    public function insert(){
        
            $stmt = $this->conn->prepare("INSERT INTO `login`(`email`, `senha`, `tipo`) VALUES(:email,:senha,:tipo)");
            $stmt->bindParam(":email", $this->email);
            $stmt->bindParam(":senha", $this->senha);
            $stmt->bindParam(":tipo", $this->tipo);
            try {
                $stmt->execute();
                return $this->conn->lastInsertId();
            } catch (PDOException $e) {
                return $e->getMessage();
            }         
    }

}

?>
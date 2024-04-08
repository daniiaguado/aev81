<?php

require_once 'Conexion.php';

class Importar extends Conexion {
    private $conexion;

    public function __construct($conexion) {
        parent::__construct($conexion);
        $this->conexion = $conexion;
    }

    public function customers($csv_file) {
        $file = fopen(, 'r');
        if (!$file) {
            die("No se pudo abrir el archivo CSV.");
        }

        while (($line = fgetcsv($file)) !== false) {
            $customerId = $line[0];
            $customerName = $line[1];
            $this->insertCustomer($customerId, $customerName);
        }

        fclose($file);
    }

    private function insertCustomer($customerId, $customerName) {
        $query = "INSERT INTO customers (customerId, customerName) VALUES (?, ?)";
        $statement = $this->conexion->prepare($query);
        $statement->bind_param("ss", $customerId, $customerName);
        $statement->execute();
        $statement->close();
    }

    public function brandCustomer($csv_file) {
        $file = fopen($csv_file, 'r');
        if (!$file) {
            die("No se pudo abrir el archivo CSV.");
        }

        while (($line = fgetcsv($file)) !== false) {
            $customerId = $line[0];
            $brands = explode(",", $line[2]);
            foreach ($brands as $brand) {
                $this->insertBrandCustomer($customerId, trim($brand));
            }
        }

        fclose($file);
    }

    private function insertBrandCustomer($customerId, $brand) {
        $query = "INSERT INTO brandCustomer (customerId, brandId) VALUES (?, ?)";
        $statement = $this->conexion->prepare($query);
        $brandId = $this->getBrandId($brand);
        $statement->bind_param("ss", $customerId, $brandId);
        $statement->execute();
        $statement->close();
    }

    private function getBrandId($brand) {
        $query = "SELECT brandId FROM brands WHERE brandName = ?";
        $statement = $this->conexion->prepare($query);
        $statement->bind_param("s", $brand);
        $statement->execute();
        $result = $statement->get_result();
        $row = $result->fetch_assoc();
        $brandId = $row['brandId'];
        $statement->close();
        return $brandId;
    }
}

// Ejemplo de uso:
$confFile = "conf.csv";
$conexion = new Conexion($confFile);
$conn = $conexion->connect();

$importador = new Importar($conn);
$csvFile = "datos.csv"; // Reemplaza con el nombre de tu archivo CSV
$importador->customers($csvFile);
$importador->brandCustomer($csvFile);

echo "Datos importados exitosamente.";

?>

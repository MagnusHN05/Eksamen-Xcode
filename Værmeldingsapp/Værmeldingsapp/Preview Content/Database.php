
$tjener = "localhost";

   $brukernavn = "root";

   $passord = "root";

   $database = "xcodeeksamen";


   $kobling = new mysqli($tjener, $brukernavn, $passord, $database);




   if($kobling->connect_error) {

       die("Noe gikk galt: " . $kobling->connect_error);

   } else {

       echo "Koblingen virker.<br>";

   }

$brukernavn = $_GET["brukernavn"];
$Passord = $_GET["Passord"];

$sql = "INSERT INTO Users (brukernavn, Passord) VALUES (,'$brukernavn','Passord')";

if($kobling->query($sql)) {
    echo "Spørringen $sql ble gjennomført.";
} else {
    echo "Noe gikk galt med spørringen $sql ($kobling->error).";
}


   $kobling->set_charset("utf8");

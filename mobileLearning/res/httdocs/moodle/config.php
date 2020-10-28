<?PHP
unset($CFG); // Ignore this line
$CFG = new stdClass();
$CFG->dbtype = 'mysql'; // mysql or postgres7 (for now)
$CFG->dbhost = 'localhost'; // eg localhost or db.isp.com
$CFG->dbname = 'dbmoodle'; // database name, eg moodle
$CFG->dbuser = 'root'; // your database username
$CFG->dbpass = ''; // your database password
$CFG->prefix = 'mdl_'; // Prefix to use for all table names
$CFG->dbpersist = false; // Should database connections be reused?
$CFG->wwwroot = 'http://localhost/moodle';
$CFG->dirroot = 'C:\xampp\htdocs\moodle';
$CFG->dataroot = 'C:\xampp\htdocs\moodledata';
$CFG->directorypermissions = 00777;
$CFG->admin = 'admin';
$CFG->unicodedb = true;
require_once($CFG->dirroot.'\lib\setup.php');

?>
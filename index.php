<?php
// Connexion à la base de données PostgreSQL
$port = '5432';
$user = 'esgi';
$host = 'postgres';
$dbname = 'esgi';
$password = 'esgi';
$dsn = "pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$password";
$db = new PDO($dsn);

// Exécutez une requête pour récupérer les données de la table "todo"
$query = $db->query('SELECT * FROM todo');
$result = $query->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Todo App</title>
</head>
<body>
    <h1>Todo List</h1>
    <ul>
        <?php foreach ($result as $result): ?>
            <li><?php echo $result['id']; ?> - <?php echo $result['titre']; ?> (<?php echo $result['done'] ? 'Fait' : 'À faire'; ?>)</li>
        <?php endforeach; ?>
    </ul>
</body>
</html>

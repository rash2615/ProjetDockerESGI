<?php
// Connexion à la base de données PostgreSQL
$dsn = 'pgsql:host=postgres;dbname=todo_db';
$user = 'postgres';
$password = 'yaya12002';
$db = new PDO($dsn, $user, $password);

// Exécutez une requête pour récupérer les données de la table "todo"
$query = $db->query('SELECT * FROM todo');
$todos = $query->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Todo App</title>
</head>
<body>
    <h1>Todo List</h1>
    <ul>
        <?php foreach ($todos as $todo): ?>
            <li><?php echo $todo['id']; ?> - <?php echo $todo['titre']; ?> (<?php echo $todo['done'] ? 'Fait' : 'À faire'; ?>)</li>
        <?php endforeach; ?>
    </ul>
</body>
</html>

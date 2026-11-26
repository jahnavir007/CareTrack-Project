<?php
require 'config.php';
$parents=$pdo->query("SELECT id,name FROM parents ORDER BY name")->fetchAll();
$error='';
if($_SERVER['REQUEST_METHOD']==='POST'){
$name=trim($_POST['name']??''); $age=(int)($_POST['age']??0); $parent=$_POST['parent_id']?:null;
if($name!=='' && $age>=0 && $age<=18){$stmt=$pdo->prepare("INSERT INTO children(name,age,parent_id) VALUES(?,?,?)");$stmt->execute([$name,$age,$parent]);header('Location:index.php#children');exit;}
$error='Enter a valid name and age.';
}
?><!DOCTYPE html><html><head><meta charset="UTF-8"><link rel="stylesheet" href="assets/style.css"><title>Add child | CareTrack</title></head><body><main class="form-page"><a href="index.php">← Dashboard</a><section class="panel"><p class="eyebrow">NEW PROFILE</p><h1>Add a child</h1><?php if($error) echo '<p class="error">'.htmlspecialchars($error).'</p>'; ?><form method="post"><label>Child name<input name="name" required maxlength="100"></label><label>Age<input type="number" name="age" min="0" max="18" required></label><label>Parent / Guardian<select name="parent_id"><option value="">Not assigned</option><?php foreach($parents as $p): ?><option value="<?=$p['id']?>"><?=htmlspecialchars($p['name'])?></option><?php endforeach; ?></select></label><button class="button">Save child</button></form></section></main></body></html>
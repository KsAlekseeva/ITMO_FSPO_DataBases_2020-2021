<?php
require_once '../models/org.php';

$handler = new Org();
if (isset($_POST['submit'])) {	
    $handler->createOrg($_POST['org_name'], $_POST['name']);
}
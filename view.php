<?php
session_start();
if(!isset($_SESSION[]))

<?php 
$array=$con->query("select * from semnotes;");
$row=$array->fetch_assoc();
?>view notes 
 
<div >
<table><tbody>
    <tr><td>sem</td>
    <th><?php echo $row['sem']?></th></tr>
    <tr><td>scode</td>
    <th><?php echo $row['scode']?></th></tr>
    <tr><td>filename</td>
    <th><?php echo $row['filename']?></th></tr>
</tbody></table></div>





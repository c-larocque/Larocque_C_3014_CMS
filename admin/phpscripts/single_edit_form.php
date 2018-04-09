<?php

  function single_edit($tbl, $col, $id) {

    $result = getSingle($tbl, $col, $id);
    $getResult = mysqli_fetch_array($result);

    echo "<form action=\"phpscripts/edit.php\" method=\"post\" class=\"editForm\">";
    echo "<h2>Edit Movie</h2>";
      echo "<input class=\"hidden\" name=\"tbl\" value=\"{$tbl}\">";
      echo "<input class=\"hidden\" name=\"col\" value=\"{$col}\">";
      echo "<input class=\"hidden\" name=\"id\" value=\"{$id}\">";

    //echo mysqli_num_fields($result);

    for($i=0; $i<mysqli_num_fields($result); $i++) {
      $dataType = mysqli_fetch_field_direct($result, $i);
      $fieldName = $dataType->name;
      $fieldType = $dataType->type;
      // echo $fieldName."<br>";
      // echo $fieldType."<br><br>";

      if($fieldName != $col) {
        echo "<label>{$fieldName}</label>";
        if($fieldType != "252") {
          echo "<input type=\"text\" name=\"{$fieldName}\" value=\"{$getResult[$i]}\">";
        } else{
          echo "<textarea name=\"{$fieldName}\">{$getResult[$i]}</textarea>";
        }
      }

    }

    echo "<input type=\"submit\" name=\"submit\" value=\"Save Content\" class=\"submitButton\">";
    echo "</form>";

  }

?>

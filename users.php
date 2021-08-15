<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>user details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/users.css">
</head>
<body>
<?php
    include 'header.html';
    require 'conf.php';
    $query = "SELECT * FROM users";
    $result = mysqli_query($conn,$query);
?>

    <div class="container">
        <h2>User Details</h2>
        <br>

        <div class="row">
            <div class="col">
                <div class="">
                    <table class="table tabletext table-hover table-responsive-sm table-condensed">
                        <thead>
                            <tr>
                            <!-- <th scope="col">Id</th> -->
                            <th scope="col">Name</th>
                            <th scope="col">Email Id</th>
                            <!-- <th scope="col">Balance</th> -->
                            <th scope="col">Transaction</th>
                            </tr>
                        </thead>
                        <tbody>
                <?php
                    while($rows=mysqli_fetch_array($result)){
                ?>
                    <tr>
                        <td><?php echo $rows['name']?></td>
                        <td><?php echo $rows['email']?></td>
                        <td><a href="detail.php?id= <?php echo $rows['id'] ;?>"> <button type="button" class="button">Select</button></a></td>
                    </tr>
                <?php
                    }
                 ?>

                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
            </div>

</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
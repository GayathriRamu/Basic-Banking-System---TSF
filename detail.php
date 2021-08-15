<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Info</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/detail.css">
</head>
<body>
    <?php
    include 'header.html';
    include 'conf.php';
    $from = $_GET['id'];
    $sql = "SELECT * from users where id=$from";
    $query = mysqli_query($conn,$sql);
    if(!$query)
    {
        echo "Error ".$sql."<br/>".mysqli_error($conn);
    }
    $row=mysqli_fetch_array($query);
    ?>
    <div class="container">
        <h1 class="profile">Profile :</h1>
    <div class="row">
    <div class="col-sm-6">
    <table>
        <tr>
            <th>Id:</th>
            <td> <?php echo $row['id']?> </td>
        </tr> 
        <tr>
            <th>Name:</th>
            <td> <?php echo $row['name']; ?> </td>
        </tr>
        <tr>
            <th>E-mail:</th>
            <td> <?php echo $row['email']; ?> </td>
        </tr>
        <tr>
            <th>Phone:</th>
            <td> <?php echo $row['phone']; ?> </td>
        </tr>
        <tr>
            <th>Address:&nbsp;&nbsp;&nbsp;&nbsp;</th>
            <td> <?php echo $row['address']; ?> </td>
        </tr>
    </table>
    </div>
    <div class="col-sm-6 amount">
        <h5>Balance: <?php echo $row['amount']; ?></h5>
    </div>

    <div class="transfer col-sm-12">
        <a href="transfer.php?id= <?php echo $row['id'] ;?>"> <button type="button" class="button">Transfer Money</button></a>
    </div>
    </div>
</div>
</body>
</html>
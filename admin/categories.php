<?php include "includes/header.php" ?>
    <div id="wrapper">

        <!-- Navigation -->
    <?php include "includes/navigation.php" ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                        Welcome to admin
                            <small>Author</small>
                        </h1>
                        <div class="col-xs-6">
                        <?php
                          if(isset($_POST['submit'])){
                             $cat_title = $_POST['cat_title'];
                             if($cat_title == "" || empty($cat_title)){
                                 echo "This field should not be empty";
                             }
                             else{
                                 $query = "INSERT INTO categories(cat_title)";
                                 $query.=" VALUE('{$cat_title}')";
                                 $create_category_query = mysqli_query($connection,$query);
                                 if(!$create_category_query){
                                     die('QUERY FAILED '. mysqli_error($connection));
                                 }
                             }
                          }
                        ?>

                        <form action="" method="post">
                            <div class="form-group">
                                <label for"cat-title">Category Name</label>
                                <input class="from-control" type="text" name="cat_title">
                            </div>
                            <div class="form-group">
                                <input class="btn btn-primary" type="submit" name="submit" value="Add Category">
                            </div>
                        </form>
                        </div>

                        <div class="col-xs-6">
                        <?php  
                        $query = "SELECT * FROM categories";
                        $get_all_catergories_query = mysqli_query($connection,$query);
                    ?>
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Caregory Title</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php
                                while($row = mysqli_fetch_assoc($get_all_catergories_query)){
                                    $cat_id = $row['cat_id'];
                                    $cat_title = $row['cat_title'];
                                    echo "<tr>
                                    <td>{$cat_id}</td>
                                    <td>{$cat_title}</td>
                                </tr>";
                                }
                                ?>
                                    
                                </tbody>
                            </table>
                        <div>
                    
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->
             
        <!-- /#page-wrapper -->
        <?php include "includes/footer.php" ?>
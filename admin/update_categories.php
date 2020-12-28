<form action="" method="post">
                            <div class="form-group">
                                <label for"cat-title">Edit Category Name</label>
                                <?php
                                if(isset($_GET['edit'])){
                                    $cat_id = $_GET['edit'];
                                    $query_for_edit = "SELECT * FROM categories WHERE cat_id = {$cat_id} ";
                                    $catergories_edit_query = mysqli_query($connection,$query_for_edit);
                                    // $cat_title = "";
                                    while($row = mysqli_fetch_assoc($catergories_edit_query)){
                                        $cat_id = $row['cat_id'];
                                        $cat_title = $row['cat_title'];
                                    } 
                                    ?>
                                <input value="<?php if(isset($cat_title)){echo $cat_title;} ?>" class="from-control" type="text" name="cat_title">
                                <?php
                                }
                                ?>
                                <?php
                                    if(isset($_POST['update'])){
                                        $cat_title_update = $_POST['cat_title'];
                                        $query_for_delete = "UPDATE categories SET cat_title = '{$cat_title_update}' WHERE cat_id = {$cat_id} ";
                                        $deleting_row = mysqli_query($connection,$query_for_delete);
                                        header("Location: categories.php");
                                        
                                    }
                                ?>

                                
                            </div>
                            <div class="form-group">
                                <input class="btn btn-primary" type="submit" name="update" value="Update Category">
                            </div>
                        </form>
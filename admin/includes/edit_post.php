<?php

    if(isset($_GET['p_id'])){
        $edit_post_id = $_GET['p_id'];
    }
    $query = "SELECT * FROM posts Where post_id=$edit_post_id";
    $get_all_posts_by_id = mysqli_query($connection,$query);

    while($row = mysqli_fetch_assoc($get_all_posts_by_id)){
        $post_id = $row['post_id'];
        $post_author = $row['post_author'];
        $post_title = $row['post_title'];
        $post_category_id = $row['post_catagory_id'];
        $post_status = $row['post_status'];
        $post_image = $row['post_image'];
        $post_tags = $row['post_tags'];
        $post_comment_count = $row['post_comment_count'];
        $post_date = $row['post_date'];
        $post_content = $row['post_content'];
    }

?>

<form action="" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label for="title">Post Title</label>
        <input value="<?php if(isset($post_title)){echo $post_title; }?>" type="text" class="form-control" name="title">
    </div>
    <div class="form-group">
        <label for="post_category_id">Post Category</label>
        <select name="" id="">
        
        <?php
            $query_for_edit = "SELECT * FROM categories";
            $catergories_edit_query = mysqli_query($connection,$query_for_edit);
            // $cat_title = "";
            while($row = mysqli_fetch_assoc($catergories_edit_query)){
                
                $cat_title = $row['cat_title'];
                $cat_id = $row['cat_id'];
                echo "<option value='{$cat_id}'>$cat_title</option>";
            } 
        ?>

        </select>
    </div>
    <div class="form-group">
        <label for="author">Post Author</label>
        <input value="<?php if(isset($post_author)){echo $post_author; }?>" type="text" class="form-control" name="author">
    </div>
    <div class="form-group">
        <label for="post_status">Post Status</label>
        <input value="<?php if(isset($post_status)){echo $post_status; }?>" type="text" class="form-control" name="post_status">
    </div>
    <div class="form-group">
        <label for="post_image">Post Image</label>
        <!-- <input type="file" class="form-control" name="image"> -->
        <img width="100" src="../images/<?php echo $post_image; ?>" alt="image">
    </div>
    <div class="form-group">
        <label for="post_tags">Post Tags</label>
        <input value="<?php if(isset($post_tags)){echo $post_tags; }?>" type="text" class="form-control" name="post_tags">
    </div>
    <div class="form-group">
        <label for="post_content">Post Content</label>
        <textarea class="form-control" name="post_content" id="" cols="30" rows="10"><?php echo $post_content; ?>
        </textarea>
    </div>

    <div class="form-group">
        <input class="btn btn-primary" type="submit" name="create_post" value="Publish Post">
    </div>
    
</form>
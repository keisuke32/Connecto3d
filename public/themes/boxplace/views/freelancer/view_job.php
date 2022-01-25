<?php
defined('FIR') OR exit();
/**
 * The template for displaying Example Create page
 */
?>



<style type="text/css">
  #dropzone{
    min-height: 200px;
    background-color: #F9F9F9;
    display: flex;
    border: 3px dashed #00C4CF;
    padding: 10px;
    border-radius: 10px;
    align-items: center;
  }
  .dz-upload{
    background-color: blue;
  }
  .dz-error-message{
    display: none;
  }
  .dz-message{
    display: none;
  }

  .dz-image{
    border: 3px dashed silver;
    border-radius: 10px;
  }
  .dz-success-mark{
display: none;
  }
  .dz-error-mark{
display: none;
  }
  .dz-preview{
    padding: 10px;
    display: none;
  }

  .p_item{
    border: 2px silver;
    padding: 10px;
    margin: 10px;
    width: 33%;
    align-items: center;
  }

  #dropzone{
    display: block !important;
  }

</style>

    

   
   <!-- ==============================================
   Dashboard Section
   =============================================== -->
     <section class="dashboard">
      <div class="container">
     <div class="row">
    <div class="col-lg-12">
    
         <div class="headline">
      <h3><?=$this->lang('view')?></h3>
     </div> 

    <?php foreach ($data['job'] as $JOBS) { 
      $Freelancers = array();
      $client = array();

        foreach ($data['users'] as $user) {
          if($JOBS['freelancer_id']==$user['id']){
            $Freelancers = $user;
          }
        }

        foreach ($data['users'] as $user) {
          if($JOBS['user_id']==$user['id']){
            $client = $user;
          }
        }
    ?>



    <div class="cardx">


      <table class="table table-bordered">
        <tbody>
          <tr>
            <td><?=$this->lang('job')?> #</td>
            <td><?=$JOBS['job_id'];?></td>
          </tr>
          <tr>
            <td><?=$this->lang('client')?></td>
            <td><img class="img-responsive img-circle" src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/users/<?=e($client['imagelocation'])?>" alt="Profile Picture" style="height: 100px;width: 100px;">
              <h3 class=" <?php if($Freelancers['verified']!=0){ ?>verified <?php } ?>"><?php echo $client['name'];?></h3>
            </td>
          </tr>
          <tr>
            <td><?=$this->lang('freelancer')?></td>
            <td><img class="img-responsive img-circle" src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/users/<?=e($Freelancers['imagelocation'])?>" alt="Profile Picture" style="height: 100px;width: 100px;">
              <h3 class=" <?php if($Freelancers['verified']!=0){ ?>verified <?php } ?>"><?php echo $Freelancers['name'];?></h3>
            </td>
          </tr>
          <tr>
            <td><?=$this->lang('time')?></td>
            <td><?php echo date('d F Y H:i',strtotime($JOBS['created_at']));?></td>
          </tr>
          <tr>
            <td><?=$this->lang('service_category')?></td>
            <td><?php

            foreach ($data['services'] as $services) {
              if ($services['id']==$JOBS['service_id']) {
                echo $services['name'];
              }
            }
            ?></td>
          </tr>
          <tr>
            <td><?=$this->lang('subject')?></td>
            <td><?=decrypt_text($JOBS['subject']);?></td>
          </tr>
          <tr>
            <td><?=$this->lang('description')?></td>
            <td><?=decrypt_text($JOBS['description']);?></td>
          </tr>
          <tr>
            <td><?=$this->lang('name')?></td>
            <td><?=decrypt_text($JOBS['name']);?></td>
          </tr>
          <tr>
            <td><?=$this->lang('shipping')?></td>
            <td><?=decrypt_text($JOBS['shipping']);?></td>
          </tr>
          <!-- <tr>
            <td><?=$this->lang('post_shipping')?></td>
            <td><?=decrypt_text($JOBS['post_shipping']);?></td>
          </tr> -->
          <tr>
            <td><?=$this->lang('shipping_type')?></td>
            <td><?=$JOBS['shipping_type'];?></td>
          </tr>

          
          <?php if ($JOBS['material']!="") { ?>
            <tr>
            <td><?=$this->lang('material')?></td>
            <td><?=decrypt_text($JOBS['material']);?></td>
          </tr>
          <?php }  ?>

          <?php if ($JOBS['type']!="") { ?>
            <tr>
            <td><?=$this->lang('type')?></td>
            <td><?=decrypt_text($JOBS['type']);?></td>
          </tr>
          <?php }  ?>

          <?php if ($JOBS['layer_height']!="") { ?>
            <tr>
            <td><?=$this->lang('layer_height')?></td>
            <td><?=decrypt_text($JOBS['layer_height']);?></td>
          </tr>
          <?php }  ?>

          <?php if ($JOBS['infil']!="") { ?>
            <tr>
            <td><?=$this->lang('infil')?></td>
            <td><?=decrypt_text($JOBS['infil']);?></td>
          </tr>
          <?php }  ?>

          <?php if ($JOBS['fininshings']!="") { ?>
            <tr>
            <td><?=$this->lang('fininshings')?></td>
            <td><?=decrypt_text($JOBS['fininshings']);?></td>
          </tr>
          <?php }  ?>

          <?php if ($JOBS['color']!="") { ?>
            <tr>
            <td><?=$this->lang('color')?></td>
            <td><?=decrypt_text($JOBS['color']);?></td>
          </tr>
          <?php }  ?>

          <?php if ($JOBS['postage']!="") { ?>
            <tr>
            <td><?=$this->lang('postage')?></td>
            <td><?=decrypt_text($JOBS['postage']);?></td>
          </tr>
          <?php }  ?>
          
          <tr>
            <td><?=$this->lang('status')?></td>
            <td>
              <?php echo jobStatus($JOBS['status']); ?>
              
                

              </td>
          </tr>
          <?php if ($JOBS['status']==0) { ?>
            
          <form action="<?=$this->siteUrl()?>/<?=$this->freelancer_url()?>/process_update_job_price" method="post">
            <?=$this->token()?>
            <input type="hidden" name="id" value="<?=$JOBS['id'];?>">
          <tr>
            <td><?=$this->lang('price')?></td>
            <td>
              <input type="number" step="any" name="price" class="form-control" required>
            </td>
          </tr>
          <tr>
            <td><?=$this->lang('shipping')?> </td>
            <td>
              <input type="number" step="any"  name="shipping_f" class="form-control" required>
            </td>
          </tr>
          <tr>
            <td><?=$this->lang('days')?> </td>
            <td>
              <input type="number" min="1"  name="days" class="form-control" required>
            </td>
          </tr>
          <tr>
            <td colspan="2" class="text-right">
              <button class="kafe-btn kafe-btn-mint"><?=$this->lang('submit')?></button>
            </td>
            
          </tr>
            
          </form>
         <?php }else{ ?>

          <tr>
            <td><?=$this->lang('price')?></td>
            <td>
              <?php echo $JOBS['price']; ?>
            </td>
          </tr>
          <tr>
            <td><?=$this->lang('shipping')?> </td>
            <td>
              <?php echo $JOBS['shipping_f']; ?>
            </td>
          </tr>
          <tr>
            <td><?=$this->lang('days')?> </td>
            <td>
              <?php echo $JOBS['days']; ?>
            </td>
          </tr>


         <?php } ?>



         <?php 
              $quaility_files = 0;

              foreach ($data['job_action'] as $Action) { 
                if ($Action['action_type']==1) {
                  $quaility_files++;
                }
              }
        ?>


        <?php if ($JOBS['status']>=2  && $JOBS['status']<10  && $quaility_files>0) { ?>

          <tr>
          <td>Quality Assurances</td>
          <td>
            <?php if ($JOBS['quality_assurances']=="") { ?>
              <a class="btn kafe-btn-mint" href="<?=$this->siteUrl()?>/<?=$this->freelancer_url()?>/request_quality_assurances?id=<?php echo base64_encode($JOBS['id']);?>"><?=$this->lang('double_check')?></a>
            <?php }else{   echo date('d F Y H:i',strtotime($JOBS['quality_assurances'])) ; } ?>
            
          </td>
         </tr>
          
        <?php }  ?>


        <?php if($JOBS['status']>=3  && $JOBS['status']<10){ ?>

          <tr>
          <td>Tracking Number</td>
          <td>
            <?php if ($JOBS['tracking_number']=="") { ?>
              <form  action="<?=$this->siteUrl()?>/<?=$this->freelancer_url()?>/add_tracking_number" method="post" >
              <input type="text" name="tracking_number" class="form-control" required="">
              <?=$this->token()?>
            <input type="hidden" name="id" value="<?=$JOBS['id'];?>">
                <div class="text-right">
                  <br>
                <button class="btn kafe-btn-mint">Send</button>
                </div>
              </form>
            <?php }else{  ?>

              <form  action="<?=$this->siteUrl()?>/<?=$this->freelancer_url()?>/update_tracking_number" method="post" >
              <input type="text" name="tracking_number" class="form-control" value="<?php echo $JOBS['tracking_number']; ?>" required="">
              <?=$this->token()?>
            <input type="hidden" name="id" value="<?=$JOBS['id'];?>">
                <div class="text-right">
                  <br>
              <?php if($JOBS['status']!=9){ ?>
                <button class="btn kafe-btn-mint">update</button>
              <?php } ?>
                </div>
              </form>

              <?php  } ?>
            
          </td>
         </tr>


         <tr>
          <td>Shipping Date</td>
          <td>
            <?php echo date('d F Y H:i',strtotime($JOBS['shipping_date'])); ?>
            
          </td>
         </tr>

        <?php } ?>

        <?php if($JOBS['status']>=4  && $JOBS['status']<10){ ?>

        <tr>
          <td>Completed Date</td>
          <td>
            <?php if ($JOBS['completed_date']=="") { ?>
              <a class="btn kafe-btn-mint" href="<?=$this->siteUrl()?>/<?=$this->freelancer_url()?>/request_to_complete?id=<?php echo base64_encode($JOBS['id']);?>">Request To Complete</a>
            <?php }else{  echo date('d F Y H:i',strtotime($JOBS['completed_date']));  } ?>
            
          </td>
         </tr>

        <?php } ?>


        <?php if($JOBS['status']==10  || $JOBS['status']==9){ ?>

        <tr>
          <td>Review</td>
          <td>
            <?php echo decrypt_text($JOBS['review']); ?>
          </td>
         </tr>

        <?php } ?>





        

          
        </tbody>
      </table>

    </div>

    <br>
    
    <br>

        <br/>
     <?php if ($JOBS['tracking_number']!="") { ?>
      <div class="cardx" >
    

      <h2>Tracking</h2>

      <?php

      $trackingOBJ = tracking($JOBS['tracking_number']); 

      if ($trackingOBJ['meta']['code']==200) { 

        if (isset($trackingOBJ['data']['tracking_number'])) { ?>

          <table class="table table-bordered">
            <thead>
              <tr>
                <th>Tracking Number</th>
                <th>Carrier code</th>
                <th>Original country</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><?php echo $trackingOBJ['data']['tracking_number']; ?></td>
                <td><?php echo $trackingOBJ['data']['carrier_code']; ?></td>
                <td><?php echo $trackingOBJ['data']['original_country']; ?></td>
                
              </tr>
            </tbody>
          </table>
          
        <?php }

        if (isset($trackingOBJ['data']['origin_info']['trackinfo'])) {

        ?>

        <h3>Tracking Info</h3>

        <table class="table table-bordered">
          <thead>
            <tr>
              <td>Date</td>
              <td>StatusDescription</td>
              <td>Details</td>
              <td>status</td>
            </tr>
          </thead>
          <tbody>
            <?php  foreach ($trackingOBJ['data']['origin_info']['trackinfo'] as $tarckVAL) { ?>
              <tr>
                <td><?php echo $tarckVAL['Date']; ?></td>
                <td><?php echo $tarckVAL['StatusDescription']; ?></td>
                <td><?php echo $tarckVAL['Details']; ?></td>
                <td><?php if (isset($tarckVAL['ItemNode'])) {
                  echo $tarckVAL['ItemNode'];
                }else{  echo $tarckVAL['checkpoint_status']; } ?></td>
              </tr>
            <?php } ?>
          </tbody>
        </table>

        



        
      <?php } }else{ echo 'Unsupported tracking Code'; } ?>

      

       
         </div>
         <br/>
         <br/>
    <?php } ?>


    <?php if (count($data['job_action'])>0) { ?>
      <div class="cardx" >
    

      <h2>Actions</h2>

      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Time</th>
            <th>By</th>
            <th>Type</th>
            <th>Info</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($data['job_action'] as $Action) { ?>
            <tr>
              <td><?php echo $Action['created_at'];?></td>
              <td><?php if($Action['from_by']==0){ echo 'Team'; }else{ echo "Client"; }  ?></td>
              <td><?php if($Action['action_type']==0){ echo 'Action'; }else{ echo "File Send";} ?></td>
              <td>

                <?php

                if($Action['action_type']==1){

                  $file = $Action['name'];


                  $lower = strtolower($file);
                  $expo = explode(".",$lower);
                  $ext = end($expo);

                  if ($ext=='obj' || $ext=='stl') {
                    ?>
                    <iframe  height="300" style="width: 100%" src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/plugins/STL/draw.php?file=<?php echo $file;?>"></iframe>
                    <?php
                    
                  }


                  if ($ext=='jpg' || $ext=='png') {
                    ?>
                    <img src="<?php echo $this->siteUrl().'/uploads/jobs/'.$file; ?>" style="max-width: 100%;" >
                    <?php
                    
                  }

                  ?>
                  <br/>
                  <a href="<?php echo $this->siteUrl().'/uploads/jobs/'.$file; ?>"> <i class="fa fa-download"></i> Download</a>

                  <?php

                }

                ?>

                <?php if($Action['action_type']==0){ 

                  echo $Action['name'];


                } ?>


                





              </td>
            </tr>
          <?php } ?>
        </tbody>
      </table>


       
         </div>
    <?php } ?>


    <?php if($JOBS['status']>=2){   ?>
      <br>
      <br>
     
    <div class="cardx" >
    

      <h2>Send Images</h2>


      <form action="<?=$this->siteUrl()?>/<?=$this->freelancer_url()?>/process_send_job_images" method="post">
        <?=$this->token()?>
        <input type="hidden"  name="job_id" value="<?php echo $JOBS['id'];?>">

      <div id="preview_zone" class="row" ></div>
        <br>

        <div id="dropzone" class="text-center" >
          

            <button  type="button" onclick="$(this).parent().click()" class="btn btn-info" style="margin-top: 20px;" ><i class="fa fa-upload fa-2x"></i> Preview Supported .obj .stl and images</button>
          
        </div>

        <div class="text-right">
          <br>
          <button class="btn kafe-btn-mint"><i class="fa fa-paper-plane" aria-hidden="true"></i> <?=$this->lang('quality_control')?></button>
        </div>

       </form>



      


       
         </div><!-- /.prop-info --> 

      <?php } ?>


      <br>

    <div class="cardx" >


      <h2>Attachments</h2>

      <table class=" table table-bordered">
        <thead>
        <tr>
          <th>Name</th>
          <th>Preview</th>
        </tr>
        </thead>
        <tbody>
          <?php 
          $files = array();

            try {

              $files = json_decode($JOBS['files']);
              }
              catch(Exception $e) {
                echo 'Message: ' .$e->getMessage();
              }

            foreach ($files as $file) {
              ?>
              <tr>
                <td><a href="<?php echo $this->siteUrl().'/uploads/jobs/'.$file; ?>">
                <?php echo $file;?>
                  </a>
                </td>
                <td>

                  <?php

                  $lower = strtolower($file);
                  $expo = explode(".",$lower);
                  $ext = end($expo);

                  if ($ext=='obj' || $ext=='stl') {
                    ?>
                    <iframe  height="300" style="width: 100%" src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/plugins/STL/draw.php?file=<?php echo $file;?>"></iframe>
                    <?php
                    
                  }


                  if ($ext=='jpg' || $ext=='png') {
                    ?>
                    <img src="<?php echo $this->siteUrl().'/uploads/jobs/'.$file; ?>" style="max-width:100%;" >
                    <?php
                    
                  }

                  if ($ext!='jpg' && $ext!='png' && $ext!='obj' && $ext!='obj' ) {
                    ?>
                    <i class="fa fa-ban"></i>
                    <?php
                    
                  }


                  ?>
                  

                </td>
              </tr>
              <?php
            } 
            ?>
          
        </tbody>
      </table>
      




    </div>

    <br>



     <?php }  ?>
    

    
    </div><!--/ .col-lg-12 -->
     </div><!--/ .row -->
    
    </div><!--/ .container -->
     </section>   








 <script type="text/javascript">
  Dropzone.autoDiscover = false;

  var myDropzone = new Dropzone("div#dropzone", { url: "<?=$this->siteUrl()?>/<?=$this->freelancer_url()?>/process_tmp_file_upload"});

  myDropzone.on("success", function(file,response) {
   console.log(response);
   preview_file(response);
  });



  function preview_file(response){

    try {
      var obj = JSON.parse(response);
  }
  catch(err) {
   alert('Fail To Upload !');
   return false;
  }



  if (obj.status==1){

    swal("success !", "File added ! Don't forgot send ", "success")

    var btn_string = '<button class="btn btn-danger" type="button" onclick="remove(this)"  ><i class="fa fa-times"></i></button><input type="hidden" name="files[]" value="'+obj.file+'">';

    var explode = obj.file.toLowerCase().split(".");

    var ext = "";

    $.each(explode, function( index, value ) {
      ext = value;
    });


    if (ext=='obj' || ext=='stl'){

      var string = '<div class="col-md-4">'+btn_string+'<iframe  height="300" src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/plugins/STL/draw.php?file='+obj.file+'"></iframe></div>';

      $('#preview_zone').append(string);

    }

    if (ext=='jpg' || ext=='png'){

      var string = '<div class="col-md-4">'+btn_string+'<image  style="width:100%" src="<?php echo $this->siteUrl()."/uploads/jobs/";?>'+obj.file+'"></div>';

      $('#preview_zone').append(string);

    }


    if (ext!='obj' && ext!='stl' && ext!='jpg' && ext!='png'){

      var string = '<div class="col-md-4">'+btn_string+'<br/><br/><h3>'+obj.file+'</h3></div>';

      $('#preview_zone').append(string);

    }

  }



  }



  function remove(ele){

    $(ele).parent().remove();


  }



  
</script>
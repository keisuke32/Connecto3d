<?php
defined('FIR') OR exit();
/**
 * The template for displaying Home page menu
 */
?>


	 


     <section class="latest-jobs">
      <div class="container">
        <div class="row">
            <div class="col-lg-12">
             <div class="jobs-headline">
              <h3><?=$this->lang('plans')?></h3>
             </div> 
            </div><!--/ .col-lg-12 -->


            <div class="col-lg-12 flex_responsive" >

            <?php foreach ($data['plans'] as $plansVAL) { ?>
        <div class="item_box">
             <div class="portfolio-box">
                <br>
                <div class="text-center">
                    <h1 class="plan_name" ><?php echo $plansVAL['name'];?></h1>
                    <h1 class="plan_price" >$ <?php echo $plansVAL['price'];?></h1>
                    <h5 class="text-silver"> <?php echo $plansVAL['month'];?> <?=$this->lang('month')?></h5>
                    <h5 class="text-silver"> <?=$this->lang('tokens_per_month')?> <?=$this->lang('quantity')?> <?php echo $plansVAL['token'];?>  </h5>
                
                    <hr/>
                    <?php echo $plansVAL['description']; ?>
                    <hr/>


                    
                    
                </div>

                <div class="portfolio-footer">
                    <a href="<?=$this->siteUrl()?>/subscription/process_plan?plan=<?php echo base64_encode($plansVAL['id']);?>"class="kafe-btn kafe-btn-mint">Buy Now</a>
                    
                    <!--/.portfolio-information -->
                </div>
                <!--/.portfolio-footer -->
            </div>
            <!--/.portfolio-box -->
            </div>
        <?php } ?>
        </div>
           
       </div>
      </div><!--/ .container -->
     </section>     





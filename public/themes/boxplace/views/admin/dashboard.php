<?php
defined('FIR') OR exit();
/**
 * The template for displaying Home page content
 */
?>
	  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
	  

        <!-- Main content -->
        <section class="content">
		  

			<div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="header-title mb-3"><?=$this->lang('overview')?></h4>
							
                            <div class="row">
							
                                <div class="col-lg-4">
                                    <div class="card widget-flat">
                                        <div class="card-body">
                                            <div class="float-right"><i class="fe fe-feed widget-icon"></i></div>
                                            <h5> <?=$this->lang('service_category')?></h5>
                                            <h3>
												<?php echo count($data['services']);?>
											</h3>
                                            <p class="mb-0 text-muted"><span class="text-nowrap">.</span></p>
                                        </div> <!-- end card-body-->
                                    </div> <!-- end card-->
                                </div> <!-- end col-->
							
                                <div class="col-lg-4">
                                    <div class="card widget-flat">
                                        <div class="card-body">
                                            <div class="float-right"><i class="fe fe-users widget-icon"></i></div>
                                            <h5><?=$this->freelancer_name_plural()?></h5>
                                            <h3>
												<?=e($data['count_freelancers'])?>
											</h3>
                                            <p class="mb-0 text-muted"><span class="text-nowrap"><?=$this->lang('total_number_of')?> <?=$this->freelancer_name_plural()?></span></p>
                                        </div> <!-- end card-body-->
                                    </div> <!-- end card-->
                                </div> <!-- end col-->
							
                                <div class="col-lg-4">
                                    <div class="card widget-flat">
                                        <div class="card-body">
                                            <div class="float-right"><i class="fe fe-users widget-icon"></i></div>
                                            <h5> <?=$this->client_name_plural()?></h5>
                                            <h3>
												<?=e($data['count_clients'])?>
											</h3>
                                            <p class="mb-0 text-muted"><span class="text-nowrap"><?=$this->lang('total_number_of')?> <?=$this->client_name_plural()?></span></p>
                                        </div> <!-- end card-body-->
                                    </div> <!-- end card-->
                                </div> <!-- end col-->
							
								
                            </div> <!-- end row -->
							
                            <div class="row">
							
                                <div class="col-lg-4">
                                    <div class="card widget-flat">
                                        <div class="card-body">
                                            <div class="float-right"><i class="fe fe-magic widget-icon"></i></div>
                                            <h5> <?=$this->lang('jobs')?></h5>
                                            <h3>
												<?php echo count($data['jobs']);?>
											</h3>
                                            <p class="mb-0 text-muted"><span class="text-nowrap">&nbsp;</span></p>
                                        </div> <!-- end card-body-->
                                    </div> <!-- end card-->
                                </div> <!-- end col-->
							
                                <div class="col-lg-4">
                                    <div class="card widget-flat">
                                        <div class="card-body">
                                            <div class="float-right"><i class="fa fa-th widget-icon"></i></div>
                                            <h5> <?=$this->lang('plans')?> </h5>
                                            <h3>
												<?php echo count($data['plans']); ?>
											</h3>
                                            <p class="mb-0 text-muted"><span class="text-nowrap">&nbsp;</span></p>
                                        </div> <!-- end card-body-->
                                    </div> <!-- end card-->
                                </div> <!-- end col-->
							
                                <div class="col-lg-4">
                                    <div class="card widget-flat">
                                        <div class="card-body">
                                            <div class="float-right"><i class="fa fa-money widget-icon"></i></div>
                                            <h5> <?=$this->lang('job_payments')?> </h5>
                                            <h3>
                                                <?=e($this->currency)?>
                                                <?php

                                                $total = 0;

                                                foreach ($data['job_payments'] as $Payment) {
                                                   $total += $Payment['amount'];
                                                }

                                                echo $total;


                                                ?>
											</h3>
                                            <p class="mb-0 text-muted"><span class="text-nowrap">&nbsp;</span></p>
                                        </div> <!-- end card-body-->
                                    </div> <!-- end card-->
                                </div> <!-- end col-->
							
								
                            </div> <!-- end row -->

							
                        </div>
                    </div>
                </div> <!-- end col -->
            </div>		
		  

			
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
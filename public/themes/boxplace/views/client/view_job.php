<?php
defined('FIR') or exit();
/**
 * The template for displaying Example Create page
 */
?>

<script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/js/raphael.js"></script>
<script src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/js/progressStep.js"></script>


<!-- ==============================================
Dashboard Section
=============================================== -->
<section class="dashboard">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="headline">
                    <h3><?= $this->lang('job_progress') ?></h3>
                </div>
                <div id="progressBar" style="height: 100px;"></div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">

                <div class="headline">
                    <h3><?= $this->lang('view') ?></h3>
                </div>


                <?php foreach ($data['job'] as $JOBS) {
                    $quaility_files = 0;
                    foreach ($data['job_action'] as $Action) {
                        if ($Action['action_type'] == 1) {
                            $quaility_files++;
                        }
                    }
                    $job_status = 0;
                    if ($JOBS['status'] >= 3 && $JOBS['status'] < 10)
                        $job_status = 3;
                    else if($JOBS['status'] >= 2 && $JOBS['status'] < 10 && $quaility_files > 0)
                        $job_status = 2;
                    else if($JOBS['status'] == 1)
                        $job_status = 1;
                ?>
                <input type="hidden" id="job_status" value="<?php echo $job_status; ?>">
                <?php
                    $Freelancers = array();
                    $client = array();

                    foreach ($data['users'] as $user) {
                        if ($JOBS['freelancer_id'] == $user['id']) {
                            $Freelancers = $user;
                        }
                    }

                    foreach ($data['users'] as $user) {
                        if ($JOBS['user_id'] == $user['id']) {
                            $client = $user;
                        }
                    }
                    ?>


                    <div class="cardx">


                        <table class="table table-bordered">
                            <tbody>
                            <tr>
                                <td><?= $this->lang('job') ?> #</td>
                                <td><?= $JOBS['job_id']; ?></td>
                            </tr>
                            <tr>
                                <td><?= $this->lang('client') ?></td>
                                <td><img class="img-responsive img-circle"
                                         src="<?= $this->siteUrl() . '/' . PUBLIC_PATH . '/' . UPLOADS_PATH ?>/admin/users/<?= e($client['imagelocation']) ?>"
                                         alt="Profile Picture" style="height: 100px;width: 100px;">
                                    <h3 class=" <?php if ($Freelancers['verified'] != 0) { ?>verified <?php } ?>"><?php echo $client['name']; ?></h3>
                                </td>
                            </tr>
                            <tr>
                                <td><?= $this->lang('team') ?></td>
                                <td><img class="img-responsive img-circle"
                                         src="<?= $this->siteUrl() . '/' . PUBLIC_PATH . '/' . UPLOADS_PATH ?>/admin/users/<?= e($Freelancers['imagelocation']) ?>"
                                         alt="Profile Picture" style="height: 100px;width: 100px;">
                                    <h3 class=" <?php if ($Freelancers['verified'] != 0) { ?>verified <?php } ?>"><?php echo $Freelancers['name']; ?></h3>
                                </td>
                            </tr>
                            <tr>
                                <td><?= $this->lang('time') ?></td>
                                <td><?php echo date('d F Y H:i', strtotime($JOBS['created_at'])); ?></td>
                            </tr>
                            <tr>
                                <td><?= $this->lang('service_category') ?></td>
                                <td><?php

                                    foreach ($data['services'] as $services) {
                                        if ($services['id'] == $JOBS['service_id']) {
                                            echo $services['name'];
                                        }
                                    }
                                    ?></td>
                            </tr>
                            <tr>
                                <td><?= $this->lang('subject') ?></td>
                                <td><?= decrypt_text($JOBS['subject']); ?></td>
                            </tr>
                            <tr>
                                <td><?= $this->lang('description') ?></td>
                                <td><?= decrypt_text($JOBS['description']); ?></td>
                            </tr>
                            <tr>
                                <td><?= $this->lang('name') ?></td>
                                <td><?= decrypt_text($JOBS['name']); ?></td>
                            </tr>
                            <tr>
                                <td><?= $this->lang('shipping') ?></td>
                                <td><?= decrypt_text($JOBS['shipping']); ?></td>
                            </tr>
                            <tr>
                                <td><?= $this->lang('shipping_type') ?></td>
                                <td><?= $JOBS['shipping_type']; ?></td>
                            </tr>
                            <tr>
                                <td><?= $this->lang('quantity') ?></td>
                                <td><?= $JOBS['quantity']; ?></td>
                            </tr>

                            <?php if ($JOBS['material'] != "") { ?>
                                <tr>
                                    <td><?= $this->lang('material') ?></td>
                                    <td><?= decrypt_text($JOBS['material']); ?></td>
                                </tr>
                            <?php } ?>

                            <?php if ($JOBS['type'] != "") { ?>
                                <tr>
                                    <td><?= $this->lang('type') ?></td>
                                    <td><?= decrypt_text($JOBS['type']); ?></td>
                                </tr>
                            <?php } ?>

                            <?php if ($JOBS['layer_height'] != "") { ?>
                                <tr>
                                    <td><?= $this->lang('layer_height') ?></td>
                                    <td><?= decrypt_text($JOBS['layer_height']); ?></td>
                                </tr>
                            <?php } ?>

                            <?php if ($JOBS['infil'] != "") { ?>
                                <tr>
                                    <td><?= $this->lang('infil') ?></td>
                                    <td><?= decrypt_text($JOBS['infil']); ?></td>
                                </tr>
                            <?php } ?>

                            <?php if ($JOBS['fininshings'] != "") { ?>
                                <tr>
                                    <td><?= $this->lang('fininshings') ?></td>
                                    <td><?= decrypt_text($JOBS['fininshings']); ?></td>
                                </tr>
                            <?php } ?>

                            <?php if ($JOBS['color'] != "") { ?>
                                <tr>
                                    <td><?= $this->lang('color') ?></td>
                                    <td><?= decrypt_text($JOBS['color']); ?></td>
                                </tr>
                            <?php } ?>
                            <?php if ($JOBS['postage'] != "") { ?>
                                <tr>
                                    <td><?= $this->lang('postage') ?></td>
                                    <td><?= decrypt_text($JOBS['postage']); ?></td>
                                </tr>
                            <?php } ?>

                            <tr>
                                <td><?= $this->lang('status') ?></td>
                                <td><?php echo jobStatus($JOBS['status']); ?></td>
                            </tr>

                            <!---------------------------------------------------------->

                            <?php if ($JOBS['status'] > 0) { ?>

                                <tr>
                                    <td><?= $this->lang('price') ?></td>
                                    <td>
                                        <?php echo $JOBS['price']; ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?= $this->lang('shipping') ?> </td>
                                    <td>
                                        <?php echo $JOBS['shipping_f']; ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td><?= $this->lang('days') ?> </td>
                                    <td>
                                        <?php echo $JOBS['days']; ?>
                                    </td>
                                </tr>
                            <?php } ?>


                            <!---------------------------------------------------------->

                            <?php if ($JOBS['status'] == 1) { ?>
                                <form action="<?= $this->siteUrl() ?>/<?= $this->client_url() ?>/accept_job"
                                      method="post" onsubmit="validate_accept_job(event)">
                                    <?php echo $this->token(); ?>
                                    <input type="hidden" name="id" value="<?php echo $JOBS['id']; ?>">
                                    <tr>
                                        <td><?php echo $this->lang('token'); ?></td>
                                        <td><select class="form-control" name="used_token" id="used_token">
                                                <option value="">select</option>
                                                <?php foreach ($data['tokens'] as $tokensVAL) {

                                                    $date = date_create($tokensVAL['expiry']);
                                                    date_modify($date, "-1 month");
                                                    $start = strtotime(date_format($date, "Y-m-d"));
                                                    $end = strtotime($tokensVAL['expiry']);


                                                    if (time() > $start && time() < $end && $tokensVAL['status'] == 0) { ?>
                                                        <option value="<?php echo $tokensVAL['id']; ?>"><?php echo $tokensVAL['uid']; ?></option>
                                                    <?php }
                                                } ?>

                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><?= $this->lang('action') ?></td>
                                        <td>
                                            <button href="" class="kafe-btn kafe-btn-mint"><i
                                                        class="fa fa-check"></i> <?= $this->lang('accept') ?></button>
                                            &nbsp;
                                </form>
                                <a href="<?= $this->siteUrl() ?>/<?= $this->client_url() ?>/decline_job?id=<?php echo base64_encode($JOBS['id']); ?>"
                                   class="kafe-btn kafe-btn-red"><i
                                            class="fa fa-times"></i> <?= $this->lang('reject') ?></a>
                                </td>
                                </tr>
                            <?php } ?>


                            <?php

                            $quaility_files = 0;
                            foreach ($data['job_action'] as $Action) {
                                if ($Action['action_type'] == 1) {
                                    $quaility_files++;
                                }
                            }
                            ?>

                            <?php if ($JOBS['status'] >= 2 && $JOBS['status'] < 10 && $quaility_files > 0) { ?>

                                <tr>
                                    <td>Quality Assurances</td>
                                    <td>

                                        <?php if ($JOBS['quality_assurances'] == "") { ?>


                                            <a class="btn kafe-btn-red" data-toggle="modal" data-target="#RecheckModal"
                                               Xhref="<?= $this->siteUrl() ?>/<?= $this->client_url() ?>/recheck_job?id=<?php echo base64_encode($JOBS['id']); ?>"><i
                                                        class="fa fa-refresh"></i> Recheck</a>

                                            <a class="btn kafe-btn-mint"
                                               href="<?= $this->siteUrl() ?>/<?= $this->client_url() ?>/quality_assurances?id=<?php echo base64_encode($JOBS['id']); ?>"><i
                                                        class="fa fa-check"></i> Approve</a>

                                        <?php } else {

                                            echo date('d F Y H:i', strtotime($JOBS['quality_assurances']));

                                        } ?>


                                    </td>
                                </tr>
                            <?php } ?>

                            <?php if ($JOBS['status'] >= 3 && $JOBS['status'] < 10) { ?>
                                <tr>
                                    <td>Tracking Number</td>
                                    <td>
                                        <?php if ($JOBS['tracking_number'] == "") { ?>

                                            <a class="btn kafe-btn-mint"
                                               href="<?= $this->siteUrl() ?>/<?= $this->client_url() ?>/request_shipping?id=<?php echo base64_encode($JOBS['id']); ?>"><i
                                                        class="fa fa-check"></i> Waiting for shipping</a>
                                        <?php } else {

                                            echo $JOBS['tracking_number'];

                                        } ?>

                                    </td>
                                </tr>
                            <?php } ?>


                            <?php if ($JOBS['status'] >= 4 && $JOBS['status'] < 10) { ?>

                                <tr>
                                    <td>Complete Date</td>
                                    <td>
                                        <?php if ($JOBS['completed_date'] == "") { ?>

                                            <a class="btn kafe-btn-mint"
                                               href="<?= $this->siteUrl() ?>/<?= $this->client_url() ?>/make_complete?id=<?php echo base64_encode($JOBS['id']); ?>"><i
                                                        class="fa fa-check"></i> Make Complete</a>
                                        <?php } else {

                                            echo date('d F Y H:i', strtotime($JOBS['completed_date']));

                                        } ?>

                                    </td>
                                </tr>


                            <?php } ?>

                            <?php if ($JOBS['status'] == 9 || $JOBS['status'] == 9) { ?>

                                <tr>
                                    <td>Review</td>
                                    <td>
                                        <?php if ($JOBS['review'] == "") { ?>

                                            <form action="<?= $this->siteUrl() ?>/<?= $this->client_url() ?>/submit_review"
                                                  method="post" onsubmit="validate_accept_job(event)">
                                                <?php echo $this->token(); ?>
                                                <input type="hidden" name="id" value="<?php echo $JOBS['id']; ?>">

                                                <textarea name="description_of" class="form-control" rows="4" required
                                                          onchange="refine(this)"></textarea>
                                                <br/>
                                                <button class="btn kafe-btn kafe-btn-mint"><?= $this->lang('submit') ?></button>
                                            </form>
                                        <?php } else {
                                            echo decrypt_text($JOBS['review']);
                                        } ?>
                                    </td>
                                </tr>
                            <?php } ?>


                            </tbody>
                        </table>

                    </div>


                    <br/>
                    
                    <?php if ($JOBS['tracking_number'] != "") { ?>
                        <div class="cardx">


                            <h2>Tracking</h2>

                            <?php

                            // $trackingOBJ = tracking($JOBS['tracking_number']);
                            // $JOBS['tracking_number'] = "1234567891";
                            $trackingOBJ = dhl_track($JOBS['tracking_number']);
                            // print_r("<pre>");
                            if($trackingOBJ->AWBInfo->Status->ActionStatus == "success")
                            {
                            ?>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Date</th>
                                            <th>Time</th>
                                            <th>Location</th>
                                            <th>Description</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            <?php
                                foreach ($trackingOBJ->AWBInfo->ShipmentInfo->ShipmentEvent as $shipEvent) {
                                    echo '<tr>';
                                    echo '<td>' . $shipEvent->Date . '</td>';
                                    echo '<td>' . $shipEvent->Time . '</td>';
                                    echo '<td>' . $shipEvent->ServiceArea->Description . '</td>';
                                    echo '<td>' . $shipEvent->ServiceEvent->Description . '</td>';
                                    echo '</tr>';
                                }
                            }
                            ?>
                                    </tbody>
                                </table>
                        </div>
                        <br/>
                        <br/>
                    <?php } ?>

                    <br/>
                    <br/>
                    <?php if (count($data['job_action']) > 0) { ?>
                        <div class="cardx">


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
                                        <td><?php echo $Action['created_at']; ?></td>
                                        <td><?php if ($Action['from_by'] == 0) {
                                                echo 'Team';
                                            } else {
                                                echo "Client";
                                            } ?></td>
                                        <td><?php if ($Action['action_type'] == 0) {
                                                echo 'Action';
                                            } else {
                                                echo "File Send";
                                            } ?></td>
                                        <td>

                                            <?php

                                            if ($Action['action_type'] == 1) {

                                                $file = $Action['name'];


                                                $lower = strtolower($file);
                                                $expo = explode(".", $lower);
                                                $ext = end($expo);

                                                if ($ext == 'obj' || $ext == 'stl') {
                                                    ?>
                                                    <iframe height="300" style="width: 100%"
                                                            src="<?= $this->siteUrl() ?>/<?= $this->themePath() ?>/<?= $this->theme() ?>/assets/plugins/STL/draw.php?file=<?php echo $file; ?>"></iframe>
                                                    <?php

                                                }


                                                if ($ext == 'jpg' || $ext == 'png') {
                                                    ?>
                                                    <img src="<?php echo $this->siteUrl() . '/uploads/jobs/' . $file; ?>"
                                                         class="img-fluid">
                                                    <?php

                                                }

                                                ?>
                                                <br/>
                                                <a href="<?php echo $this->siteUrl() . '/uploads/jobs/' . $file; ?>"> <i
                                                            class="fa fa-download"></i> Download</a>

                                                <?php

                                            }

                                            ?>

                                            <?php if ($Action['action_type'] == 0) {

                                                echo $Action['name'];


                                            } ?>


                                        </td>
                                    </tr>
                                <?php } ?>
                                </tbody>
                            </table>


                        </div>
                        <br/>
                        <br/>
                    <?php } ?>


                    <?php if (count($data['payments']) > 0) { ?>
                        <div class="cardx">
                            <h2>Payment</h2>
                            <br>
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th><?= $this->lang('payment') ?> #</th>
                                    <th><?= $this->lang('type') ?></th>
                                    <th><?= $this->lang('amount') ?></th>
                                    <th><?= $this->lang('token') ?> #</th>
                                    <th><?= $this->lang('time') ?></th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($data['payments'] as $Payment) { ?>
                                    <tr>
                                        <td><?php echo $Payment['uid']; ?></td>
                                        <td><?php echo $Payment['payment_type']; ?></td>
                                        <td><?php echo $Payment['amount']; ?></td>
                                        <td><?php foreach ($data['tokens'] as $TOK) {
                                                if ($TOK['id'] == $Payment['job_token']) {
                                                    echo $TOK['uid'];
                                                }
                                            } ?></td>
                                        <td><?php echo date('d F Y H:i', strtotime($Payment['created_at'])); ?></td>
                                    </tr>
                                <?php } ?>
                                </tbody>
                            </table>

                        </div>

                    <?php } ?>


                    <br>
                    <br>
                    <div class="cardx">


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
                            } catch (Exception $e) {
                                echo 'Message: ' . $e->getMessage();
                            }

                            foreach ($files as $file) {
                                ?>
                                <tr>
                                    <td><a href="<?php echo $this->siteUrl() . '/uploads/jobs/' . $file; ?>">
                                            <?php echo $file; ?>
                                        </a>
                                    </td>
                                    <td>

                                        <?php

                                        $lower = strtolower($file);
                                        $expo = explode(".", $lower);
                                        $ext = end($expo);

                                        if ($ext == 'obj' || $ext == 'stl') {
                                            ?>
                                            <iframe height="300" style="width: 100%"
                                                    src="<?= $this->siteUrl() ?>/<?= $this->themePath() ?>/<?= $this->theme() ?>/assets/plugins/STL/draw.php?file=<?php echo $file; ?>"></iframe>
                                            <?php

                                        }


                                        if ($ext == 'jpg' || $ext == 'png') {
                                            ?>
                                            <img src="<?php echo $this->siteUrl() . '/uploads/jobs/' . $file; ?>"
                                                 class="img-fluid" style="width:100%;">
                                            <?php

                                        }

                                        if ($ext != 'jpg' && $ext != 'png' && $ext != 'obj' && $ext != 'obj') {
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


                        <br>


                    </div><!-- /.prop-info -->


                <?php } ?>


            </div><!--/ .col-lg-12 -->
        </div><!--/ .row -->

    </div><!--/ .container -->
</section>


<!-- Modal -->
<div id="RecheckModal" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"><?= $this->lang('recheck') ?></h4>
            </div>
            <div class="modal-body">
                <form action="<?= $this->siteUrl() ?>/<?= $this->client_url() ?>/recheck_job?id=<?php echo base64_encode($JOBS['id']); ?>"
                      method="post">
                    <?php echo $this->token(); ?>
                    <label>Note</label>
                    <textarea class="form-control" onchange="refine(this)" rows="5" required name="note"></textarea>
                    <br>
                    <br>

                    <div class="text-right">
                        <button class="btn btn-info"><?= $this->lang('submit') ?></button>
                    </div>

                </form>
            </div>
        </div>

    </div>
</div>

<script type="text/javascript">
    //   	var stl_viewer=new StlViewer
    // (
    // 	document.getElementById("stl_cont"),
    // 	{
    // 		models:
    // 		[
    // 			{filename:"<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/plugins/STL/cubeobj.obj"}
    // 		]
    // 	}
    // );

    
    jQuery(document).ready(function(){
        var $progressDiv = $("#progressBar");  
        var $progressBar = $progressDiv.progressStep();  
        $progressBar.addStep("Post Job");  
        $progressBar.addStep("Payment");  
        $progressBar.addStep("Quality Assurance");  
        $progressBar.addStep("Shipping");  
        $progressBar.refreshLayout();  
        $progressBar.setCurrentStep($("#job_status").val());
    });

</script>
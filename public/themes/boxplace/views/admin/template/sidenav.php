<?php
defined('FIR') OR exit();
/**
 * The template for displaying the footer section
 */
?>
<!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

          <!-- Sidebar user panel (optional) -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="<?=$this->siteUrl().'/'.PUBLIC_PATH.'/'.UPLOADS_PATH?>/admin/<?=e($data['admin']['imagelocation'])?>" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p><?=e($data['admin']['name'])?></p>
              <!-- Status -->
            </div>
          </div>


          <!-- Sidebar Menu -->
          <ul class="sidebar-menu">
            <li class="header"><?=$this->lang('custome')?></li>
            <li class="<?=($data['url'] == 'dashboard' ? ' active' : '')?>">
              <a href="<?=$this->siteUrl()?>/admin/dashboard"><i class='fa fa-dashboard'></i> <span><?=$this->lang('dashboard')?><span></a>
            </li>

            <li class="<?=($data['url'] == 'plans' ? ' active' : '')?>">
              <a href="<?=$this->siteUrl()?>/admin/plans"><i class='fa fa-th'></i> <span><?=$this->lang('plans')?><span></a>
            </li>
            <li class="<?=($data['url'] == 'jobs' ? ' active' : '')?>">
              <a href="<?=$this->siteUrl()?>/admin/jobs"><i class='fa fa-magic'></i> <span><?=$this->lang('jobs')?><span></a>
            </li>
            <li class="<?=($data['url'] == 'chat' ? ' active' : '')?>">
              <a href="<?=$this->siteUrl()?>/admin/chat"><i class='fa fa-comments'></i> <span>Chat<span></a>
            </li>
            <li class="<?=($data['url'] == 'services' ? ' active' : '')?>">
              <a href="<?=$this->siteUrl()?>/admin/services"><i class='fa fa-feed'></i> <span><?=$this->lang('service_category')?><span></a>
            </li>
            <li class="<?=($data['url'] == 'subscription' ? ' active' : '')?>">
              <a href="<?=$this->siteUrl()?>/admin/subscription"><i class='fa fa-star'></i> <span><?=$this->lang('subscription')?><span></a>
            </li>
            <li class="<?=($data['url'] == 'token' ? ' active' : '')?>">
              <a href="<?=$this->siteUrl()?>/admin/token"><i class='fa fa-ticket'></i> <span><?=$this->lang('token')?><span></a>
            </li>
            <li class="<?=($data['url'] == 'job_payments' ? ' active' : '')?>">
              <a href="<?=$this->siteUrl()?>/admin/job_payments"><i class='fa fa-money'></i> <span><?=$this->lang('job_payments')?><span></a>
            </li>
            <li class="treeview<?=($data['url'] == 'freelancers' ? ' active' : '')?>
              <?=($data['url'] == 'clients' ? ' active' : '')?>
              <?=($data['url'] == 'add_freelancer' ? ' active' : '')?>
              ">
              <a href="#"><i class='fa fa-users'></i> <span><?=$this->lang('users')?></span> <i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li><a href="<?=$this->siteUrl()?>/admin/freelancers"><?=$this->lang('freelancers')?></a></li>
                <li><a href="<?=$this->siteUrl()?>/admin/clients"><?=$this->lang('clients')?></a></li>
                <li><a href="<?=$this->siteUrl()?>/admin/adduser"><?=$this->lang('add_freelancer')?></a></li>
              </ul>
            </li>

            
            <li class="treeview<?=($data['url'] == 'settings' ? ' active' : '')?>
       <?=($data['url'] == 'payment_settings' ? ' active' : '')?>
       <?=($data['url'] == 'currency_settings' ? ' active' : '')?>
       <?=($data['url'] == 'email_settings' ? ' active' : '')?>
       <?=($data['url'] == 'how_settings' ? ' active' : '')?>
       <?=($data['url'] == 'add_faq' ? ' active' : '')?>
       <?=($data['url'] == 'faq_settings' ? ' active' : '')?>">
              <a href="#"><i class='fa fa-cogs'></i> <span><?=$this->lang('settings')?></span> <i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">

                
                <li><a href="<?=$this->siteUrl()?>/admin/auth_settings"><?=$this->lang('auth_settings')?></a></li>

                <li><a href="<?=$this->siteUrl()?>/admin/settings/site"><?=$this->lang('site_settings')?></a></li>
                <li><a href="<?=$this->siteUrl()?>/admin/payment_settings/paypal"><?=$this->lang('payment_settings')?></a></li>
                <li><a href="<?=$this->siteUrl()?>/admin/currency_settings/default"><?=$this->lang('currency_settings')?></a></li>
                <li><a href="<?=$this->siteUrl()?>/admin/email_settings"><?=$this->lang('email_settings')?></a></li>
                <li><a href="<?=$this->siteUrl()?>/admin/how_settings/clients"><?=$this->lang('how_settings')?></a></li>
                <li><a href="<?=$this->siteUrl()?>/admin/faq_settings"><?=$this->lang('faq_settings')?></a></li>
              </ul>
            </li>  

            <li class="<?=($data['url'] == 'pages' ? ' active' : '')?>">
              <a href="<?=$this->siteUrl()?>/admin/pages/refund"><i class='fa fa-files-o'></i> <span><?=$this->lang('pages')?></span></a>
            </li>  

            

          
          </ul><!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
      </aside>
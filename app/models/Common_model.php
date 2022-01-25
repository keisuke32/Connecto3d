<?php

namespace Fir\Models;
// require 'vendor/autoload.php';
// use Defuse\Crypto\Key;
// use Defuse\Crypto\Crypto;

class Common_model extends Model {
		
    /**
     * Add User
     *
     */



    public function add($table, $data) {

	    $Insert = $this->db->insert($table,$data);	
		return $this->db->id();  
    }

    public function get($table,$clause=array()) {

        $query = $this->db->select($table,'*',$clause);
        return $query;  
    }

    public function update($table,$data,$where) {
        $query = $this->db->update($table, $data, $where);
        return $query;  
    }

    public function delete($table, $where){
        $query = $this->db->delete($table, $where);
        return $query->rowCount();  
    }


    function check_personal_subscription($user_id){


        // cheeck current subscription 
        $clause['user_id'] = $user_id;
        $clause['status'] = 1;
        $subscriptionDATA = Common_model::get('subscription',$clause);

        if ($subscriptionDATA) {
            $expiry = "";
            foreach ($subscriptionDATA as $subscriptionDATAVAL) {
                if (strtotime($expiry)<strtotime($subscriptionDATAVAL['expiry'])) {
                    $expiry = $subscriptionDATAVAL['expiry'];
                }
            }

            if (strtotime($expiry)>time()) {
                // echo $expiry;
                return 1;
            }
            
        }

        return 0;
     

    }




    function get_subscription_id($user_id){


        // cheeck current subscription 
        $clause['user_id'] = $user_id;
        $clause['status'] = 1;
        $subscriptionDATA = Common_model::get('subscription',$clause);

        if ($subscriptionDATA) {
            $expiry = "";
            $subscription_id = 0;
            foreach ($subscriptionDATA as $subscriptionDATAVAL) {
                if (strtotime($expiry)<strtotime($subscriptionDATAVAL['expiry'])) {
                    $expiry = $subscriptionDATAVAL['expiry'];
                    $subscription_id = $subscriptionDATAVAL['id'];
                }
            }

            if (strtotime($expiry)>time()) {
                // echo $expiry;
                return $subscription_id;
            }
            
        }

        return 0;
     

    }




    function get_plan_id($user_id){


        // cheeck current subscription 
        $clause['user_id'] = $user_id;
        $clause['status'] = 1;
        $subscriptionDATA = Common_model::get('subscription',$clause);

        if ($subscriptionDATA) {
            $expiry = "";
            $plan_id = 0;
            foreach ($subscriptionDATA as $subscriptionDATAVAL) {
                if (strtotime($expiry)<strtotime($subscriptionDATAVAL['expiry'])) {
                    $expiry = $subscriptionDATAVAL['expiry'];
                    $plan_id = $subscriptionDATAVAL['plan_id'];
                }
            }

            if (strtotime($expiry)>time()) {
                // echo $expiry;
                return $plan_id;
            }
            
        }

        return 0;
     

    }



    function get_plan_data($user_id){


        // cheeck current subscription 
        $clause['user_id'] = $user_id;
        $clause['status'] = 1;
        $subscriptionDATA = Common_model::get('subscription',$clause);

        if ($subscriptionDATA) {
            $expiry = "";
            $plan_id = 0;
            $data = array();
            foreach ($subscriptionDATA as $subscriptionDATAVAL) {
                if (strtotime($expiry)<strtotime($subscriptionDATAVAL['expiry'])) {
                    $expiry = $subscriptionDATAVAL['expiry'];
                    $data = $subscriptionDATAVAL;
                }
            }

            if (strtotime($expiry)>time()) {
                // echo $expiry;
                return $data;
            }
            
        }

        return 0;
     

    }



    function registration_string($name="",$password=""){

        return '<h3>Hello '.$name.' !</h3>
        <p>You Are Registered Successfully .</p>
        <p>Your password is  ('.$password.').</p>
        ';

    }

    function job_create_clinet($name="",$job=""){

        return '<h3>Hello '.$name.' !</h3>
        <p>Your job #'.$job.' created Successfully .</p>
        ';

    }

    function job_create_freelance($name="",$job=""){

        return '<h3>Hello '.$name.' !</h3>
        <p>job #'.$job.' Incoming for Action .</p>
        ';

    }

    function price_reply_freelancer($name="",$job=""){

        return '<h3>Hello '.$name.' !</h3>
        <p>You Replied on job #'.$job.' to client .</p>
        ';

    }

    function price_reply_client($name="",$job=""){

        return '<h3>Hello '.$name.' !</h3>
        <p>Freelancer Replied on job #'.$job.'  .</p>
        ';

    }


    function job_action($name="",$job="",$action=""){

        return '<h3>Hello '.$name.' !</h3>
        <p>job #'.$job.' has been '.$action.'.</p>
        ';

    }



    function plan_string($name="",$plan_name=""){

        return '<h3>Hello '.$name.' !</h3>
        <p>Your Plan '.$plan_name.' ACtivated Successfully .</p>
        ';

    }



    function job_status_client($time=""){

        return array(0 => 'Creating',
                        1 => 'Sending',
                        2 => '<b class="text-success"><i class="fa fa-check"></i> Payment made</b>',
                        10 => '<b class="text-danger"><i class="fa fa-times"></i> Decline by You</b>');




    }


    function job_status_freelancer(){

        return array(0 => 'No Action By Team',
                        1 => 'Price Sended',
                        2 => '<b class="text-success"><i class="fa fa-check"></i> Accepted By Client</b>',
                        10 => '<b class="text-danger"><i class="fa fa-times"></i> Decline by client</b>');


        
    }

	
    /**
     * Update
     *
     */

    function email($to="",$subject="",$message=""){

                  $mail_text = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">

<head>
    <!--[if gte mso 9]><xml>
<o:OfficeDocumentSettings>
<o:AllowPNG/>
<o:PixelsPerInch>96</o:PixelsPerInch>
</o:OfficeDocumentSettings>
</xml><![endif]-->
    <title>Christmas Email template</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0 ">
    <meta name="format-detection" content="telephone=no">
    <!--[if !mso]><!-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <!--<![endif]-->
    <style type="text/css">
        body {
            margin: 0 !important;
            padding: 0 !important;
            -webkit-text-size-adjust: 100% !important;
            -ms-text-size-adjust: 100% !important;
            -webkit-font-smoothing: antialiased !important;
        }
        
        img {
            border: 0 !important;
            outline: none !important;
        }
        
        p {
            Margin: 0px !important;
            Padding: 0px !important;
        }
        
        table {
            border-collapse: collapse;
            mso-table-lspace: 0px;
            mso-table-rspace: 0px;
        }
        
        td,
        a,
        span {
            border-collapse: collapse;
            mso-line-height-rule: exactly;
            color:black;
        }
        
        .ExternalClass * {
            line-height: 100%;
        }
        
        .em_defaultlink a {
            color: inherit !important;
            text-decoration: none !important;
        }
        
        span.MsoHyperlink {
            mso-style-priority: 99;
            color: inherit;
        }
        
        span.MsoHyperlinkFollowed {
            mso-style-priority: 99;
            color: inherit;
        }
        
        @media only screen and (min-width:481px) and (max-width:699px) {
            .em_main_table {
                width: 100% !important;
            }
            .em_wrapper {
                width: 100% !important;
            }
            .em_hide {
                display: none !important;
            }
            .em_img {
                width: 100% !important;
                height: auto !important;
            }
            .em_h20 {
                height: 20px !important;
            }
            .em_padd {
                padding: 20px 10px !important;
            }
        }
        
        @media screen and (max-width: 480px) {
            .em_main_table {
                width: 100% !important;
            }
            .em_wrapper {
                width: 100% !important;
            }
            .em_hide {
                display: none !important;
            }
            .em_img {
                width: 100% !important;
                height: auto !important;
            }
            .em_h20 {
                height: 20px !important;
            }
            .em_padd {
                padding: 20px 10px !important;
            }
            .em_text1 {
                font-size: 16px !important;
                line-height: 24px !important;
            }
            u + .em_body .em_full_wrap {
                width: 100% !important;
                width: 100vw !important;
            }
        }


        .btn-info {
    color: #fff;
    background-color: #5bc0de;
    border-color: #46b8da;
}
.btn {
    display: inline-block;
    margin-bottom: 0;
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    background-image: none;
    border: 1px solid transparent;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    border-radius: 4px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}
    </style>
</head>

<body class="em_body" style="margin:0px; padding:0px;" bgcolor="#efefef">
    <table class="em_full_wrap" valign="top" width="100%" cellspacing="0" cellpadding="0" border="0" bgcolor="#efefef" align="center">
        <tbody>
            <tr>
                <td valign="top" align="center">
                    <table class="em_main_table" style="width:700px;" width="700" cellspacing="0" cellpadding="0" border="0" align="center">
                        <!--Header section-->
                        <tbody>
                            <tr>
                                <td>&nbsp;</td>
                            <tr>

                            <!--//Header section-->
                            <!--Content Text Section-->
                            <tr>
                                <td style="padding:35px 70px 30px;" class="em_padd" valign="top" bgcolor="white" align="center">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center">
                                        <tbody>
                                            <tr>
                                                <td style="font-family:"Open Sans", Arial, sans-serif; font-size:16px; line-height:30px; color:black;" valign="top">
                                                '.$message.'
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>

                            <!--//Content Text Section-->
                            <!--Footer Section-->
                            <tr>
                                <td style="padding:38px 30px;" class="em_padd" valign="top" bgcolor="#f6f7f8" align="center">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center">
                                        <tbody>
                                            <tr>
                                                <td style="font-family:"Open Sans", Arial, sans-serif; font-size:11px; line-height:18px; color:black;" valign="top" align="center">

                                                    <br> <span style="color:black;">© '.date('Y').'  Connecto3d.com. All Rights Reserved.</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="em_hide" style="line-height:1px;min-width:700px;background-color:#ffffff;"><img alt="" src="images/spacer.gif" style="max-height:1px; min-height:1px; display:block; width:700px; min-width:700px;" width="700" border="0" height="1"></td>
                            </tr>
                            
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
    <div class="em_hide" style="white-space: nowrap; display: none; font-size:0px; line-height:0px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
</body>

</html>';

// Always set content-type when sending HTML email

$headers = "";
$headers .= "From: Connecto3d <noreply@connecto3d.com> \r\n";
$headers .= "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

            if (mail($to,$subject,$mail_text,$headers)) {
                return 1;
            }else{
                return 0;
            }
    }



    public function make_invoice($type="",$type_id=""){



        $settings = Common_model::get('settings');




        $sitename = $settings[0]['sitename'];
        $contact_email = $settings[0]['contact_email'];
        $contact_phone = $settings[0]['contact_phone'];

        $client_name = "";
        $client_email = "";

        $description = "";
        $price = 0;
        $invoice_number = "";
        $invoice_date = "";




        if ($type=="subscription") {
            $subscription = Common_model::get('subscription',array('id'=>$type_id));

            $description = "Subscription Plan -".$subscription[0]['plan_name'];
            $price = $subscription[0]['plan_price'];
            $invoice_number = $subscription[0]['uid'];
            $invoice_date = date('d-m-Y',strtotime($subscription[0]['updated_at']));

            $user_data = Common_model::get('user',array('id'=>$subscription[0]['user_id']));

            $client_name = $user_data[0]['name'];
            $client_email = $user_data[0]['email'];
        }





        if ($type=="job_payments") {
            $job_payments = Common_model::get('job_payments',array('id'=>$type_id));
            $jobs = Common_model::get('jobs',array('id'=>$job_payments[0]['job_id']));

            $description = "Payment For Job #".$jobs[0]['job_id'];
            $price = $job_payments[0]['amount'];
            $invoice_number = $job_payments[0]['uid'];
            $invoice_date = date('d-m-Y',strtotime($job_payments[0]['updated_at']));

            $user_data = Common_model::get('user',array('id'=>$job_payments[0]['user_id']));

            $client_name = $user_data[0]['name'];
            $client_email = $user_data[0]['email'];
        }

        $subtotal = $price;
        $total = $subtotal;

        

        $message = '<style>

        .container{
            width:100%;
        }
        .flex{
            padding:10px;
            display:flex;
        }
        .col5x{
            width:50%;
            padding:10px;
        }
        .col3x{
            width:33%;
            padding:10px;
        }
        .text-left{
            text-align: left;

        }
        .text-right{
            text-align: right;
            
        }
        .text-center{
            text-align: center;
            
        }
        .pad{
            padding:10px;
        }
        

        .table {
                width:100%;
      border-collapse: collapse;
    }

    .table, .th, .td {
      border: 1px solid black;
      padding:3px;
    }


                </style>';

        $message.='<div class="container">

        <center><h1>Invoice</h1></center>
        <div class="flex">

            <div class="col3x">
            <b>From</b>
            <p>'.$sitename.'</p>
            <p>'.$contact_email.'</p>
            <p>'.$contact_phone.'</p>
            </div>

            <div class="col3x">
            <b>To</b>
            <p>'.$client_name.'</p>
            <p>'.$client_email.'</p>
            </div>

            <div class="col3x">
            <b>Invoice : #'.$invoice_number.'</b>
            <p>Date : '.$invoice_date.'</p>
            </div>

        </div>

        <div class="pad">
            <center><b>Information</b></center>
            <br/>
            <table class="table">
            <tr>
            <th class="th" >#</th>
            <th class="th">Description</th>
            <th class="th">Price</th>
            </tr>
            <tr>
            <td class="td">1</td>
            <td class="td">'.$description.'</td>
            <td class="td">'.$price.'</td>
            </tr>
            </table>
            
         </div>
         <br/>


        <div class="flex">



            <div class="col5x">

            </div>

            <div class="col5x text-right">
            <b>Total : '.$price.'</b>
            </div>

        </div>




        </div>';

        return $message;

    }


    public function flash($job_id="",$subject="",$message=""){

        $jobData = Common_model::get('jobs',array('id'=>$job_id));

        $clientData = Common_model::get('user',array('id'=>$jobData[0]['user_id']));
        $teamData = Common_model::get('user',array('id'=>$jobData[0]['freelancer_id']));


        $_SESSION['message'][] = ['success', $subject];

        $job_id = $jobData[0]['job_id'];

        $email_message = 'Your Job #'.$job_id.' '.$message;


        Common_model::email($clientData[0]['email'],$subject,$email_message);
        Common_model::email($teamData[0]['email'],$subject,$email_message);

        return 1;

    }



    
	
   	
	
}
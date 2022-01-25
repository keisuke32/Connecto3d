<?php

require 'vendor/autoload.php';
require 'mailjet/vendor/autoload.php';
require "easypost/vendor/autoload.php";
require "trackingmore/track.class.php";
require "dhl-tracking/dhl_tracking.class.php";


\EasyPost\EasyPost::setApiKey('EZAKc35dd3e83d11446ab2a1a202e8d637e48z5fgjyqklCvzEycyN83xg');
include('vendor/php-sentiment-analyser-master/lib/sentiment_analyser.class.php');


use Defuse\Crypto\Key;
use Defuse\Crypto\Crypto;
use \Mailjet\Resources;

define('FIR', true);

// Database Settings
define('DB_TYPE', getenv('DB_TYPE'));
define('DB_HOST', getenv('DB_HOST'));
define('DB_USERNAME', getenv('DB_USERNAME'));
define('DB_DATABASE', getenv('DB_DATABASE'));
define('DB_PASSWORD', getenv('DB_PASSWORD'));
define('DB_PREFIX', '');
define('DB_CHARSET', 'utf8mb4');
define('DB_COLLATION', 'utf8mb4_unicode_ci');

// External Paths
define('URL_PATH', getenv('URL_PATH'));

// Internal Paths
define('PUBLIC_PATH', 'public');
define('THEME_PATH', 'themes');
define('STORAGE_PATH', 'storage');
define('UPLOADS_PATH', 'uploads');

// Miscellaneous
define('COOKIE_PATH', preg_replace('|https?://[^/]+|i', '', URL_PATH) . '/');

// Config Variables

$GLOBALS['config'] = array(
    'remember' => array(
        'cookie_name' => 'hash',
        'cookie_expiry' => 604800
    ),
    'session' => array(
        'session_admin' => 'waveAdmin',
        'session_name' => 'waveUser',
        'token_name' => 'token'
    )
);

// Freelancer User Roles
define('FREELANCER', getenv('FREELANCER_ROLE_CAPITAL_LETTERS'));
define('FREELANCER_URL', getenv('FREELANCER_ROLE_SMALL_LETTERS'));
define('FREELANCERS', getenv('FREELANCER_ROLE_CAPITAL_LETTERS_PLURAL'));
define('FREELANCERS_URL', getenv('FREELANCER_ROLE_SMALL_LETTERS_PLURAL'));

// Client User Roles
define('CLIENT', getenv('CLIENT_ROLE_CAPITAL_LETTERS'));
define('CLIENT_URL', getenv('CLIENT_ROLE_SMALL_LETTERS'));
define('CLIENTS', getenv('CLIENT_ROLE_CAPITAL_LETTERS_PLURAL'));
define('CLIENTS_URL', getenv('CLIENT_ROLE_SMALL_LETTERS_PLURAL'));

define('GOOGLE_MAP_API', 'AIzaSyAv0fIYsaGbm4wFBBeXY5MRmnYWxDjMRBo');


function rko()
{
    return 'rko';
}


function loadEncryptionKeyFromConfig()
{
    $keyAscii = 'def0000030ed4815aa7e6c9335416beb636400388be236d6bc1e82049b8daf1aa42eeec16d7d20bc9af41d07ded247e04cac47717515d87e29a4bbfd429e492fc4e46151 ';
    return Key::loadFromAsciiSafeString($keyAscii);
}


function encrypt_text($string = "")
{
    $string = (string)$string;
    $key = loadEncryptionKeyFromConfig();
    try {
        $ciphertext = Crypto::encrypt($string, $key);
        return $ciphertext;
    } catch (Exception $e) {
        return $string;
    }


}


function decrypt_text($string = "")
{
    $string = (string)$string;
    $key = loadEncryptionKeyFromConfig();
    try {
        $decryptr = Crypto::decrypt($string, $key);
        return $decryptr;
    } catch (Exception $e) {
        return $string;
    }
}


function senti($string = "")
{

    $sa = new SentimentAnalysis();
    $sa->initialize();
    $sa->analyse($string);
    $score = $sa->return_sentiment_rating();
    //echo $string;
    //var_dump($score);
    return $score;
}

function jobStatus($index = "")
{

    $status = array(
        '0' => 'Job sent',
        '1' => 'Project Cost',
        '2' => 'Project Paid',
        '3' => 'Quality Assurance',
        '4' => 'Sending- Tracking Number',
        '9' => 'Completed Job',
        '10' => 'Job rejected'
    );

    if (isset($status[$index])) {
        return $status[$index];
    } else {
        return 'unknown';
    }

}

function sendCloudMessaseToAndroid($deviceToken = "", $title="", $body="",$push_data = array(), $message = "")
{
    $url = 'https://fcm.googleapis.com/fcm/send ';
    $serverKey = "AAAApQe4idM:APA91bHLsc_A15RdfJe7jb9K9PhD8SiCpbEhK29IK0RPNKKiQa7HMmuSVqsD_INLvfSNmysUU19eajTV4JaHKaAAgJvnEHOk8DGxr95RsfxYCYy_j3o9_u_03x-8hMXp-FoYqjnZof8P";
    $msg = array(
        'message' => $message,
    );

    $msg = array_merge($msg, $push_data);
    $fields = array();
    $fields['data'] = $msg;
    if (is_array($deviceToken)) {
        $fields['registration_ids'] = $deviceToken;
    } else {
        $fields['to'] = $deviceToken;
    }
    $fields['notification'] = [
        "body" => $body,
        "title" => $title,
    ];
    // dd($fields);
    $headers = array(
        'Content-Type:application/json',
        'Authorization:key=' . $serverKey
    );
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($fields));
    $result = curl_exec($ch);
    if ($result === FALSE) {
        die('FCM Send Error: ' . curl_error($ch));
    }
    curl_close($ch);
    return $result;
}


function api_mail()
{

    $mj = new \Mailjet\Client('f634084328f30b60bb50464567cdac21', '800ec10e6f26086e829647ae8ae84e5a', true, ['version' => 'v3.1']);
    $body = [
        'Messages' => [
            [
                'From' => [
                    'Email' => "suport@connecto3d.com",
                    'Name' => "rrgs"
                ],
                'To' => [
                    [
                        'Email' => "rrgs1288@mailinator.com",
                        'Name' => "rrgs"
                    ]
                ],
                'Subject' => "Greetings from test Mailjet.",
                'TextPart' => "My first Mailjet email",
                'HTMLPart' => "<h3>Dear passenger 1, welcome to <a href='https://www.mailjet.com/'>Mailjet</a>!</h3><br />May the delivery force be with you!",
                'CustomID' => "AppGettingStartedTest"
            ]
        ]
    ];
    $response = $mj->post(Resources::$Email, ['body' => $body]);

    print_r($response->getData());


    //$response->success() && var_dump($response->getData());


}


function track($track_nnumber = "")
{

    $output = array('status' => 0, 'data' => array());

    try {

        $output['data'] = \EasyPost\Tracker::retrieve($track_nnumber);
        $output['status'] = 1;
    } catch (Exception $e) {
        $output['data'] = $e->getMessage();
    }
    return $output;

}


function tracking($trackingNumber = "")
{

    $trackingNumber = '771093834889';
    // $trackingNumber = '1Z5A8W006792207414';

    $track = new Trackingmore;
    $trackingNumber = $trackingNumber;
    $track = $track->detectCarrier($trackingNumber);

    $carrier = "";


    if ($track['meta']['code'] == 200) {

        if (isset($track['data'][0]['code'])) {
            $carrier = $track['data'][0]['code'];
        } else {
            $re['meta']['code'] = 9000;
            return $re;
        }

    }


    $track = new Trackingmore;
    $items = array(
        array(
            'title' => 'trc_' . $trackingNumber,
            'tracking_number' => $trackingNumber,
            'carrier_code' => $carrier,
            'lang' => 'en'
        ),
    );
    $track = $track->createMultipleTracking($items);


    $track = new Trackingmore;
    $track = $track->getSingleTrackingResult($carrier, $trackingNumber, 'en');

    return $track;

}

function dhl_track($track_nnumber = "")
{
    // $track = new dhl_tracking('live');
    // $track->setAuth("DServiceVal", "testServVal");
    // $track_one = "8564385550";
    // $req_one = $track->single($track_one);

    // print "\n<p>Single Result</p>\n";
    // print "\n<pre>\n";
    // print_r($req_one);
    // print "\n</pre>";
    // die();
    $data = '<?xml version="1.0" encoding="UTF-8"?>
    <req:KnownTrackingRequest xmlns:req="http://www.dhl.com" 
                            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
                            xsi:schemaLocation="http://www.dhl.com
                            TrackingRequestKnown.xsd">
        <Request>
            <ServiceHeader>
                <MessageTime>'.date('c').'</MessageTime>
                <MessageReference>1234567890123456789012345678</MessageReference>
                <SiteID>DServiceVal</SiteID>
                <Password>testServVal</Password>
            </ServiceHeader>
        </Request>
        <LanguageCode>en</LanguageCode>
        <AWBNumber>' . $track_nnumber . '</AWBNumber>
        <LevelOfDetails>ALL_CHECK_POINTS</LevelOfDetails>
    </req:KnownTrackingRequest>';

    $tuCurl = curl_init();
    curl_setopt($tuCurl, CURLOPT_URL, "https://xmlpitest-ea.dhl.com/XMLShippingServlet");
    curl_setopt($tuCurl, CURLOPT_PORT , 443);
    curl_setopt($tuCurl, CURLOPT_VERBOSE, 0);
    curl_setopt($tuCurl, CURLOPT_HEADER, 0);
    curl_setopt($tuCurl, CURLOPT_POST, 1);
    curl_setopt($tuCurl, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($tuCurl, CURLOPT_POSTFIELDS, $data);
    curl_setopt($tuCurl, CURLOPT_HTTPHEADER, array("Content-Type: text/xml","SOAPAction: \"/soap/action/query\"", "Content-length: ".strlen($data)));

    $tuData = curl_exec($tuCurl);
    curl_close($tuCurl);
    $simple = $tuData;
    $xml = simplexml_load_string($tuData);
    return $xml;
}
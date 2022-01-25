<?php

include ('lib/sentiment_analyser.class.php');
$sa = new SentimentAnalysis();
$sa->initialize();
$sa->analyse("asshole.");
$score = $sa->return_sentiment_rating();
var_dump($score);

?>
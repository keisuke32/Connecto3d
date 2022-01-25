<?php

require 'vendor/autoload.php';
use Defuse\Crypto\Key;
use Defuse\Crypto\Crypto;

$key = Key::createNewRandomKey();
echo $key->saveToAsciiSafeString(), "\n";

function loadEncryptionKeyFromConfig()
{
    $keyAscii = 'def0000028ed4515aa6ec22a61b4aa2a1117afa5873cb17226fc4695b25f6219a6970b675f7883c321c31fbd5567f3890a9ad6665aaa648d254789c85adfa674ca65255b';//'key.txt';// ... load the contents of /etc/daveapp-secret-key.txt
    return Key::loadFromAsciiSafeString($keyAscii);
}

$secret_data = "RKO";

// ...
$key = loadEncryptionKeyFromConfig();
// ...
$ciphertext = Crypto::encrypt($secret_data, $key);

$decryptr = Crypto::decrypt($ciphertext,$key);

echo $ciphertext;
echo '<pre>';
echo $decryptr;

?>
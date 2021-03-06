<?php

use CODOF\Util;

$smarty = \CODOF\Smarty\Single::get_instance();
$smarty->assign('msg', '');

global $CONF;
if (isset($_GET['logout'])) {

    session_destroy();
    $smarty->assign('logged_in', 'no');
    $smarty->assign('A_username', 'Hello');
}

if (isset($_POST['username'])) {

    $login = new \CODOF\User\Login(\DB::getPDO());


    $login->identifier = $_POST['username'];
    $login->password = $_POST['password'];

    $result = $login->process_login();

    if ($result['msg'] == 'success') {

        $user = CODOF\User\User::get();

        if ($user->hasRoleId(ROLE_ADMIN) || $user->hasRoleId(ROLE_MODERATOR)) {

            $avatar = str_replace(ADMIN, "", $user->avatar);
            $_SESSION[UID . 'A_loggedin_created'] = date("F j, Y", $user->created);
            $_SESSION[UID . 'A_loggedin_avatar'] = $avatar;
            $_SESSION[UID . 'A_loggedin_username'] = $login->identifier;

            if ($user->hasRoleId(ROLE_ADMIN)) {
                $_SESSION[UID . 'A_loggedin'] = 'admin';
            } else {
                $_SESSION[UID . 'A_loggedin'] = 'moderator';
            }
            header("Location: index.php");
        } else {

            $smarty->assign('msg', 'You do not have enough permissions');
        }
    } else {
        $smarty->assign('msg', 'Invalid Username or Password');
    }
}

$loginBy = Util::get_opt("login_by");
if($loginBy === "EMAIL") {
    $smarty->assign("name_placeholder", _t("email"));
} else if ($loginBy === "USERNAME") {
    $smarty->assign("name_placeholder", _t("username"));
} else {
    $smarty->assign("name_placeholder", _t("username or email"));
}

$content = $smarty->fetch('login.tpl');


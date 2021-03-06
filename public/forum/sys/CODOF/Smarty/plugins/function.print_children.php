<?php

/*
 * Smarty plugin
 * -------------------------------------------------------------
 * File:     function.eightball.php
 * Type:     function
 * Name:     eightball
 * Purpose:  outputs a random magic answer
 * -------------------------------------------------------------
 */

/*
 * @CODOLICENSE
 */

function smarty_function_print_children($params) {

    static $indentation = '&nbsp;&nbsp;&nbsp;&nbsp;';

    $el = "li";
    if (isset($params['el'])) {

        $el = $params['el'];
    }

    if (!isset($params['indent'])) {
        $params['indent'] = $indentation;
    }

    if (property_exists($params['cat'], 'children')) {

        foreach ($params['cat']->children as $child) {

            if ($el == 'li') {

                echo '<' . $el . ' id="'.$child->cat_id.'" class="dropdown-item" role="presentation" data-alias="' . $child->cat_alias . '" >' . $params['indent'] . $child->cat_name . '</' . $el . '>';
            } else if ($el == 'option') {

                echo '<' . $el . ' value="'.$child->cat_id.'">'. $params['indent'] . $child->cat_name.'</' . $el . '>';
            }

            smarty_function_print_children(array("cat" => $child, "indent" => $params['indent'] . $indentation, "el" => $el));
        }
    }
}

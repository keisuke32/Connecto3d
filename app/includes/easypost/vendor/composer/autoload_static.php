<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitcae20edd13e8e03edd3bc0cbb3e7a5bb
{
    public static $prefixesPsr0 = array (
        'E' => 
        array (
            'EasyPost' => 
            array (
                0 => __DIR__ . '/..' . '/easypost/easypost-php/lib',
            ),
        ),
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixesPsr0 = ComposerStaticInitcae20edd13e8e03edd3bc0cbb3e7a5bb::$prefixesPsr0;

        }, null, ClassLoader::class);
    }
}
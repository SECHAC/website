<?php

define("ANAX_INSTALL_PATH", realpath(__DIR__ . "/../vendor/mos/anax"));
define("ANAX_APP_PATH", __DIR__ . "/..");

//require ANAX_APP_PATH . "/config/error_reporting.php";

require __DIR__ . "/../vendor/autoload.php";

$di  = new \Anax\DI\CDIFactoryDefault();
$app = new \Anax\Kernel\CAnax($di);

$app->url->setUrlType(\Anax\Url\CUrl::URL_CLEAN);

$routes = ANAX_INSTALL_PATH . "/config/routes.php";
if (is_file(ANAX_APP_PATH . "/config/routes.php")) {
    $routes = ANAX_APP_PATH . "/config/routes.php";
}
require $routes;

$app->router->handle();
$app->theme->render();

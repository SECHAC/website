<?php
/**
 * Config-file for Anax, theme related settings, return it all as array.
 *
 */
return [

    /**
     * Base view to start render page from.
     */
    "view" => [
        "template" => "default/index",

        "data" => [
            // General
            "htmlClass"     => ["grillcon"],
            "bodyClass"     => [],
            "lang"          => "sv",
            "charset"       => "utf-8",
            "title_append"  => " | GrillCon",
            "favicon"       => "img/favicon/favicon_256_256.png",

            // Style and stylesheets
            "stylesheets" => ["css/style.min.css?v=4"],
            "styleInline" => null,

            // JavaScript
            "javascripts" => ["js/mos-theme/responsive-menu.min.js"],
        ],
    ],



    /**
     * Add default views to always include.
     */
    "views" => [
        [
            "region" => "header",
            "template" => "default/header",
            "data" => [
                "homeLink"      => "",
                "siteLogoText"  => "GrillCon",
                "siteLogoTextIcon" => "img/logo/grillcon_logo_39x40.png",
                "siteLogoTextIconAlt" => "Liten logo",
                "siteLogo"      => null, //"img/anax.png",
                "siteLogoAlt"   => null, //"Anax Logo",
                "siteTitle"     => null, //"Anax PHP framework",
                "siteSlogan"    => null, //"Reusable modules for web development"
            ],
            "sort" => 2
        ],
        [
            "region" => "header",
            "template" => "default/image",
            "data" => [
                "class" => "logo-1",
                "src" => "img/favicon/favicon_256_256.png",
                "alt" => "Logo",
            ],
            "sort" => -1
        ],
        [
            "region" => "header",
            "template" => "default/content",
            "data" => [
                "content" => "<div id=\"fb-root\"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = \"//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.6\";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>"
            ],
        ],
        [
            "region" => "navbar2",
            "template" => "default/navbar",
            "data" => [],
            "sort" => 1
        ],
        [
            "region" => "footer",
            "template" => "default/columns",
            "data" => [
                "class"  => "footer-column",
                "columns" => [
                    [
                        "contentRoute" => "block/footer-col-1",
                    ],
                    [
                        "contentRoute" => "block/footer-col-2",
                    ],
                    [
                        "contentRoute" => "block/footer-col-3",
                    ]
                ]
            ],
            "sort" => 1
        ],
        [
            "region" => "footer",
            "template" => "default/block",
            "data" => [
                "class" => "site-footer",
                "contentRoute" => "block/footer",
            ],
            "sort" => 2
        ],
        [
            "region" => "body-end",
            "template" => "default/google-analytics",
            "data" => [
                "account" => "UA-22093351-2",
            ],
            "sort" => -1
        ],
    ],
];

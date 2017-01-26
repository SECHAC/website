<?php
/**
 * Config-file for navigation bar.
 *
 */
return [

    /**
     * Callback tracing the current selected menu item base on scriptname
     *
     */
    "callback" => function ($url) {
        if ($url == $this->di->get("request")->getCurrentUrl(false)) {
            return true;
        }
    },



    /**
     * Callback to check if current page is a decendant of the menuitem, this check applies for those
     * menuitems that has the setting "mark-if-parent" set to true.
     *
     */
    "is_parent" => function ($parent) {
        $route = $this->di->get("request")->getRoute();
        return !substr_compare($parent, $route, 0, strlen($parent));
    },



   /**
     * Callback to create the url, if needed, else comment out.
     *
     */
   /*
    "create_url" => function ($url) {
        return $this->di->get("url")->create($url);
    },
    */



    // Name of this menu
    "navbarTop" => [
        // Use for styling the menu
        "wrapper" => null,
        "class" => "rm-default rm-desktop",
     
        // Here comes the menu strcture
        "items" => [

            "blog" => [
                "text"  =>"Blogg",
                "url"   => $this->di->get("url")->create("blogg"),
                "title" => "Developer blog",
                "mark-if-parent" => true,
            ],
            "galleri" => [
                "text"  =>"Galleri",
                "url"   => $this->di->get("url")->create("blogg/grillcon-galleri"),
                "title" => "GrillCon Galleri",
                "mark-if-parent" => true,
            ],
            "arkiv" => [
                "text"  =>"Arkiv",
                "url"   => $this->di->get("url")->create("arkiv"),
                "title" => "GrillCon Arkiv",
                "mark-if-parent" => true,
            ],
            "about" => [
                "text"  =>"Om",
                "url"   => $this->di->get("url")->create("om-grillcon"),
                "title" => "Om GrillCon",
                "mark-if-parent" => true,
            ],

            "github" => [
                "text"  =>"GitHub",
                "url"   => "https://github.com/dbwebb-se/grillcon",
                "title" => "GitHub repo for GrillCon"
            ],
        ],
    ],




    // Name of this menu
    "navbarMax" => [
        // Use for styling the menu
        "id" => "rm-menu",
        "wrapper" => null,
        "class" => "rm-default rm-mobile",
     
        // Here comes the menu strcture
        "items" => [

            "blog" => [
                "text"  =>"Blogg",
                "url"   => $this->di->get("url")->create("blogg"),
                "title" => "Developer blog",
                "mark-if-parent" => true,
            ],
            "galleri" => [
                "text"  =>"Galleri",
                "url"   => $this->di->get("url")->create("blogg/grillcon-galleri"),
                "title" => "GrillCon Galleri",
                "mark-if-parent" => true,
            ],
            "arkiv" => [
                "text"  =>"Arkiv",
                "url"   => $this->di->get("url")->create("arkiv"),
                "title" => "GrillCon Arkiv",
                "mark-if-parent" => true,
            ],
            "about" => [
                "text"  =>"Om",
                "url"   => $this->di->get("url")->create("om-grillcon"),
                "title" => "Om GrillCon",
                "mark-if-parent" => true,
            ],

            "github" => [
                "text"  =>"GitHub",
                "url"   => "https://github.com/dbwebb-se/grillcon",
                "title" => "GitHub repo for GrillCon"
            ],

        ],
    ]
];

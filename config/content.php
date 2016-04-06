<?php
/**
 * Config-file for page content.
 *
 */
return [

    // Use for styling the menu
    "basepath" => ANAX_APP_PATH . "/content",

    // Use or ignore using the cache, default is false.
    // During development it might be good to ignore the cache, but not
    // for production.
    //"ignoreCache" => true,

    // Default options for textfilter
    "textfilter" => [
        "jsonfrontmatter",
        "yamlfrontmatter",
        "shortcode",
        "markdown",
        "titlefromh1",
        "anchor4Header",
    ],

    "metafilter" => [
        "jsonfrontmatter",
        "yamlfrontmatter",
    ],

    // Default template
    "template" => "default/article",

    // Filter to load content
    "pattern" => "*.md",
    "meta" => ".meta.md",

];

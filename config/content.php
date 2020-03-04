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

    // Default options for textfilter to parse frontmatter, step one
    "textfilter-frontmatter" => [
        "jsonfrontmatter",
        "yamlfrontmatter",
    ],

    // Additional filters to get title
    "textfilter-title" => [
        "markdown",
        "titlefromh1",
    ],

    // Default options for textfilter to parse second step
    // Might update frontmatter
    "textfilter" => [
        "shortcode",
        "markdown",
        "titlefromh1",
        "anchor4Header",
    ],

    // Default template
    "template" => "default/article",

    // Wrapper for section of revision history
    "revision-history" => [
        "start" => "\n\n\n" . t("Revision history") . " {#revision}\n-------------\n\n<span class=\"revision-history\">\n",
        "end"   => "</span>\n",
        "class" => "revision-history",
        "source" => "https://github.com/SECHAC/website/tree/master/content",
    ],

    // Filter to load content
    "pattern" => "*.md",
    "meta" => ".meta.md",
    "author"    => "#author/([^\.]+)#",
    "category"  => "#kategori/([^\.]+)#",
    "pagination" => "sida",

];

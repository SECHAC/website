---
views:
    main:
        template: default/article
        data:
            class: blog

    block-about: false
    article-toc: false

    blog-list:
        region: main
        template: default/blog-list
        sort: 2
        data:
            dateFormat: j F Y
            meta: 
                type: toc

    blog-toc:
        region: sidebar-right
        template: default/blog-toc
        sort: 2
        data:
            meta: 
                type: copy
                view: blog-list

...
GrillCon Blogg
===========================

Om GrillCon och relaterat.

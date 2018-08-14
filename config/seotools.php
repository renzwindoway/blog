<?php

return [
    'meta'      => [
        /*
         * The default configurations to be used by the meta generator.
         */
        'defaults'       => [
            'title'        => "Interior Design Philippines", // set false to total remove
            'description'  => 'High quality window blinds, tint, office furniture, foam bricks, artificial grass & foam bricks distributor in the Philippines. Extended warranty covered!', // set false to total remove
            'separator'    => ' - ',
            'keywords'     => ['Interior Design Philippines','Best Interior Design','Window Blinds Philippines'],
            'canonical'    => false, // Set null for using Url::current(), set false to total remove
        ],

        /*
         * Webmaster tags are always added.
         */
        'webmaster_tags' => [
            'google'    => 'Window Blinds Philippines',
            'bing'      => 'Window Blinds Philippines',
            'alexa'     => 'Window Blinds Philippines',
            'pinterest' => 'Window Blinds Philippines',
            'yandex'    => 'Window Blinds Philippines',
        ],
    ],
    'opengraph' => [
        /*
         * The default configurations to be used by the opengraph generator.
         */
        'defaults' => [
            'title'       => 'Interior Design Philippines', // set false to total remove
            'description' => 'High quality window blinds, tint, office furniture, foam bricks, artificial grass & foam bricks distributor in the Philippines. Extended warranty covered!', // set false to total remove
            'url'         => false, // Set null for using Url::current(), set false to total remove
            'type'        => false,
            'site_name'   => false,
            'images'      => ['https://lh6.googleusercontent.com/proxy/mCpOrzo1vQRH5tGi8Ggog9EQVoW8lJ3xGbXkRYIHEsN03IWxZtJ2R2H6qeZTFRFcFD9GegrxXoCQYL-xLbAjPTlJlGrOyyyFca7X5IS7lcCjQalcJ0G_lURrcgi-kOCL3_obXALfVLaZxEn9_YZH9PdudW87kZVgD-sUJJ0=w128-h72-k-no'],
        ],
    ],
    'twitter' => [
        /*
         * The default values to be used by the twitter cards generator.
         */
        'defaults' => [
          //'card'        => 'summary',
          //'site'        => '@windowaytrading',
        ],
    ],
];

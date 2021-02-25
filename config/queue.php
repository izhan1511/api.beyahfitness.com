<?php

return [
    'default' => 'beanstalkd',

    'beanstalkd' => [
                'driver' => 'beanstalkd',
                'host'   => '127.0.0.1',
                'queue'  => 'default',
                'ttr'    => 3600,
            ],

];

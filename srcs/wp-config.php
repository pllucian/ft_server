<?php

define( 'DB_NAME', 'wordpress' );
define( 'DB_USER', 'root' );
define( 'DB_PASSWORD', '' );
define( 'DB_HOST', 'localhost' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

define( 'AUTH_KEY',         'e?wxmk%c=6|_6-)]8nI&k0v^#8Bi6.l=`Wb%W&[Rim>ms52n=Y<a?Ub8,y<+)$|$' );
define( 'SECURE_AUTH_KEY',  '`.h+L<A06!5hFZ=R2!Nf9@v*m1nP+$ju-RDdG`.8sH.TsK=uL6y2P~K52Az:dx][' );
define( 'LOGGED_IN_KEY',    '~Fq]5J0-{FIY|#+r+{GBu|1+T-GN=7Jo|*n?&I;vEzME$|2OLVQ%b@1e/@*8<a8l' );
define( 'NONCE_KEY',        'cV5Q0bipJ?1;rc 4o%(PoF_16&ZA-_U0N3/2n#+_!hw~Am*sNbA}zB+F;ezvT~J4' );
define( 'AUTH_SALT',        '[{0.0b0?c-4]qlBG6@ZK5}to!:ePu-5L8-=4q(bP2xxIVDz8H3-SCpj|XV4OV)+I' );
define( 'SECURE_AUTH_SALT', 'vGO%vd+-/nXR--h O&|-*|l^e~-!|yX|H=Dm.(cO@//[*.Ic5J+6Ur+0{4HTDvMb' );
define( 'LOGGED_IN_SALT',   '[(tjjlLb_|4cq<tQtBwIcCu=z+^+eva0;31 ;k6) I+op/)KP6Q8?+=CXD(g@#I>' );
define( 'NONCE_SALT',       '|nx8:6I}|fuV2dnuSw?lBD*~FUD-LTGA9fNsRerhK,+.oTmMZ(a~5:+g)=0l+l]y' );

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
?>
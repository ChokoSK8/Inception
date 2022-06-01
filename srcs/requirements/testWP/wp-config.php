<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wpdata' );

/** Database username */
define( 'DB_USER', 'abrun' );

/** Database password */
define( 'DB_PASSWORD', 'abpass' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'DUr w$[M-_;:*HJ@J)>T|g*pz!QFV*+GN{t|3IjWUY5sEYR&ep%`ao;}+q`zS*S*');
define('SECURE_AUTH_KEY',  'jJ<@<%Y4Di D2%{<Zo]M(/sHFw?`uvh$h!{e33TG,~vZ|-6CwQ=8&Ff.-6Kz%OQh');
define('LOGGED_IN_KEY',    '&x#n{FYi|>OBLm~/E?<9]_+++G%)jor`QGGz]<q`yzi8b|`:6<#X5I?|x7l}-=vp');
define('NONCE_KEY',        'lDV1JLMXe40y-X3f1K3civO{SKXx/X*,4g(;.wUyp6nKcol|%dGLY`x>0$oEw_N?');
define('AUTH_SALT',        'f3q^_3P[|-eRrrheRiwb_q7q#O>W@/R#|!Rv!|-l)_O)SdH)@B%r3Kqp[M rAC},');
define('SECURE_AUTH_SALT', 'qv0R)n/D+r.3_Js4^oMU@|6=c58W3A(?/55Co=*cNu~D-A#`BK&)%E+~K;5riRm^');
define('LOGGED_IN_SALT',   '.=mjC<Ah&E:S?^lr=~LCi1wJ5TC:FPEv)VRUlg &~uCaO]-E%p9e@He=P>Kpb@ +');
define('NONCE_SALT',       'Iv>0~OJ&3v_oNY.Tv}+fB|*l,4-V6T;%mx~+-31&-:M} Rl]hL c3{%R9yYCdZ>K');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */


/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', '/var/www/html/wordpress' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

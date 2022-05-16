<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'wordpress' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '?::hg+_b==Y~j,fj{/9x(1rI@=ooQ,?og]My]2FjtuKUu^iZA BAk&etJ{zHRb_7');
define('SECURE_AUTH_KEY',  '3Z9.+F=bNo*HV9<8-X{k)>p5m.k>aGg@%b01R(9pOS5rVXspi?ALQ7uunUO,yxfr');
define('LOGGED_IN_KEY',    '2CSO+FQ5E`l[z0hlP2%dGh68wI$Jn~l>/` N-Y3I;?Ru@SX<RF+^-_w6F(kc?13|');
define('NONCE_KEY',        'u/tO>PqB?HXF=CArWp!F#$SI9l- :[M~Btn@Z*Ufihqx_$F;x8NgGJpS+QIILTo~');
define('AUTH_SALT',        'Mw(nAHorc)/4pEL=~BVNd)7[;$-_YO DYw4N]Vt+H-B!ky89-h6Mw>$,`F45}1j$');
define('SECURE_AUTH_SALT', 'VsPS%_cq3X2e&TF#S[xa jn_a!CCc,&sj ?MC(jHp`/i:,1`l/*=:H_63xw#yL@h');
define('LOGGED_IN_SALT',   'SLV8J]$>]jp]P*irU~oFB@lHhjQUbs4{oNC|S=lA~=Xn92xjNLdtiUxGD=wYH*B:');
define('NONCE_SALT',       'DUT6gN)h;7ii0^;i(/Awi(ZXSJO_h|WTJ!K_Bw%svmqdOiv+pt0|K2Y[~+uhE]Uu');

/**#@-*/

/**
 * WordPress Database Table prefix.
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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

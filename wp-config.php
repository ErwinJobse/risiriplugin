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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'risiri');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '+bFA{r4}1,T4yEY;{,PQn;V#Wu97V^~!FhmTNvDMu4ihShhyncPc.oH}{j2lWB3r');
define('SECURE_AUTH_KEY',  'z]R7aVb}M%&qDEW|aZzD5Z_B)A HCMaD6r$edq`mp0VKZ2SNVO;}|k3isQVECbN@');
define('LOGGED_IN_KEY',    ' J(p~n2G]<^^Z:,u9EiER%o){un<xz3 <W128~.Kz]:4v&D-dkGN{d@?.kAbg4<g');
define('NONCE_KEY',        'x6#bAYuJ$:?MZ &RBu[%?*Sl:1nW8[&)pVV7CT4Mskl=T+A2cW#g#]/`%;:eP.50');
define('AUTH_SALT',        'c@PV1z4~1{B37=ZeQdJgEtyV $8aX^h3uNPoY;dAwT5T;pSbqsnh2Hd:S;|S6JT`');
define('SECURE_AUTH_SALT', 'eLM988[6CKD`P@T3MNm=ZHO1Om%YzlJhFi4[D$*+urw0_]bX||.a>,;P{H2HdWL6');
define('LOGGED_IN_SALT',   'xeiekPu}yMi6AFu<n[c.lHPBhsE` Sv2^gpURg])N?cwvOj _4wDHbV}WrFl:Z$N');
define('NONCE_SALT',       'j8rk-@+f)2@6k,ns3<UrYoXkzFrzymUz(5h!% k::o$CX!:Yzs)3AXdWO88}#8 9');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

--- lib/Mail/Milter/Authentication/Config.pm.orig	2024-02-05 02:41:57 UTC
+++ lib/Mail/Milter/Authentication/Config.pm
@@ -21,7 +21,7 @@ our @EXPORT_OK = qw{
 };
 
 
-our $PREFIX = '/etc';
+our $PREFIX = '%%ETCDIR%%';
 our $IDENT  = 'authentication_milter';
 my  $CONFIG;
 
@@ -31,19 +31,19 @@ sub default_config {
         'debug'                           => 0,
         'dryrun'                          => 0,
         'logtoerr'                        => 0,
-        'error_log'                       => '/var/log/authentication_milter.err',
+        'error_log'                       => '%%LOGDIR%%/authentication_milter.err',
         'extended_log'                    => 1,
         'legacy_log'                      => 0,
-        'connection'                      => 'inet:12345@localhost',
-        'umask'                           => '0000',
-        'runas'                           => 'nobody',
-        'rungroup'                        => 'nogroup',
+        'connection'                      => 'unix:%%RUNDIR%%/authentication_milter.socket',
+        'umask'                           => '0077',
+        'runas'                           => '%%DEFAULT_USER%%',
+        'rungroup'                        => '%%DEFAULT_GROUP%%',
         'listen_backlog'                  => 20,
         'check_for_dequeue'               => 60,
-        'min_children'                    => 20,
-        'max_children'                    => 200,
-        'min_spare_children'              => 10,
-        'max_spare_children'              => 20,
+        'min_children'                    => 1,
+        'max_children'                    => 2,
+        'min_spare_children'              => 1,
+        'max_spare_children'              => 1,
         'max_requests_per_child'          => 200,
         'protocol'                        => 'milter',
         'connect_timeout'                 => 30,

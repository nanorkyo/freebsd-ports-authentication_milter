--- lib/Mail/Milter/Authentication/Config.pm.orig	2024-02-05 02:41:57 UTC
+++ lib/Mail/Milter/Authentication/Config.pm
@@ -21,7 +21,7 @@ our @EXPORT_OK = qw{
 };
 
 
-our $PREFIX = '/etc';
+our $PREFIX = '%%PREFIX%%/etc/mail';
 our $IDENT  = 'authentication_milter';
 my  $CONFIG;
 
@@ -36,8 +36,8 @@ sub default_config {
         'legacy_log'                      => 0,
         'connection'                      => 'inet:12345@localhost',
         'umask'                           => '0000',
-        'runas'                           => 'nobody',
-        'rungroup'                        => 'nogroup',
+        'runas'                           => 'mailnull',
+        'rungroup'                        => 'mailnull',
         'listen_backlog'                  => 20,
         'check_for_dequeue'               => 60,
         'min_children'                    => 20,

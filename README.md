This is a part of the FreeBSD Ports Collection for [authentication_milter](https://metacpan.org/dist/Mail-Milter-Authentication).

Now working following ports:

- `mail/p5-Mail-Milter-Authentication`

# DONE
- `portlint` happy.
- `portfmt` happy.
- `portclippy` happy.
- `poudorie testport mail/p5-Mail-Milter-Authentication` on FreeBSD/amd64 happy.
- `mail/p5-Mail-Milter-Authentication`:
  - rc script ready.
  - PREFIX clean.
  - Comfort a sample configuration file.
  - `make test` works well, and I confimed to works well in operation environment.
  - pkg-message ready.
  - log directory clean by using syslog.
- Feed back to ports done.
  - `devel/p5-Lock-File`
  - `devel/p5-Hash-SharedMem`
  - `www/p5-HTTP-Tiny-Paranoid`
  - `net-mgmt/p5-Prometheus-Tiny`
  - `net-mgmt/p5-Prometheus-Tiny-Shared`
  - `mail/p5-Mail-DataFeed-Abusix`
  - `mail/p5-Mail-BIMI`

# TODO
- `mail/p5-Mail-DMARC`:
  - not support cron.d to update public suffix list.

# DIRECTORIES
- `/var/cache/auth_milter`
- `/var/spool/auth_milter`
- `/var/lib/auth_milter`
- `/var/run/auth_milter`
- `/usr/local/etc/mail`
- `/usr/local/etc/mail/authentication_milter.d`

# CONFIGURATION
- `PREFIX/etc/mail/authentication_milter.json`
- `PREFIX/etc/mail/mail-dmarc.ini`
- `PREFIX/etc/mail/authentication_milter.d/HANDLAR.json` [*]

[*] Please see also, following command to get HANDLARs.
```
authentication_milter -h installed
```

# LOGFILE
- `/var/log/maillog`

# SPECIAL THANKS
- Hiroki Sato <hrs@FreeBSD.org>

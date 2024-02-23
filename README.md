This is a part of the FreeBSD Ports Collection for [authentication_milter](https://metacpan.org/dist/Mail-Milter-Authentication).

Now working following ports:

- `mail/p5-Mail-Milter-Authentication`
  - `devel/p5-Lock-File`
  - `mail/p5-Mail-BIMI`
    - www/p5-HTTP-Tiny-Paranoid`
  - `mail/p5-Mail-DataFeed-Abusix`
  - `net-mgmt/p5-Prometheus-Tiny-Shared`
    - `devel/p5-Hash-SharedMem`
    - `net-mgmt/p5-Prometheus-Tiny`

# DONE
- `portlint` happy.
- `portfmt` happy.
- `portclippy` happy.
- `poudorie testport mail/p5-Mail-Milter-Authentication` on FreeBSD/amd64 happy.

# TODO
- `*/*`: COMMENT and pkg-descr are not matched correctly.
- `*/*`: I have not verified that the license is correct.
- `devel/p5-Lock-File`: `make test` almost work, but not all, becase a lack of some ports.
- `net-mgmt/p5-Prometheus-Tiny-Shared`: `make test` mostly work, but not all, becase a lack of some ports.
- `net-mgmt/p5-Prometheus-Tiny`: `make test` not work, becase a lack of some ports.
- `mail/p5-Mail-Milter-Authentication`:
  - no rc script.
  - not PREFIX clean.
  - not comfort a sample configuration file.
  - no pkg-messages for 1st setup.
    - sample for sendmail(unix domain socket).
    - sample for postfix(inet socket, maybe ok).
  - `make test` works well, but I've never actually used it so I don't know.

# DIRECTORIES
- `/var/cache/authentication_milter`
- `/var/lib/authentication_milter`
- `/var/spool/authentication_milter`
- `/usr/local/etc/mail`

# CONFIGURATION
- `PREFIX/etc/mail/authentication_milter.json`
- `PREFIX/etc/mail/mail-dmarc.ini`

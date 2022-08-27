# Oh Lord

## Deb Files

Deb files (`*.deb`) are archives specific to the Debian Linux system that allow users or administrators to install content.
They are composed of two `tar` archives, bundled together. Each has a specific purpose.

1. Control information/metadata
2. Installable data for constructing a binary

### Control Data

The control data `tar`, also known as the *Control Archive*, usually possesses the data used to determine the validity and safety
of the package itself. It can include, and is not limited to, the following:
- **control** - brief description of the package and/or its dependency tree
- **md5sums** - MD5 Checksums of all of the files within the package, used for determining corruption
- **conffiles** - specifies which files within the package are used as properties or configurations
- **[preinst, postinst, prerm, postrm]** - optional scripts that execute before installation, or after removal of the package
- **config** - an optional script that coordinates with *debconf*
- **shlibs** - a list of shared library dependencies

### Data Archive

The "payload" of the Deb file, named *data.tar*, which contains the actual installable files.

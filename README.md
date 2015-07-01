Kalendas - port for FreeBSD
===========================

Make sure you have installed **git** inside ports collection of your system

    $ su
    # portsnap fetch extract
    # cd /usr/ports/devel/git
    # make install clean

Install
-------

Clone the repository to your ports collection

    # cd /usr/ports/astro
    # git clone https://github.com/mikemolina/kalendas-port.git kalendas
    # cd kalendas
    # make install clean

Uninstall
---------

Run

    $ su
    # cd /usr/ports/astro/kalendas
    # make deinstall
# HangOps Site Generator

Currently running in a Python VirtualEnv using [Pelican](https://github.com/getpelican/pelican)

Directory structure required to generate the site:

    hangops/               <-- where virtualenv lives
        /lib
        /bin
        /includes
    
        /site               <-- https://github.com/hangops/hangops.com
            /content        <-- where articles and static files live
                /extra      <-- robots.txt, etc.
                /images     <-- non-theme related images
                /pages      <-- static pages (About, etc.)
    
            /themes         <-- where my mangled version of the Midnight theme lives
            pelicanconf.py
            publishconf.py
            Makefile
            README.md

The Python VirtualEnv has the following installed:

    pelican==3.1.1
    Jinja2==2.6
    Pygments==1.6
    Unidecode==0.04.12
    blinker==1.2
    docutils==0.10
    feedgenerator==1.5
    pytz==2012j
    six==1.2.0
    wsgiref==0.1.2
    Markdown==2.2.1
    typogrify==2.0.0
    smartypants==1.6.0.3

An XMPP bot is defined as a GitHub Service Hook and will a publish command
when a commit happens

  hangops@bear.im

  make dropbox_upload


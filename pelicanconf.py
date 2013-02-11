#!/usr/bin/env python
# -*- coding: utf-8 -*- #

AUTHOR = u'Brandon Burton'
SITENAME = u'HangOps'
SITEURL = 'http://hangops.com'

TIMEZONE = 'Europe/Paris'

DEFAULT_LANG = u'en'

THEME = 'themes/hangops'

# Blogroll
LINKS =  (('HangOps', 'http://hangops.github.com'),
         )

# Social widget
SOCIAL = (('You can add links in your config file', '#'),
          ('Another social link', '#'),)

DEFAULT_PAGINATION = 10

STATIC_PATHS = ['images', 'js', 'css']

FILES_TO_COPY = (('extra/robots.txt', 'robots.txt'),)

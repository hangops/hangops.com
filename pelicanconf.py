#!/usr/bin/env python
# -*- coding: utf-8 -*- #

AUTHOR   = u'Brandon Burton'
SITENAME = u'HangOps'
SITEURL  = 'http://hangops.com'

TIMEZONE              = 'America/Los_Angeles'
DEFAULT_LANG          = u'en'
DEFAULT_PAGINATION    = 30
DEFAULT_CATEGORY      = 'post'
TYPOGRIFY             = True
DISPLAY_PAGES_ON_MENU = True

THEME         = 'themes/hangops'
MARKUP        = (('rst',
                  'md')
                )
MENUITEMS     = (('Topics', '/archives.html'),
                 ('Atom',   'http://feeds.hangops.com/all_atom.xml'),
                 ('RSS',    'http://feeds.hangops.com/all_rss.xml'),
                )
LINKS         = (('HangOps', 'http://hangops.github.com'),
                )
SOCIAL        = (('Twitter', 'https://twitter.com/hangops'),
                )
STATIC_PATHS  = ['images', 'js', 'css']
FILES_TO_COPY = (('extra/robots.txt', 'robots.txt'),
                )

FEED_DOMAIN        = 'http://feeds.hangops.com'
FEED_ALL_ATOM      = 'all_atom.xml'
FEED_ALL_RSS       = 'all_rss.xml'
TAG_FEED_ATOM      = '%s_atom.xml'
TAG_FEED_RSS       = '%s_rss.xml'
CATEGORY_FEED_ATOM = '%s_atom.xml'
CATEGORY_FEED_RSS  = '%s_rss.xml'

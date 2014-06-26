This is not targeting an instructor preparing a bootcamp.

This file documents the work done on integrating a live regular expression tester that is accessible via the sole browser.

## Step 1: existing projects

The search started from **regexpal** http://regexpal.com/ which uses http://xregexp.com/ and http://stevenlevithan.com/regex/colorizer/ .
Both dependencies are MIT licensed.
Regexpal is itself GNU LGPL (http://blog.stevenlevithan.com/archives/regexpal-now-open-source)?

Regexpal uses xregexp so it supposedly supports more advanced regexps than regex-colorizer.

These projects are all on github:

- https://github.com/slevithan/xregexp (currently 3.0.0-pre)
- https://github.com/slevithan/regex-colorizer
- https://github.com/varvaruc/regexpal : not on the same author's account. It comes from a modified version of regexpal, it embeds XRegExp 0.2.5. The author's latest version be as a googlecode project https://code.google.com/p/regexpal/ . 

## Step 2: decision for a first version

From here, for a first version, it seems simpler to take regexpal as is even though it does not include the latest version of xregexp. Next step would be to reconcile with the latest xregexp.

To cleanly work on regexpal, we will fork it.
This also ensures the sustainability of the repository on github.
https://github.com/twitwi/regexpal

Cloning the repo actually just works.

## Step 3: integration and improvements

Some open questions and possible tasks:

- [x] integrate it in the "bc" repository, it is currently 112kB (unminified)
- [x] keep a script around to update it from the regexpal repository
- [x] clean up and style it for software carpentry (keep credit) (in a branch)
  - [x] logo etc
  - [x] bigger size by default? (not for now)
- [ ] we probably need a full style rewrite (dropping the default style from regexpal)
- [ ] add buttons (or "select") to preload content or regexps (kind of custom)


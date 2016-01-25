---
---

root = exports ? this
$ ->


    win = $(root)
    fxel = $('nav')
    eloffset = fxel.offset().top

    win.scroll ->
      if eloffset < win.scrollTop()
        fxel.addClass 'fixed'
        li = $(fxel).find('li.fixed-only');
      else
        fxel.removeClass 'fixed'
      return

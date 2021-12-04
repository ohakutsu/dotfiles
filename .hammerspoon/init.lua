-- Hammerspoon ShiftIt
hs.loadSpoon("ShiftIt")
spoon.ShiftIt:bindHotkeys({
    left = {{'ctrl', 'cmd'}, 'left'},
    right = {{'ctrl', 'cmd'}, 'right'},
    up = {{'ctrl', 'cmd'}, 'up'},
    down = {{'ctrl', 'cmd'}, 'down'},
    upleft = {{'ctrl', 'cmd'}, '1'},
    upright = {{'ctrl', 'cmd'}, '2'},
    botleft = {{'ctrl', 'cmd'}, '3'},
    botright = {{'ctrl', 'cmd'}, '4'},
    maximum = {{'ctrl', 'cmd'}, 'm'},
    toggleFullScreen = {{'ctrl', 'cmd'}, 'f'},
    toggleZoom = {{'ctrl', 'cmd'}, 'z'},
    center = {{'ctrl', 'cmd'}, 'c'},
    nextScreen = {{'ctrl', 'cmd'}, 'n'},
    previousScreen = {{'ctrl', 'cmd'}, 'p'},
    resizeOut = {{'ctrl', 'cmd'}, '='},
    resizeIn = {{'ctrl', 'cmd'}, '-'}
})

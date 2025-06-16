.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_musicmenu_songadd (locals=0, argc=2)
:[1]
push.i 33786937
setowner.e
push.v arg.argument0
pushi.e -1
push.v self.songCount
conv.v.i
pop.v.v [array]self.songOgg
push.i 33786939
setowner.e
push.v self.songCount
pushi.e 1
add.i.v
call.i string(argc=1)
push.s " - "@10800
add.s.v
push.v arg.argument1
add.v.v
pushi.e -1
push.v self.songCount
conv.v.i
pop.v.v [array]self.songName
push.v self.songCount
push.e 1
add.i.v
pop.v.v self.songCount
exit.i

:[2]
push.i [function]gml_Script_scr_musicmenu_songadd
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_musicmenu_songadd
popz.v

:[end]
.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_drawinbulletbox (locals=0, argc=0)
:[1]
push.v 872.sprite_height
pushi.e 8
sub.i.v
push.v 872.sprite_width
pushi.e 8
sub.i.v
push.v 872.y
push.v 872.x
call.i gml_Script_scr_drawinbox(argc=4)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_drawinbulletbox
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_drawinbulletbox
popz.v

:[end]
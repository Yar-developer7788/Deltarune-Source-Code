.localvar 2 arguments

:[0]
b [5]

> gml_Script_scr_getboxbounds (locals=0, argc=0)
:[1]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.minx
push.v 872.x
push.v 872.sprite_width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.maxx
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.miny
push.v 872.y
push.v 872.sprite_height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v self.maxy
b [4]

:[3]
pushi.e 999
pop.v.i self.minx
pushi.e 999
pop.v.i self.maxx
pushi.e 999
pop.v.i self.miny
pushi.e 999
pop.v.i self.maxy

:[4]
exit.i

:[5]
push.i [function]gml_Script_scr_getboxbounds
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_getboxbounds
popz.v

:[end]
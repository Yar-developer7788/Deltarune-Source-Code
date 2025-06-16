.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_depth_ch1 (locals=0, argc=0)
:[1]
push.i 100000
push.v self.y
pushi.e 10
mul.i.v
push.v self.sprite_height
pushi.e 10
mul.i.v
add.v.v
sub.v.i
pop.v.v self.depth
exit.i

:[2]
push.i [function]gml_Script_scr_depth_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_depth_ch1
popz.v

:[end]
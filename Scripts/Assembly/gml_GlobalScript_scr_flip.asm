.localvar 2 arguments

:[0]
b [8]

> gml_Script_scr_flip (locals=0, argc=1)
:[1]
push.v arg.argument0
push.s "h"@6667
cmp.s.v EQ
bt [3]

:[2]
push.v arg.argument0
push.s "x"@50
cmp.s.v EQ
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
push.v self.x
push.v self.sprite_index
call.i sprite_get_width(argc=1)
push.v self.sprite_index
call.i sprite_get_xoffset(argc=1)
pushi.e 2
mul.i.v
sub.v.v
push.v self.image_xscale
mul.v.v
add.v.v
pop.v.v self.x
push.v self.image_xscale
neg.v
pop.v.v self.image_xscale
b [7]

:[6]
push.v self.y
push.v self.sprite_index
call.i sprite_get_height(argc=1)
push.v self.sprite_index
call.i sprite_get_yoffset(argc=1)
pushi.e 2
mul.i.v
sub.v.v
push.v self.image_yscale
mul.v.v
add.v.v
pop.v.v self.y
push.v self.image_yscale
neg.v
pop.v.v self.image_yscale

:[7]
exit.i

:[8]
push.i [function]gml_Script_scr_flip
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_flip
popz.v

:[end]
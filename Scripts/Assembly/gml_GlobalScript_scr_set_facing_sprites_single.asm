.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_set_facing_sprites_single (locals=0, argc=1)
:[1]
push.v arg.argument0
pop.v.v self.usprite
push.v arg.argument0
pop.v.v self.dsprite
push.v arg.argument0
pop.v.v self.rsprite
push.v arg.argument0
pop.v.v self.lsprite
push.v arg.argument0
pop.v.v self.sprite_index
exit.i

:[2]
push.i [function]gml_Script_scr_set_facing_sprites_single
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_set_facing_sprites_single
popz.v

:[end]
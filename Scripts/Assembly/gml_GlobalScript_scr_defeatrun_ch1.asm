.localvar 2 arguments

:[0]
b [2]

> gml_Script_scr_defeatrun_ch1 (locals=0, argc=0)
:[1]
pushi.e 1621
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self.defeatanim
push.v self.sprite_index
push.v self.defeatanim
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.hurtsprite
push.v self.defeatanim
pushi.e -9
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.defeatanim
pushi.e -9
pop.v.i [stacktop]self.image_index
push.v self.image_xscale
push.v self.defeatanim
pushi.e -9
pop.v.v [stacktop]self.image_xscale
push.v self.image_yscale
push.v self.defeatanim
pushi.e -9
pop.v.v [stacktop]self.image_yscale
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scr_defeatrun_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_defeatrun_ch1
popz.v

:[end]
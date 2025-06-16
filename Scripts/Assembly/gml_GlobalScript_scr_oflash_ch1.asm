.localvar 2 arguments

:[0]
b [3]

> gml_Script_scr_oflash_ch1 (locals=0, argc=0)
:[1]
pushi.e 1623
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create_ch1(argc=3)
pop.v.v self._oflash
push.v self.image_xscale
push.v self._oflash
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 0
push.v self._oflash
pushi.e -9
pop.v.i [stacktop]self.image_speed
push.v self.image_index
push.v self._oflash
pushi.e -9
pop.v.v [stacktop]self.image_index
push.v self.image_yscale
push.v self._oflash
pushi.e -9
pop.v.v [stacktop]self.image_yscale
push.v self.sprite_index
push.v self._oflash
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.depth
pushi.e 1
sub.i.v
push.v self._oflash
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.id
push.v self._oflash
pushi.e -9
pop.v.v [stacktop]self.target
push.v self._oflash
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scr_oflash_ch1
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_oflash_ch1
popz.v

:[end]
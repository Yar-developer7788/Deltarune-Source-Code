.localvar 2 arguments
.localvar 107 i 19066

:[0]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e -5
pushi.e 382
push.v [array]self.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.memx
pushi.e 0
pop.v.i self.memy

:[4]
pushi.e -5
pushi.e 382
push.v [array]self.flag
pushi.e 1
cmp.i.v EQ
bf [8]

:[5]
pushi.e 28980
pop.v.i self.con
pushi.e 0
pop.v.i local.i

:[6]
pushloc.v local.i
pushi.e 7
cmp.i.v LT
bf [8]

:[7]
pushi.e 129
conv.i.v
pushi.e 364
conv.i.v
pushi.e 166
pushloc.v local.i
pushi.e 104
mul.i.v
add.v.i
call.i gml_Script_instance_create(argc=3)
pop.v.v self.shade
pushi.e 2317
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.25
push.v self.shade
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 2
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 2
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.image_yscale
push.i 890000
push.v self.shade
pushi.e -9
pop.v.i [stacktop]self.depth
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [6]

:[8]
pushi.e 0
pop.v.b self.tablespawn

:[end]
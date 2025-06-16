.localvar 2 arguments
.localvar 6706 d 11664

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i irandom(argc=1)
pushi.e 4
cmp.i.v EQ
pop.v.b self.fuelbubble
pushi.e 90
pop.v.i self.direction
pushi.e 2
pop.v.i self.speed
push.d 12.566370614359172
conv.d.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.siner
push.v self.fuelbubble
conv.v.b
bf [2]

:[1]
push.i 8421376
pop.v.i self.image_blend

:[2]
push.d 0.5
pop.v.d self.image_xscale
push.d 0.5
pop.v.d self.image_yscale
push.v 514.depth
pop.v.v self.depth
push.d 0.5
pop.v.d self.scale
pushi.e 532
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.d
call.i @@This@@(argc=0)
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.parent
push.v 514.depth
pushi.e 1
sub.i.v
pushloc.v local.d
pushi.e -9
pop.v.v [stacktop]self.depth
push.d 0.4
pushloc.v local.d
pushi.e -9
pop.v.d [stacktop]self.image_alpha
pushi.e 0
pop.v.i self.init

:[end]
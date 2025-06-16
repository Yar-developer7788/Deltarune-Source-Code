.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 1
pop.v.i self.wall_destroy
pushi.e 1
pop.v.i self.image_alpha
pushi.e 2535
pop.v.i self.sprite_index
pushi.e 40
pop.v.i self.image_xscale
pushi.e 20
pop.v.i self.image_yscale
pushi.e 0
pop.v.b self.visible
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.grazed
pushi.e 574
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e -5
push.v 574.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage

:[2]
pushi.e 575
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v 575.target
pop.v.v self.target

:[4]
pushi.e 4
pop.v.i self.grazepoints

:[end]
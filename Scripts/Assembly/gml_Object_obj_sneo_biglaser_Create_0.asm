.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 6
pop.v.i self.element
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 0
pop.v.i self.active
push.d 0.05
pop.v.d self.image_yscale
pushi.e 0
pop.v.i self.image_xscale
pushi.e 3229
pop.v.i self.mask_index
pushi.e 0
pop.v.i self.firecon
pushi.e 0
pop.v.i self.effecttimer
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.orbsize
pushi.e 679
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 666
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
popz.v
pushi.e 697
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e -5
push.v 697.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage

:[2]
pushi.e 698
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
push.v 698.target
pop.v.v self.target

:[4]
pushi.e 10
pop.v.i self.grazepoints
pushi.e 1
pop.v.i self.grazed
pushi.e 0
pop.v.i self._type

:[end]
.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 6
pop.v.i self.element
pushi.e 1
pop.v.i self.fluffyguarddestroysthis
pushi.e 2
pop.v.i self.f
pushi.e 0
pop.v.i self.destroyable
pushi.e 0
pop.v.i self.angle_speed
pushi.e 1
pop.v.i self.destroypoints
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
pushi.e 3
pop.v.i self.grazepoints

:[end]
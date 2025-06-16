.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 6
pop.v.i self.element
pushi.e 0
pop.v.i self.destroyable
pushi.e 1
pop.v.i self.bighitbox
pushi.e 0
pop.v.i self.image_speed
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
pushi.e 2
pop.v.i self.grazepoints
pushi.e -7
pop.v.i self.wallspeed
pushi.e 0
pop.v.i self.wallnumber

:[end]
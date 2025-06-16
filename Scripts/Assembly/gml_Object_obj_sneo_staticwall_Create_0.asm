.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 6
pop.v.i self.element
pushi.e 2
pop.v.i self.f
pushi.e 0
pop.v.i self.destroyable
pushi.e 0
pop.v.i self.angle_speed
pushi.e 0
pop.v.i self.yellowsiner
pushi.e 0
pop.v.i self.loop
pushi.e 90
pop.v.i self.loopy1
pushi.e 240
pop.v.i self.loopy2
pushi.e 0
pop.v.i self.falsevspeed
pushi.e 1
pop.v.i self.bighitbox
pushi.e 0
pop.v.i self.angleadjust
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.altdir
pushi.e 0
pop.v.i self.altspeed
pushi.e 0
pop.v.i self.altfriction
pushi.e 0
pop.v.i self.altgravity
pushi.e 0
pop.v.i self.changedirection
pushi.e 8
pop.v.i self.bulletspeed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.friction
pushi.e 0
pop.v.i self.image_speed
push.v 872.x
pop.v.v self.xx
push.v self.xstart
push.v self.xx
sub.v.v
pop.v.v self.xdist
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.startdepth
push.d 1.2
pop.v.d self.image_xscale
push.d 1.2
pop.v.d self.image_yscale
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
pushi.e 0
pop.v.i self.image_alpha

:[end]
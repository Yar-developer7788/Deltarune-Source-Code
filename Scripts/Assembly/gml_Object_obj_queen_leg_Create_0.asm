.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.destroyonhit
pushi.e 270
pop.v.i self.direction
pushi.e 15
pop.v.i self.stompwait
pushi.e 0
pop.v.i self.stomphold
call.i gml_Script_scr_getboxbounds(argc=0)
popz.v
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.stomplerp
push.d 0.1
pop.v.d self.stompspeed
pushi.e 0
pop.v.i self.shootbullets
pushi.e 0
pop.v.i self.pos
pushi.e 0
pop.v.i self.special
pushi.e 0
pop.v.i self.specialcon
pushi.e 0
pop.v.i self.specialtimer
pushi.e 0
pop.v.i self.hurttimer
pushi.e 0
pop.v.i self.hittimer
push.v self.x
pop.v.v self.hurtx
push.v self.y
pop.v.v self.hurty
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
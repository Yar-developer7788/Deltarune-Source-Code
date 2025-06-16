.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.con
pushi.e 1
pop.v.i self.times
pushi.e 1
pop.v.i self.maxtimes
pushi.e 0
pop.v.i self.bullettimer
pushi.e 3
pop.v.i self.bullettimermax
pushi.e 0
pop.v.i self.circle1alpha
pushi.e 31
pop.v.i self.circle1radius
pushi.e 2
pop.v.i self.circle1width
push.i 16776960
pop.v.i self.circle1color
pushi.e 0
pop.v.i self.circle2alpha
pushi.e 51
pop.v.i self.circle2radius
pushi.e 4
pop.v.i self.circle2width
pushi.e 0
pop.v.i self.angleoffset
pushi.e 0
pop.v.i self.bullettype
push.v 631.depth
pushi.e 1
add.i.v
pop.v.v self.depth
push.i 68097
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
push.v 631.y
push.v 631.x
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.heartdir

:[end]
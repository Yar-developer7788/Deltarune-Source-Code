.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 3
pop.v.i self.fleetsize
pushi.e 1
pop.v.i self.fleetspeed
pushi.e 0
pop.v.i self.caralert
pushi.e 30
pop.v.i self.moveinterval
pushi.e 0
pop.v.i self.lborder
pushi.e 640
pop.v.i self.rborder
pushi.e 8
pop.v.i self.movedirection
pushi.e 1
pop.v.i self.animframe
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.timer
pushi.e 8
pop.v.i self.damage
pushi.e 0
pop.v.i self.target
pushi.e 0
pop.v.i self.targetB
pushi.e 4
pop.v.i self.grazepoints
push.i 170217
setowner.e
pushi.e 422
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_childbullet(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.boys
push.i 133653
setowner.e
pushi.e 0
pushi.e -1
pushi.e 0
push.v [array]self.boys
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 30
conv.i.v
call.i irandom(argc=1)
pushi.e 20
add.i.v
pop.v.v self.shottimer
push.i 170218
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.shotqueue
pushi.e 1
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.shotqueue
pushi.e 2
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.shotqueue
pushi.e 0
pop.v.i self.shotindex
pushi.e 0
pop.v.b self.bigshot

:[end]
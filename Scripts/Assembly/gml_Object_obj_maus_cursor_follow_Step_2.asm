.localvar 2 arguments
.localvar 14824 timer2 10974
.localvar 14253 easedlerp 10975

:[0]
push.v self.followindex
push.e 1
add.i.v
pop.v.v self.followindex
push.v self.followindex
push.v self.followindexmax
cmp.v.v GT
bf [2]

:[1]
pushi.e 0
pop.v.i self.followindex

:[2]
push.v self.followindexmax
pop.v.v local.timer2
pushi.e 761
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e 35
pop.v.i local.timer2

:[4]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushloc.v local.timer2
cmp.v.v LTE
bf [6]

:[5]
pushi.e 2
conv.i.v
push.v self.timer
pushloc.v local.timer2
div.v.v
call.i gml_Script_scr_ease_inout(argc=2)
pop.v.v local.easedlerp
pushloc.v local.easedlerp
pushi.e -1
push.v self.followindex
conv.v.i
push.v [array]self.heartposx
push.v self.maxx
call.i lerp(argc=3)
pop.v.v self.x
pushloc.v local.easedlerp
pushi.e -1
push.v self.followindex
conv.v.i
push.v [array]self.heartposy
push.v self.maxy
call.i lerp(argc=3)
pop.v.v self.y
b [8]

:[6]
push.v self.timer
push.v self.followindexmax
cmp.v.v GT
bf [8]

:[7]
pushi.e -1
push.v self.followindex
conv.v.i
push.v [array]self.heartposx
pop.v.v self.x
pushi.e -1
push.v self.followindex
conv.v.i
push.v [array]self.heartposy
pop.v.v self.y

:[8]
push.i 168063
setowner.e
push.v 631.x
pushi.e -1
push.v self.followindex
conv.v.i
pop.v.v [array]self.heartposx
push.i 168064
setowner.e
push.v 631.y
pushi.e -1
push.v self.followindex
conv.v.i
pop.v.v [array]self.heartposy
pushi.e 470
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_childbullet(argc=3)
pop.v.v self.bul_trail
push.v self.image_blend
push.v self.bul_trail
pushi.e -9
pop.v.v [stacktop]self.image_blend
push.v self.damage
push.v self.bul_trail
pushi.e -9
pop.v.v [stacktop]self.damage
push.v self.target
push.v self.bul_trail
pushi.e -9
pop.v.v [stacktop]self.target

:[end]
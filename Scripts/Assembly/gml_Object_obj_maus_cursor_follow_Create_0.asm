.localvar 2 arguments

:[0]
call.i gml_Script_scr_bullet_init(argc=0)
popz.v
pushi.e 0
pop.v.i self.followindex
pushi.e 761
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 25
pop.v.i self.followindexmax
b [3]

:[2]
pushi.e 33
pop.v.i self.followindexmax

:[3]
pushi.e 0
pop.v.i self.i

:[4]
push.v self.i
push.v self.followindexmax
pushi.e 1
add.i.v
cmp.v.v LT
bf [6]

:[5]
push.i 168063
setowner.e
push.v 631.x
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.heartposx
push.i 168064
setowner.e
push.v 631.y
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.heartposy
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [4]

:[6]
pushi.e 6
pop.v.i self.damage
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.destroyonhit
call.i ds_queue_create(argc=0)
pop.v.v self.trail
push.v 872.x
push.v 872.sprite_width
push.d 1.3
div.d.v
add.v.v
pop.v.v self.maxx
push.v 872.y
push.v 872.sprite_height
push.d 1.3
div.d.v
add.v.v
pop.v.v self.maxy
push.v self.depth
pushi.e 3
sub.i.v
pop.v.v self.depth
pushi.e 0
pop.v.i self.textflash
pushi.e 761
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[7]
pushi.e -5
push.v 761.myself
conv.v.i
push.v [array]self.monsterat
pushi.e 5
mul.i.v
pop.v.v self.damage
pushi.e 3
pop.v.i self.grazepoints

:[end]
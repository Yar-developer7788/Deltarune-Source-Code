.localvar 2 arguments

:[0]
pushi.e 1188
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mouseKiller
pushi.e 0
push.v self.mouseKiller
pushi.e -9
pop.v.b [stacktop]self.visible
pushi.e 1
push.v self.mouseKiller
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 1
push.v self.mouseKiller
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bf [2]

:[1]
pushi.e 3303
push.v self.mouseKiller
pushi.e -9
pop.v.i [stacktop]self.sprite_index

:[2]
push.v self.x
pop.v.v self.drawx
push.v self.y
pop.v.v self.drawy
pushi.e 0
pop.v.i self.starter
pushi.e 1
pop.v.i self.image_alpha
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.pattern
push.i 900000
pop.v.i self.depth
pushi.e 0
pop.v.i self.rottype
pushi.e 0
pop.v.i self.patidealy
pushi.e 0
pop.v.i self.randompos
push.v self.xprevious
pop.v.v self.remx
push.v self.yprevious
pop.v.v self.remy
pushi.e 380
pop.v.i self.rx
pushi.e 160
pop.v.i self.lx
pushi.e 240
pop.v.i self.ry
pushi.e 0
pop.v.i self.timer
pushi.e 0
pop.v.i self.phase
pushi.e 0
pop.v.i self.falltimer
pushi.e 480
pop.v.i self.fallthreshhold
pushi.e 0
pop.v.i self.failure
pushi.e 0
pop.v.i self.fally
pushi.e 0
pop.v.i self.move
pushi.e -1
pop.v.i self.tilecon
pushi.e 5
pop.v.i self.rotSpeed
pushi.e 0
pop.v.b self.moving
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
push.i 174776
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 90
pop.v.v [array]self.staticTile
pushi.e 0
pop.v.i self.freeze
pushi.e 0
pop.v.i self.mymoving

:[end]
.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pop.v.v self.mode
pushi.e 2
pop.v.i self.content
pushi.e 2311
pop.v.i self.contentsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.multiplier
pushi.e 0
pop.v.i self.collider
pushi.e 68
conv.i.v
push.v self.y
pushi.e 22
add.i.v
push.v self.x
pushi.e 8
add.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.collider
push.d 4.2
push.v self.collider
pushi.e -9
pop.v.d [stacktop]self.image_xscale
pushi.e 3
push.v self.collider
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
pop.v.i self.xoffset
pushi.e 0
pop.v.i self.yoffset
pushi.e 1
pop.v.i self.itemid
push.s "item"@229
pop.v.s self.itemtype
pushi.e 118
pop.v.i self.itemflag
pushi.e 0
pop.v.i self.activated
pushi.e 0
pop.v.i self.checked
pushi.e 0
pop.v.i self.activated_bomb
pushi.e 0
pop.v.i self.montyboss

:[end]
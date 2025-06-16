.localvar 2 arguments

:[0]
pushi.e 631
pop.v.i self.heartobj
pushi.e 1
pop.v.i self.pos
pushi.e 1
pop.v.i self.idealpos
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
push.i 167861
setowner.e
push.v self.yy
pushi.e 50
add.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.ypos
push.v self.yy
pushi.e 165
add.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.ypos
push.v self.yy
pushi.e 280
add.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.ypos
pushi.e 0
pop.v.i self.movecon
pushi.e 0
pop.v.i self.movetimer
push.s "up"@25520
pop.v.s self.my_direction
pushi.e 0
pop.v.i self.ychange
pushi.e 602
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.buttona
pushi.e 602
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.buttonb
push.s "down"@25524
push.v self.buttonb
pushi.e -9
pop.v.s [stacktop]self.my_direction
pushi.e 2002
push.v self.buttonb
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pop.v.i self.bullettimer
pushi.e 0
pop.v.i self.bulletcount
pushi.e -1
pop.v.i self.forceypos
pushi.e 1
pop.v.i self.lightningcon
pushi.e 0
pop.v.i self.lightninghandicap

:[end]
.localvar 2 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 1286
pop.v.i self.dsprite
pushi.e 1298
pop.v.i self.lsprite
pushi.e 1294
pop.v.i self.rsprite
pushi.e 1291
pop.v.i self.usprite
push.i 172807
setowner.e
push.v self.dsprite
pushi.e -1
pushi.e 0
pop.v.v [array]self.spinsprite
push.v self.lsprite
pushi.e -1
pushi.e 1
pop.v.v [array]self.spinsprite
push.v self.usprite
pushi.e -1
pushi.e 2
pop.v.v [array]self.spinsprite
push.v self.rsprite
pushi.e -1
pushi.e 3
pop.v.v [array]self.spinsprite
push.i 68097
setowner.e
pushi.e 60
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 4
pop.v.i self.movecon
pushi.e 0
pop.v.i self.con
call.i gml_Script_camerax(argc=0)
pushi.e 100
add.i.v
pop.v.v self.minx
call.i gml_Script_camerax(argc=0)
pushi.e 400
add.i.v
pop.v.v self.maxx
call.i gml_Script_cameray(argc=0)
pushi.e 280
add.i.v
pop.v.v self.maxy
push.v self.minx
pushi.e 150
add.i.v
pop.v.v self.x
push.v self.maxy
pop.v.v self.y
pushi.e -20
pop.v.i self.depth
pushi.e 0
pop.v.i self.rouxls
pushi.e 9
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 1
pop.v.i self.rouxls

:[2]
pushi.e 0
pop.v.i self.starwalker
pushi.e 14
conv.i.v
call.i gml_Script_scr_keyitemcheck(argc=1)
conv.v.b
bf [4]

:[3]
pushi.e 1
pop.v.i self.starwalker

:[4]
pushi.e 0
pop.v.i self.sleeptimer
pushi.e 0
pop.v.i self.remmovecon
pushi.e -5
pushi.e 915
push.v [array]self.flag
push.d 1.5
cmp.d.v GTE
bf [6]

:[5]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 1
cmp.i.v GTE
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 10
pop.v.i self.movecon

:[9]
call.i gml_Script_scr_sideb_get_phase(argc=0)
pushi.e 3
cmp.i.v GTE
bf [11]

:[10]
pushi.e 11
pop.v.i self.movecon

:[11]
pushglb.v global.plot
pushi.e 200
cmp.i.v GTE
bf [13]

:[12]
pushi.e 4
pop.v.i self.movecon

:[13]
push.v self.movecon
pushi.e 10
cmp.i.v EQ
bf [15]

:[14]
pushi.e -10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 1287
pop.v.i self.sprite_index
push.d 0.1
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.gravity

:[15]
push.v self.movecon
pushi.e 11
cmp.i.v EQ
bf [end]

:[16]
pushi.e -10
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 193
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.gravity

:[end]
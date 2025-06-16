.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 6
pop.v.i global.typer

:[2]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
push.d 0.2
pop.v.d self.image_speed
push.i 231204
setowner.e
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 20
pop.v.v [array]self.flag
pushglb.v global.chapter
pushi.e 1
cmp.i.v EQ
bf [11]

:[3]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 230
pop.v.i global.msc

:[5]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 235
pop.v.i global.msc

:[7]
push.v self.type
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
pushi.e 240
pop.v.i global.msc

:[9]
push.v self.type
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
pushi.e 245
pop.v.i global.msc

:[11]
pushglb.v global.chapter
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1105
pop.v.i global.msc

:[13]
pushglb.v global.msc
call.i gml_Script_scr_text(argc=1)
popz.v
pushi.e 3
pop.v.i self.myinteract
pushi.e 63
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.mydialoguer
pushbltn.v builtin.room
pushi.e 76
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
conv.i.v
b [16]

:[15]
pushi.e 0
conv.i.v

:[16]
push.v self.mydialoguer
pushi.e -9
pop.v.v [stacktop]self.side
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]
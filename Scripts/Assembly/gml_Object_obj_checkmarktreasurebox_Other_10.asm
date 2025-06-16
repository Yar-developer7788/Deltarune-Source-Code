.localvar 2 arguments

:[0]
push.v self.opened
conv.v.b
not.b
bf [2]

:[1]
pushi.e 3
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.image_index
pushi.e 1
pop.v.b self.opened
pushi.e 60
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 263
conv.i.v
pushi.e 100
conv.i.v
pushi.e 980
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v self.screen
pushi.e 10
push.v self.screen
pushi.e -9
pop.v.i [stacktop]self.image_index
b [end]

:[2]
pushi.e 277
pushenv [4]

:[3]
pushi.e 0
pop.v.i self.charcon

:[4]
popenv [3]
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushglb.v global.darkzone
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 6
pop.v.i global.typer

:[6]
pushi.e 0
pop.v.i global.fc
pushi.e 0
pop.v.i global.fe
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.image_index
push.i 231251
setowner.e
push.s "obj_treasure_room_slash_Other_10_gml_18_0"@18067
conv.s.v
push.s "* (The chest is empty.)/%"@18068
conv.s.v
call.i gml_Script_stringsetloc(argc=2)
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
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
push.v self.talked
pushi.e 1
add.i.v
pop.v.v self.talked

:[end]
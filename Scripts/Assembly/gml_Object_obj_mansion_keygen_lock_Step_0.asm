.localvar 2 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 103
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.s "image_alpha"@6548
conv.s.v
push.v self.id
call.i gml_Script_scr_lerpvar_instance(argc=5)
popz.v
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[10]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [13]

:[11]
push.v self.fade_timer
push.e 1
add.i.v
pop.v.v self.fade_timer
push.v self.fade_timer
pushi.e 30
cmp.i.v GTE
bf [13]

:[12]
pushi.e 4
pop.v.i self.con

:[13]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [15]

:[14]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 99
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[18]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [end]

:[19]
push.v self.mydialoguer
call.i gml_Script_i_ex(argc=1)
pushi.e 0
cmp.b.v EQ
bf [end]

:[20]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [22]

:[21]
pushi.e 5
pop.v.i self.onebuffer

:[22]
popenv [21]

:[end]
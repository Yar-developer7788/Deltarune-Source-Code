.localvar 2 arguments

:[0]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [5]

:[1]
push.v self.mydialoguer
call.i gml_Script_i_ex(argc=1)
pushi.e 0
cmp.b.v EQ
bf [5]

:[2]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 82
pushenv [4]

:[3]
pushi.e 5
pop.v.i self.onebuffer

:[4]
popenv [3]

:[5]
push.v self.con
pushi.e 1
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
pushi.e 1
pop.v.i global.interact
pushi.e 15
conv.i.v
call.i gml_Script_scr_fadeout(argc=1)
pop.v.v self.fade
pushi.e 219
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.timer
push.v self.con
push.e 1
add.i.v
pop.v.v self.con

:[10]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[11]
push.v self.timer
push.e 1
add.i.v
pop.v.v self.timer
push.v self.timer
pushi.e 120
cmp.i.v GTE
bf [end]

:[12]
pushi.e 140
pushenv [15]

:[13]
push.v self.x
pushbltn.v builtin.room_width
cmp.v.v GT
bf [15]

:[14]
pushi.e 9
conv.i.v
call.i event_user(argc=1)
popz.v

:[15]
popenv [13]

:[end]
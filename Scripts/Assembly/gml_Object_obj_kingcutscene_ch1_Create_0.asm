.localvar 2 arguments

:[0]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.part
pushi.e 0
pop.v.i self.xx
pushi.e 0
pop.v.i self.yy
push.i 231251
setowner.e
push.s " "@353
conv.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]self.msg
push.s "%"@14906
conv.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]self.msg
pushi.e 240
pop.v.i global.xoff
pushi.e 0
pop.v.i self.spadecon
pushi.e 0
pop.v.i self.kingburn
pushi.e 0
pop.v.i self.ky
pushi.e 1
pop.v.i self.type
pushi.e -5
pushi.e 40
push.v [array]self.flag
pushi.e 0
cmp.i.v GT
bt [2]

:[1]
pushi.e -5
pushi.e 43
push.v [array]self.flag
pushi.e 2
cmp.i.v GTE
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.type

:[5]
push.l 328938298392
pop.v.l self.k
push.l 238928392839
pop.v.l self.s
push.l 58344839483493
pop.v.l self.r
push.l 2489284928392
pop.v.l self.l
push.l 2382938928392
pop.v.l self.king
pushi.e 0
pop.v.i self.fountain_index
pushglb.v global.plot
pushi.e 240
cmp.i.v GTE
bf [9]

:[6]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing_ch1(argc=1)
conv.v.b
not.b
bf [8]

:[7]
push.i 231459
setowner.e
push.s "friendship.ogg"@40472
conv.s.v
call.i gml_Script_snd_init_ch1(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
push.d 0.95
conv.d.v
push.d 0.8
conv.d.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext_ch1(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[8]
pushi.e 700
pop.v.i self.con
b [end]

:[9]
pushi.e 1
pop.v.i global.interact
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_set(argc=3)
popz.v
pushi.e 1411
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]
pushi.e 1412
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]

:[end]
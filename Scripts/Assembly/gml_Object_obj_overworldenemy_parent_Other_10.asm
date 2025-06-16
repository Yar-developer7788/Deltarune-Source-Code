.localvar 2 arguments

:[0]
push.v self.encountered
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
pop.v.i self.encountered
push.v self.touchflag
pushi.e 0
cmp.i.v GT
bf [3]

:[2]
push.i 231204
setowner.e
pushi.e 1
conv.i.v
pushi.e -5
push.v self.touchflag
conv.v.i
pop.v.v [array]self.flag

:[3]
pushglb.v global.ambush
pushi.e 1
cmp.i.v EQ
bf [14]

:[4]
pushi.e 171
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 82
pushenv [8]

:[5]
pushi.e 1
pop.v.i self.fun
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [7]

:[6]
call.i gml_Script_scr_shakeobj(argc=0)
popz.v

:[7]
pushi.e 1420
pop.v.i self.sprite_index

:[8]
popenv [5]
pushi.e 276
pushenv [13]

:[9]
pushi.e 1
pop.v.i self.fun
call.i gml_Script_scr_shakeobj(argc=0)
popz.v
push.v self.name
push.s "susie"@70
cmp.s.v EQ
bf [11]

:[10]
pushi.e 997
pop.v.i self.sprite_index

:[11]
push.v self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [13]

:[12]
pushi.e 1510
pop.v.i self.sprite_index

:[13]
popenv [9]

:[14]
push.v self.x
pushi.e -5
pushi.e 55
pop.v.v [array]self.flag
push.v self.y
pushi.e -5
pushi.e 56
pop.v.v [array]self.flag
push.v self.washit
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushi.e 2
pop.v.i global.ambush

:[16]
pushi.e 241
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_instance_create(argc=3)
pop.v.v self.newme
push.v self.touchsprite
push.v self.newme
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.touchsprite
push.v self.newme
pushi.e -9
pop.v.v [stacktop]self.touchsprite
push.v self.sprite_index
push.v self.newme
pushi.e -9
pop.v.v [stacktop]self.slidesprite
push.v self.depth
push.v self.newme
pushi.e -9
pop.v.v [stacktop]self.depth
push.v self.eraser
push.v self.newme
pushi.e -9
pop.v.v [stacktop]self.eraser
push.v self.washit
push.v self.newme
pushi.e -9
pop.v.v [stacktop]self.washit
push.v self.whichmonster
push.v self.newme
pushi.e -9
pop.v.v [stacktop]self.whichmonster
push.v self.newme
pushi.e -9
pushenv [18]

:[17]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[18]
popenv [17]
push.v self.myencounter
pop.v.v global.encounterno
call.i instance_destroy(argc=0)
popz.v

:[end]
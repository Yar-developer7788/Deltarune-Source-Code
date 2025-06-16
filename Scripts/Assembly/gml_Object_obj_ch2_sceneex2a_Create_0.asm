.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 1
pop.v.i self.violentdefeat
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [3]

:[1]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 8
cmp.i.v LT
bt [3]

:[2]
pushi.e -5
pushi.e 309
push.v [array]self.flag
pushi.e 9
cmp.i.v GTE
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[6]
pushi.e 1
pop.v.i self.con
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[8]
pushi.e 2
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i gml_Script_scr_getchar(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 300
sub.i.v
push.v 82.x
pushi.e 60
add.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
pushi.e 1
conv.i.v
pushi.e 3
conv.i.v
call.i gml_Script_cameray(argc=0)
pushi.e 300
sub.i.v
push.v 82.x
pushi.e 100
add.i.v
call.i gml_Script_scr_makecaterpillar(argc=4)
popz.v
push.v self.violentdefeat
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.whiteall
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_blend
b [11]

:[10]
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.whiteall
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 0
push.v self.whiteall
pushi.e -9
pop.v.i [stacktop]self.depth

:[11]
pushi.e 2439
conv.i.v
pushi.e -100
conv.i.v
pushi.e -100
conv.i.v
call.i gml_Script_scr_dark_marker(argc=3)
pop.v.v self.sparkle
push.d 0.25
push.v self.sparkle
pushi.e -9
pop.v.d [stacktop]self.image_speed
pushi.e 0
push.v self.sparkle
pushi.e -9
pop.v.i [stacktop]self.image_alpha
call.i audio_stop_all(argc=0)
popz.v
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_snd_is_playing(argc=1)
conv.v.b
not.b
bf [end]

:[12]
push.i 231459
setowner.e
push.s "spamton_neo_after.ogg"@28665
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop_ext(argc=3)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i audio_sound_pitch(argc=2)
popz.v

:[end]
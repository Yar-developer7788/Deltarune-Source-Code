.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i self.customcon
pushi.e 0
pop.v.b self.pillow
pushi.e 0
pop.v.b self.fadebg
pushi.e 0
pop.v.b self.removefg
pushi.e 0
pop.v.b self.debug_skip
pushi.e 0
pop.v.b self.hide_border
pushglb.v global.chapter
pushi.e 2
cmp.i.v NEQ
bt [2]

:[1]
pushglb.v global.plot
pushi.e 211
cmp.i.v LT
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
b [end]

:[5]
call.i gml_Script_scr_losechar(argc=0)
popz.v
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 276
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[7]
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [9]

:[8]
push.i 231459
setowner.e
push.s "home.ogg"@33722
conv.s.v
call.i gml_Script_snd_init(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]self.currentsong
pushi.e -5
pushi.e 0
push.v [array]self.currentsong
call.i gml_Script_mus_loop(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]self.currentsong

:[9]
pushi.e 2533
conv.i.v
pushi.e -10
conv.i.v
pushi.e -10
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.blackall
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_xscale
pushi.e 999
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_yscale
pushi.e 100
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.blackall
pushi.e -9
pop.v.i [stacktop]self.image_blend
pushi.e 440
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.bg
push.i 9000000
push.v self.bg
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 438
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.bgdim
push.i 6000000
push.v self.bgdim
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.bgdim
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 439
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script_scr_marker(argc=3)
pop.v.v self.bgdark
push.i 5000000
push.v self.bgdark
pushi.e -9
pop.v.i [stacktop]self.depth
pushi.e 0
push.v self.bgdark
pushi.e -9
pop.v.i [stacktop]self.image_alpha
pushi.e 0
pop.v.b self.disable_face
pushi.e 0
pop.v.b self.enable_face
pushi.e 0
pop.v.b self.footsteps
pushi.e 1
pop.v.i self.footsteps_volume
pushi.e 0
pop.v.i self.susie_snore
pushi.e 0
pop.v.b self.end_game
pushi.e 0
pop.v.b self.return_title
pushi.e 0
pop.v.b self.show_door_open
pushi.e 0
pop.v.i self.credits_timer
pushi.e 0
pop.v.b self.fade_out_deep
pushi.e 103
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]

:[end]
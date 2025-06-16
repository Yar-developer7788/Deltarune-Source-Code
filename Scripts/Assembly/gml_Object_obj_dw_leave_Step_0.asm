.localvar 2 arguments

:[0]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [21]

:[1]
pushi.e 30
conv.i.v
pushi.e 0
conv.i.v
pushi.e -5
pushi.e 1
push.v [array]self.currentsong
call.i gml_Script_mus_volume(argc=3)
popz.v
pushi.e 82
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[2]
pushi.e 0
pop.v.i 82.visible
pushi.e 893
conv.i.v
push.v 82.depth
push.v 82.y
push.v 82.x
call.i instance_create_depth(argc=4)
pop.v.v self.kr_actor
push.v 82.sprite_index
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.sprite_index
push.v self.kris_x
pushi.e 6
add.i.v
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.__x
push.v self.kris_y
pushi.e 20
add.i.v
push.v self.kr_actor
pushi.e -9
pop.v.v [stacktop]self.__y
push.v self.kr_actor
pushi.e -9
pushenv [4]

:[3]
push.s "kris"@68
conv.s.v
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v
pushi.e 1
pop.v.i self.fun
push.d 0.25
pop.v.d self.image_speed
pushi.e 10
conv.i.v
push.v self.__y
push.v self.__x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[4]
popenv [3]

:[5]
pushi.e 276
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [7]

:[6]
pushi.e 2
conv.i.v
call.i gml_Script_scr_havechar(argc=1)
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [14]

:[9]
pushi.e 893
conv.i.v
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.depth
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.y
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.x
call.i instance_create_depth(argc=4)
pop.v.v self.su_actor
push.v self.sus_x
push.v self.su_actor
pushi.e -9
pop.v.v [stacktop]self.__x
push.v self.sus_y
pushi.e 8
add.i.v
push.v self.su_actor
pushi.e -9
pop.v.v [stacktop]self.__y
push.v self.su_actor
pushi.e -9
pushenv [11]

:[10]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
push.v [stacktop]self.sprite_index
pop.v.v self.sprite_index
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_set_facing_sprites(argc=1)
popz.v
pushi.e 10
conv.i.v
push.v self.__y
push.v self.__x
call.i gml_Script_scr_move_to_point_over_time(argc=3)
popz.v

:[11]
popenv [10]
pushi.e -5
pushi.e 0
push.v [array]self.cinstance
pushi.e -9
pushenv [13]

:[12]
pushi.e 0
pop.v.i self.visible

:[13]
popenv [12]

:[14]
pushi.e 276
pushenv [20]

:[15]
push.v self.visible
pushi.e 1
cmp.i.v EQ
bf [20]

:[16]
push.v self.sprite_index
push.i 510000
conv.i.v
push.v self.y
push.v self.x
call.i gml_Script_scr_dark_marker_depth(argc=4)
pop.v.v self.me
pushi.e 0
pop.v.i self.visible
push.v self.name
push.s "ralsei"@72
cmp.s.v EQ
bf [20]

:[17]
pushi.e 802
push.v self.me
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.d 0.2
push.v self.me
pushi.e -9
pop.v.d [stacktop]self.image_speed
push.v self.me
pushi.e -9
pushenv [19]

:[18]
pushi.e 801
conv.i.v
push.s "sprite_index"@273
conv.s.v
pushi.e 15
conv.i.v
push.i [function]gml_Script_scr_var
conv.i.v
call.i gml_Script_scr_script_delayed(argc=4)
popz.v

:[19]
popenv [18]

:[20]
popenv [15]
pushi.e 0
pop.v.i self.contimer
pushi.e 11
pop.v.i self.con

:[21]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [33]

:[22]
push.v self.contimer
push.e 1
add.i.v
pop.v.v self.contimer
push.v self.contimer
pushi.e 11
cmp.i.v GTE
bf [33]

:[23]
pushi.e 1
pop.v.i self.con
pushi.e 893
pushenv [25]

:[24]
pushi.e 0
pop.v.i self.visible

:[25]
popenv [24]
pushi.e 943
pushenv [28]

:[26]
push.v self.bottom
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushi.e 1
pop.v.i self.draw_kris

:[28]
popenv [26]
pushi.e 943
pushenv [32]

:[29]
push.v self.bottom
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
pushi.e 15
pop.v.i self.con
b [32]

:[31]
pushi.e 1
pop.v.i self.con

:[32]
popenv [29]

:[33]
push.v self.stopcon
pushi.e 1
cmp.i.v EQ
bf [39]

:[34]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.v 82.y
push.v 168.y
pushi.e 8
sub.i.v
cmp.v.v LTE
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.stopcon
push.v 168.y
pushi.e 4
sub.i.v
pop.v.v 82.y
pushi.e 0
pop.v.i global.facing
push.s "ralsei"@72
conv.s.v
call.i gml_Script_scr_speaker(argc=1)
popz.v
push.s "obj_dw_leave_slash_Step_0_gml_71_0"@30779
conv.s.v
push.s "\\EN* Come back when you've finished your homework!/"@30780
conv.s.v
pushi.e 0
conv.i.v
call.i gml_Script_msgsetloc(argc=3)
popz.v
push.s "K"@4777
conv.s.v
push.s "susie"@70
conv.s.v
call.i gml_Script_scr_anyface_next(argc=2)
popz.v
push.s "obj_dw_leave_slash_Step_0_gml_73_0"@30781
conv.s.v
push.s "\\EK* (What's the point of having a room if you can't slack off in it?)/%"@30782
conv.s.v
call.i gml_Script_msgnextloc(argc=2)
popz.v
call.i gml_Script_d_make(argc=0)
popz.v

:[39]
push.v self.stopcon
pushi.e 2
cmp.i.v EQ
bf [41]

:[40]
call.i gml_Script_d_ex(argc=0)
conv.v.b
not.b
b [42]

:[41]
push.e 0

:[42]
bf [end]

:[43]
pushi.e 1
pop.v.i self.stopcon
pushi.e 0
pop.v.i global.interact

:[end]
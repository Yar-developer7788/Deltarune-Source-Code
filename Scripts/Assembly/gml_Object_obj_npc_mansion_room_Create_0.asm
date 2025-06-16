.localvar 2 arguments
.localvar 15594 bathbombs 7189
.localvar 15595 jongler 7190
.localvar 15596 tutoriel 7191
.localvar 14147 tutorial 7192
.localvar 15597 jello 7193
.localvar 15598 calendar 7194
.localvar 15599 casette 7195
.localvar 15600 computer 7196
.localvar 15601 talktube 7197
.localvar 15602 book 7198
.localvar 15160 egg 7199
.localvar 15603 glitch 7200
.localvar 15604 game 7201
.localvar 15605 gamebroke 7202

:[0]
pushbltn.v builtin.room
pushi.e 160
cmp.i.v EQ
bf [21]

:[1]
pushi.e 103
conv.i.v
pushi.e 152
conv.i.v
pushi.e 120
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.bathbombs
pushi.e 2835
pushloc.v local.bathbombs
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.bathbombs
pushi.e -9
pushenv [3]

:[2]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 110
conv.i.v
pushi.e 323
conv.i.v
pushi.e 124
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.jongler
pushi.e 2838
pushloc.v local.jongler
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.jongler
pushi.e -9
pushenv [5]

:[4]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[5]
popenv [4]
pushi.e 110
conv.i.v
pushi.e 326
conv.i.v
pushi.e 448
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.tutoriel
pushi.e 2843
pushloc.v local.tutoriel
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.tutoriel
pushi.e -9
pushenv [7]

:[6]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[7]
popenv [6]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [11]

:[8]
pushi.e 110
conv.i.v
pushi.e 326
conv.i.v
pushi.e 378
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.tutorial
pushi.e 2843
pushloc.v local.tutorial
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.tutorial
pushi.e -9
pushenv [10]

:[9]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[10]
popenv [9]

:[11]
pushi.e 110
conv.i.v
pushi.e 275
conv.i.v
pushi.e 124
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.jello
pushi.e 2842
pushloc.v local.jello
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.jello
pushi.e -9
pushenv [13]

:[12]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[13]
popenv [12]
pushi.e 110
conv.i.v
pushi.e 345
conv.i.v
pushi.e 199
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.calendar
pushi.e 2839
pushloc.v local.calendar
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.calendar
pushi.e -9
pushenv [15]

:[14]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[15]
popenv [14]
pushi.e 110
conv.i.v
pushi.e 266
conv.i.v
pushi.e 470
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.casette
pushi.e 2845
pushloc.v local.casette
pushi.e -9
pop.v.i [stacktop]self.sprite_index
push.i 500000
pushloc.v local.casette
pushi.e -9
pop.v.i [stacktop]self.depth
pushglb.v global.plot
pushi.e 100
cmp.i.v GTE
bf [21]

:[16]
pushi.e 103
conv.i.v
pushi.e 24
conv.i.v
pushi.e 130
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.computer
pushi.e 2847
pushloc.v local.computer
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.computer
pushi.e -9
pushenv [18]

:[17]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[18]
popenv [17]
pushi.e 105
conv.i.v
pushi.e 150
conv.i.v
pushi.e 437
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.talktube
pushi.e 2851
pushloc.v local.talktube
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushi.e 0
pushloc.v local.talktube
pushi.e -9
pop.v.i [stacktop]self.image_speed
pushloc.v local.talktube
pushi.e -9
pushenv [20]

:[19]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[20]
popenv [19]

:[21]
pushbltn.v builtin.room
pushi.e 161
cmp.i.v EQ
bf [end]

:[22]
pushi.e 110
conv.i.v
pushi.e 335
conv.i.v
pushi.e 138
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.book
pushi.e 2855
pushloc.v local.book
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.book
pushi.e -9
pushenv [24]

:[23]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[24]
popenv [23]
pushi.e 103
conv.i.v
pushi.e 282
conv.i.v
pushi.e 142
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.egg
pushi.e 2856
pushloc.v local.egg
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.egg
pushi.e -9
pushenv [26]

:[25]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[26]
popenv [25]
pushi.e 110
conv.i.v
pushi.e 200
conv.i.v
pushi.e 447
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.glitch
pushi.e 2857
pushloc.v local.glitch
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.glitch
pushi.e -9
pushenv [28]

:[27]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[28]
popenv [27]
pushi.e 103
conv.i.v
pushi.e 26
conv.i.v
pushi.e 130
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.computer
pushi.e 2859
pushloc.v local.computer
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.computer
pushi.e -9
pushenv [30]

:[29]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[30]
popenv [29]
pushi.e 110
conv.i.v
pushi.e 330
conv.i.v
pushi.e 368
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.game
pushi.e 2860
pushloc.v local.game
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.game
pushi.e -9
pushenv [32]

:[31]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[32]
popenv [31]
pushi.e 110
conv.i.v
pushi.e 302
conv.i.v
pushi.e 450
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.gamebroke
pushi.e 2861
pushloc.v local.gamebroke
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.gamebroke
pushi.e -9
pushenv [34]

:[33]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[34]
popenv [33]
pushi.e 103
conv.i.v
pushi.e 168
conv.i.v
pushi.e 124
conv.i.v
call.i gml_Script_instance_create(argc=3)
pop.v.v local.talktube
pushi.e 2862
pushloc.v local.talktube
pushi.e -9
pop.v.i [stacktop]self.sprite_index
pushloc.v local.talktube
pushi.e -9
pushenv [36]

:[35]
call.i gml_Script_scr_depth(argc=0)
popz.v

:[36]
popenv [35]

:[end]
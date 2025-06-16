.localvar 2 arguments
.localvar 12148 CH 6091

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
call.i gml_Script_snd_free_all(argc=0)
popz.v
pushglb.v global.chapter
call.i string(argc=1)
pop.v.v local.CH
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_0"@12159
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bt [4]

:[1]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_1"@12161
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bt [4]

:[2]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_2"@12163
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
bt [4]

:[3]
push.s "filech"@9691
pushloc.v local.CH
add.v.s
push.s "_3"@14322
add.s.v
call.i gml_Script_ossafe_file_exists(argc=1)
conv.v.b
b [5]

:[4]
push.e 1

:[5]
pop.v.b self.files_exist
pushi.e 0
pop.v.b self.show_queen
pushi.e 3354
pop.v.i self.queen_sprite
pushi.e 0
pop.v.i self.queen_sprite_index
pushi.e 0
pop.v.i self.queen_siner
pushi.e 1
pop.v.b self.queen_animate
pushi.e -100
pop.v.i self.queen_y_pos
pushi.e 0
pop.v.i self.queen_alpha
pushi.e 0
pop.v.i self.init
pushi.e 0
pop.v.i self.type

:[end]
.localvar 2 arguments

:[0]
push.i 175117
setowner.e
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [2]

:[1]
push.s "Continue to Chapter 2"@38172
conv.s.v
b [3]

:[2]
push.s "Chapter 2へ進む"@38173
conv.s.v

:[3]
pushi.e -1
pushi.e 0
pop.v.v [array]self.choice_text
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [5]

:[4]
push.s "Keep Playing Chapter 1"@38175
conv.s.v
b [6]

:[5]
push.s "このままChapter 1をプレイ"@38176
conv.s.v

:[6]
pushi.e -1
pushi.e 1
pop.v.v [array]self.choice_text
pushi.e 0
pop.v.i self.choice_index
pushi.e 0
pop.v.b self.confirmed_selection
pushi.e 0
pop.v.i self.text_alpha
pushi.e 0
pop.v.b self.move_noise
pushi.e 0
pop.v.b self.select_noise
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 180
add.i.v
pop.v.v self.base_text_ypos
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pushi.e 195
add.i.v
pop.v.v self.base_heart_ypos
pushi.e 40
pop.v.i self.ypos_offset
pushi.e 0
pop.v.i self.init
call.i gml_Script_snd_free_all_ch1(argc=0)
popz.v

:[end]
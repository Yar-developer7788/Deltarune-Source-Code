.localvar 2 arguments

:[0]
push.v self.init
pushi.e 40
cmp.i.v LT
bf [2]

:[1]
push.v self.init
push.e 1
add.i.v
pop.v.v self.init
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.text_alpha
push.d 0.05
add.d.v
call.i clamp(argc=3)
pop.v.v self.text_alpha
pushi.e 40
conv.i.v
pushi.e 0
conv.i.v
push.v self.ypos_offset
pushi.e 3
sub.i.v
call.i clamp(argc=3)
pop.v.v self.ypos_offset

:[2]
push.v self.confirmed_selection
conv.v.b
not.b
bf [15]

:[3]
call.i gml_Script_up_p_ch1(argc=0)
conv.v.b
bf [8]

:[4]
pushi.e 1
pop.v.b self.move_noise
push.v self.choice_index
pushi.e 1
sub.i.v
pushi.e 0
cmp.i.v LT
bf [6]

:[5]
pushi.e 1
conv.i.v
b [7]

:[6]
pushi.e 0
conv.i.v

:[7]
pop.v.v self.choice_index

:[8]
call.i gml_Script_down_p_ch1(argc=0)
conv.v.b
bf [13]

:[9]
pushi.e 1
pop.v.b self.move_noise
push.v self.choice_index
pushi.e 1
add.i.v
pushi.e 1
cmp.i.v GT
bf [11]

:[10]
pushi.e 0
conv.i.v
b [12]

:[11]
pushi.e 1
conv.i.v

:[12]
pop.v.v self.choice_index

:[13]
call.i gml_Script_button1_p_ch1(argc=0)
conv.v.b
bf [15]

:[14]
pushi.e 1
pop.v.b self.select_noise
pushi.e 1
pop.v.b self.confirmed_selection
push.i 68097
setowner.e
pushi.e 30
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[15]
push.v self.confirmed_selection
conv.v.b
bf [17]

:[16]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v self.text_alpha
push.d 0.5
sub.d.v
call.i clamp(argc=3)
pop.v.v self.text_alpha

:[17]
push.v self.move_noise
conv.v.b
bf [19]

:[18]
pushi.e 0
pop.v.b self.move_noise
pushi.e 493
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[19]
push.v self.select_noise
conv.v.b
bf [end]

:[20]
pushi.e 0
pop.v.b self.select_noise
pushi.e 494
conv.i.v
call.i gml_Script_snd_play_ch1(argc=1)
popz.v

:[end]
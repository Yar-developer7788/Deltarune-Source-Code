.localvar 2 arguments

:[0]
pushi.e -1
pop.v.i global.savedata_async_id
pushi.e 0
pop.v.b global.savedata_async_load
pushi.e 144
conv.i.v
call.i gml_Script_snd_play(argc=1)
popz.v
pushi.e 1
pop.v.b self.is_active
pushi.e 1
pop.v.b global.savedata_pause
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [2]

:[1]
pushi.e 3
conv.i.v
b [3]

:[2]
pushi.e 10
conv.i.v

:[3]
pop.v.v self.font_face
pushi.e 2
pop.v.i self.scale
push.s "default"@14501
pop.v.s self.type
push.s "save_failed"@14502
pop.v.s self.error_type
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [5]

:[4]
push.s "(Corrupt save data found.)"@14503
conv.s.v
b [6]

:[5]
push.s "(セーブデータが#破損しています)"@14504
conv.s.v

:[6]
pop.v.v self.text_save_data_corrupt
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [8]

:[7]
push.s "(Failed to save#temporary data.)"@14506
conv.s.v
b [9]

:[8]
push.s "(一時データを#セーブできませんでした)"@14507
conv.s.v

:[9]
pop.v.v self.text_temp_save_failed
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [11]

:[10]
push.s "(Save data#failed to write.)"@14509
conv.s.v
b [12]

:[11]
push.s "(セーブデータを#書き込めませんでした)"@14510
conv.s.v

:[12]
pop.v.v self.text_save_failed
push.v self.text_save_failed
pop.v.v self.window_text
pushi.e 0
pop.v.i self.auto_timer
pushi.e 0
pop.v.i self.choice_index

:[end]
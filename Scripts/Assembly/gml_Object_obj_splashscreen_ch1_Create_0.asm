.localvar 2 arguments

:[0]
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.xx
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___view_get(argc=2)
pop.v.v self.yy
pushi.e 0
pop.v.i self.text_alpha_a
pushi.e 0
pop.v.i self.text_alpha_b
pushi.e 0
pop.v.b self.loaded
push.v self.yy
pushi.e 288
add.i.v
pop.v.v self.heart_pos_y
push.v self.yy
pushi.e 328
add.i.v
pop.v.v self.heart_pos_y_ja
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [2]

:[1]
pushi.e -20
conv.i.v
b [3]

:[2]
pushi.e -10
conv.i.v

:[3]
pop.v.v self.heart_pos_x_padding
push.v self.xx
pushi.e 200
add.i.v
push.v self.heart_pos_x_padding
add.v.v
pop.v.v self.heart_pos_x_default
push.v self.heart_pos_x_default
pop.v.v self.heart_pos_x
pushglb.v global.lang
push.s "ja"@6181
cmp.s.v EQ
bf [5]

:[4]
pushi.e 140
conv.i.v
b [6]

:[5]
pushi.e 155
conv.i.v

:[6]
pop.v.v self.heart_pos_x_h_padding
pushi.e 50
pop.v.i self.line_height
pushi.e 33
pop.v.i self.line_height_ja
pushi.e 45
pop.v.i self.select_padding
pushi.e 0
pop.v.b self.confirming
pushi.e 0
pop.v.b self.visit_shop
pushi.e 0
pop.v.b self.selected
pushi.e 0
pop.v.i self.buffer
push.s "This program is intended for players#who are already familiar with UNDERTALE."@41971
pop.v.s self.played_text_en
push.s "このプログラムは、"@41973
pop.v.s self.played_text_ja_1
push.s "すでに「UNDERTALE」をプレイした方向けです。"@41975
pop.v.s self.played_text_ja_2
push.s "Would you like to check out UNDERTALE first?"@41977
pop.v.s self.check_text_en
push.s "まだプレイしたことのない方は、"@41979
pop.v.s self.check_text_ja_1
push.s "まずは「UNDERTALE」をチェックしてみませんか？"@41981
pop.v.s self.check_text_ja_2
push.i 175860
setowner.e
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [8]

:[7]
push.s "No"@2449
conv.s.v
push.s "Yes"@5613
conv.s.v
call.i @@NewGMLArray@@(argc=2)
b [9]

:[8]
push.s "いいえ"@14626
conv.s.v
push.s "はい"@14625
conv.s.v
call.i @@NewGMLArray@@(argc=2)

:[9]
pop.v.v self.shop_options
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [11]

:[10]
push.s "Nintendo eShop"@41984
conv.s.v
b [12]

:[11]
push.s "ニンテンドーeショップ"@41985
conv.s.v

:[12]
pop.v.v self.shop_text
pushi.e 0
pop.v.b self.commerce_dialog_open
pushbltn.v builtin.os_type
pushi.e 14
cmp.i.v EQ
bf [17]

:[13]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [15]

:[14]
push.s "\"PlayStation Store\""@41988
conv.s.v
b [16]

:[15]
push.s "「PlayStation Store」"@41989
conv.s.v

:[16]
pop.v.v self.shop_text
call.i psn_load_modules(argc=0)
popz.v

:[17]
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [19]

:[18]
push.s "Check Out UNDERTALE"@41991
conv.s.v
b [20]

:[19]
push.s "「UNDERTALE」をチェック"@41992
conv.s.v

:[20]
pop.v.v self.check_undertale
pushglb.v global.lang
push.s "en"@9432
cmp.s.v EQ
bf [22]

:[21]
push.s "Start DELTARUNE"@41994
conv.s.v
b [23]

:[22]
push.s "「DELTARUNE」をプレイ"@41995
conv.s.v

:[23]
pop.v.v self.start_dr
pushbltn.v builtin.room
pop.v.v global.currentroom

:[end]
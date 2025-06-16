.localvar 2 arguments
.localvar 26846 so 15784
.localvar 10391 varname 15785
.localvar 29974 foundvar 15786
.localvar 29977 newvalue 15787
.localvar 29980 whatflag 15788
.localvar 29982 flagvalue 15789
.localvar 29990 varval 15790
.localvar 29993 newval 15791
.localvar 29995 bepis 15792

:[0]
pushi.e 30
pop.v.i self.bspace
pushi.e 5
pop.v.i self.padding
pushi.e 160
pop.v.i self.wd
pushi.e 40
push.v self.bspace
push.v self.button_amount
mul.v.v
add.v.i
pop.v.v self.ht
pushbltn.v builtin.mouse_x
call.i gml_Script_camerax(argc=0)
sub.v.v
pop.v.v self.mx
pushbltn.v builtin.mouse_y
call.i gml_Script_cameray(argc=0)
sub.v.v
pop.v.v self.my
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
push.v self.ht
add.v.v
pushi.e 4
add.i.v
push.v self.xx
push.v self.wd
add.v.v
pushi.e 4
add.i.v
push.v self.yy
pushi.e 4
sub.i.v
push.v self.xx
pushi.e 4
sub.i.v
call.i draw_rectangle(argc=5)
popz.v
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.b.v
push.v self.yy
push.v self.ht
add.v.v
push.v self.xx
push.v self.wd
add.v.v
push.v self.yy
push.v self.xx
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.button_amount
cmp.v.v LT
bf [12]

:[2]
push.i 172966
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.button_state
push.v self.yy
push.v self.bspace
pushi.e 1
add.i.v
push.v self.i
mul.v.v
add.v.v
push.v self.bspace
add.v.v
push.v self.xx
push.v self.wd
add.v.v
pushi.e 10
sub.i.v
push.v self.yy
push.v self.bspace
push.v self.i
mul.v.v
add.v.v
push.v self.padding
add.v.v
push.v self.xx
pushi.e 10
add.i.v
push.v self.my
push.v self.mx
call.i point_in_rectangle(argc=6)
conv.v.b
bf [11]

:[3]
push.v self.i
pushi.e 0
cmp.i.v GT
bf [9]

:[4]
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.button_state
pushi.e 1
conv.i.v
call.i mouse_check_button(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e 2
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.button_state

:[6]
pushi.e 1
conv.i.v
call.i mouse_check_button_released(argc=1)
conv.v.b
bf [8]

:[7]
pushi.e 3
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.button_state
push.i 172967
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.button_clicked

:[8]
b [11]

:[9]
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.button_state
pushi.e 1
conv.i.v
call.i mouse_check_button(argc=1)
conv.v.b
bf [11]

:[10]
push.i 172967
setowner.e
pushi.e 1
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.button_clicked
push.i 172966
setowner.e
pushi.e 3
conv.i.v
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.button_state

:[11]
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [1]

:[12]
pushi.e 3
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[13]
push.v self.i
push.v self.button_amount
cmp.v.v LT
bf [25]

:[14]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.button_state
pushi.e 0
cmp.i.v EQ
bf [16]

:[15]
push.i 12632256
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[16]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.button_state
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[18]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.button_state
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[20]
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.button_state
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
push.i 16711680
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[22]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
push.d 0.7
conv.d.v
push.i 16776960
conv.i.v
call.i draw_get_color(argc=0)
call.i merge_color(argc=3)
call.i draw_set_color(argc=1)
popz.v

:[24]
pushi.e 0
conv.b.v
push.v self.yy
pushi.e 30
add.i.v
push.v self.bspace
pushi.e 1
add.i.v
push.v self.i
mul.v.v
add.v.v
push.v self.padding
sub.v.v
push.v self.xx
push.v self.wd
add.v.v
pushi.e 10
sub.i.v
push.v self.yy
push.v self.bspace
push.v self.i
mul.v.v
add.v.v
push.v self.padding
add.v.v
push.v self.xx
pushi.e 10
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.b.v
push.v self.yy
pushi.e 30
add.i.v
push.v self.bspace
pushi.e 1
add.i.v
push.v self.i
mul.v.v
add.v.v
push.v self.padding
sub.v.v
push.v self.xx
push.v self.wd
add.v.v
pushi.e 10
sub.i.v
push.v self.yy
push.v self.bspace
push.v self.i
mul.v.v
add.v.v
push.v self.padding
add.v.v
push.v self.xx
pushi.e 10
add.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.button_text
push.v self.yy
push.v self.bspace
push.v self.i
mul.v.v
add.v.v
push.v self.padding
add.v.v
push.v self.xx
pushi.e 10
add.i.v
call.i draw_text(argc=3)
popz.v
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.i
push.e 1
add.i.v
pop.v.v self.i
b [13]

:[25]
pushi.e -1
pushi.e 0
push.v [array]self.button_clicked
pushi.e 1
cmp.i.v EQ
bf [29]

:[26]
pushi.e 1
conv.i.v
call.i mouse_check_button(argc=1)
conv.v.b
bf [28]

:[27]
push.v self.xx
push.v self.mx
push.v self.remmx
sub.v.v
add.v.v
pop.v.v self.xx
push.v self.yy
push.v self.my
push.v self.remmy
sub.v.v
add.v.v
pop.v.v self.yy
b [29]

:[28]
push.i 172967
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 0
pop.v.v [array]self.button_clicked

:[29]
push.v self.type
pushi.e 0
cmp.i.v EQ
bf [70]

:[30]
pushi.e -1
pushi.e 1
push.v [array]self.button_clicked
pushi.e 1
cmp.i.v EQ
bf [36]

:[31]
pushi.e 903
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [35]

:[32]
push.v 903.selected_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [35]

:[33]
push.s ""@157
conv.s.v
push.s "Enter new sprite_index."@29972
conv.s.v
call.i get_string(argc=2)
call.i asset_get_index(argc=1)
pop.v.v self.checksprite
push.v self.checksprite
pushi.e -1
cmp.i.v NEQ
bf [35]

:[34]
push.v self.checksprite
push.v 903.selected_object
pushi.e -9
pop.v.v [stacktop]self.sprite_index

:[35]
push.i 172967
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.button_clicked

:[36]
pushi.e -1
pushi.e 2
push.v [array]self.button_clicked
pushi.e 1
cmp.i.v EQ
bf [43]

:[37]
pushi.e 903
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [42]

:[38]
push.v 903.selected_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [42]

:[39]
push.v 903.selected_object
pop.v.v local.so
push.s ""@157
conv.s.v
push.s "Enter variable name. No quotation marks. No arrays."@29973
conv.s.v
call.i get_string(argc=2)
pop.v.v local.varname
pushloc.v local.varname
pushloc.v local.so
call.i variable_instance_exists(argc=2)
conv.v.b
bf [41]

:[40]
pushloc.v local.varname
pushloc.v local.so
call.i variable_instance_get(argc=2)
pop.v.v local.foundvar
pushloc.v local.foundvar
call.i string(argc=1)
pop.v.v local.foundvar
push.s ""@157
conv.s.v
pushloc.v local.varname
push.s " is "@29975
add.s.v
pushloc.v local.foundvar
add.v.v
push.s ". Enter new REAL NUMBER value."@29976
add.s.v
call.i get_string(argc=2)
pop.v.v local.newvalue
pushloc.v local.newvalue
call.i real(argc=1)
pushloc.v local.varname
pushloc.v local.so
call.i variable_instance_set(argc=3)
popz.v
b [42]

:[41]
push.s "No variable exists. Zannen."@29978
conv.s.v
call.i show_message(argc=1)
popz.v

:[42]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.button_clicked

:[43]
pushi.e -1
pushi.e 3
push.v [array]self.button_clicked
pushi.e 1
cmp.i.v EQ
bf [50]

:[44]
pushi.e 903
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [49]

:[45]
push.v 903.selected_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [49]

:[46]
push.v 903.selected_object
pop.v.v local.so
push.s ""@157
conv.s.v
push.s "Enter variable name. No quotation marks. No arrays."@29973
conv.s.v
call.i get_string(argc=2)
pop.v.v local.varname
pushloc.v local.varname
pushloc.v local.so
call.i variable_instance_exists(argc=2)
conv.v.b
bf [48]

:[47]
pushloc.v local.varname
pushloc.v local.so
call.i variable_instance_get(argc=2)
call.i string(argc=1)
pop.v.v local.foundvar
push.s ""@157
conv.s.v
pushloc.v local.varname
push.s " is "@29975
add.s.v
pushloc.v local.foundvar
add.v.v
push.s ". Enter string value."@29979
add.s.v
call.i get_string(argc=2)
pop.v.v local.newvalue
pushloc.v local.newvalue
call.i string(argc=1)
pushloc.v local.varname
pushloc.v local.so
call.i variable_instance_set(argc=3)
popz.v
b [49]

:[48]
push.s "No variable exists. Zannen."@29978
conv.s.v
call.i show_message(argc=1)
popz.v

:[49]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.button_clicked

:[50]
pushi.e -1
pushi.e 4
push.v [array]self.button_clicked
pushi.e 1
cmp.i.v EQ
bf [57]

:[51]
pushi.e 903
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [56]

:[52]
push.v 903.selected_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [56]

:[53]
push.v 903.selected_object
pop.v.v local.so
push.s ""@157
conv.s.v
push.s "Enter variable name. No quotation marks. No arrays."@29973
conv.s.v
call.i get_string(argc=2)
pop.v.v local.varname
pushloc.v local.varname
pushloc.v local.so
call.i variable_instance_exists(argc=2)
conv.v.b
bf [55]

:[54]
pushloc.v local.varname
pop.v.v self.watchvar
b [56]

:[55]
push.s "No variable exists. Zannen."@29978
conv.s.v
call.i show_message(argc=1)
popz.v

:[56]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.button_clicked

:[57]
pushi.e -1
pushi.e 5
push.v [array]self.button_clicked
pushi.e 1
cmp.i.v EQ
bf [64]

:[58]
pushi.e 903
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [63]

:[59]
push.v 903.selected_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [63]

:[60]
push.v 903.selected_object
pushi.e -9
pushenv [62]

:[61]
call.i instance_destroy(argc=0)
popz.v

:[62]
popenv [61]
call.i instance_destroy(argc=0)
popz.v

:[63]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.button_clicked

:[64]
push.v self.watchvar
push.s " "@353
cmp.s.v NEQ
bf [69]

:[65]
push.i 172962
setowner.e
push.s "Watch Variable"@29962
conv.s.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.button_text
pushi.e 903
conv.i.v
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [69]

:[66]
push.v 903.selected_object
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [69]

:[67]
push.v 903.selected_object
pop.v.v local.so
push.v self.watchvar
pushloc.v local.so
call.i variable_instance_exists(argc=2)
conv.v.b
bf [69]

:[68]
push.v self.watchvar
push.s ": "@14269
add.s.v
push.v self.watchvar
pushloc.v local.so
call.i variable_instance_get(argc=2)
call.i string(argc=1)
add.v.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.button_text

:[69]
b [107]

:[70]
push.v self.type
pushi.e 1
cmp.i.v EQ
bf [107]

:[71]
pushi.e -1
pushi.e 1
push.v [array]self.button_clicked
pushi.e 1
cmp.i.v EQ
bf [77]

:[72]
pushi.e -1
pop.v.i local.whatflag
push.s ""@157
conv.s.v
push.s "Which flag? "@29981
conv.s.v
call.i get_string(argc=2)
pop.v.v local.whatflag
pushloc.v local.whatflag
push.s ""@157
cmp.s.v NEQ
bf [76]

:[73]
pushloc.v local.whatflag
call.i string_digits(argc=1)
call.i real(argc=1)
pop.v.v local.whatflag
pushloc.v local.whatflag
pushi.e 0
cmp.i.v GT
bf [76]

:[74]
pushi.e -5
pushloc.v local.whatflag
conv.v.i
push.v [array]self.flag
pop.v.v local.flagvalue
push.s ""@157
conv.s.v
push.s "Flag ["@29983
pushloc.v local.whatflag
call.i string(argc=1)
add.v.s
push.s "] is "@29984
add.s.v
pushloc.v local.flagvalue
call.i string(argc=1)
add.v.v
push.s ". Enter new value."@29985
add.s.v
call.i get_string(argc=2)
pop.v.v local.flagvalue
pushloc.v local.flagvalue
push.s ""@157
cmp.s.v NEQ
bf [76]

:[75]
push.i 231204
setowner.e
pushloc.v local.flagvalue
call.i string_digits(argc=1)
call.i real(argc=1)
pushi.e -5
pushloc.v local.whatflag
conv.v.i
pop.v.v [array]self.flag

:[76]
push.i 172967
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.button_clicked

:[77]
pushi.e -1
pushi.e 2
push.v [array]self.button_clicked
pushi.e 1
cmp.i.v EQ
bf [82]

:[78]
pushi.e -1
pop.v.i local.whatflag
push.s ""@157
conv.s.v
push.s "Flag to watch? "@29986
conv.s.v
call.i get_string(argc=2)
pop.v.v local.whatflag
pushloc.v local.whatflag
push.s ""@157
cmp.s.v NEQ
bf [82]

:[79]
pushloc.v local.whatflag
call.i string_digits(argc=1)
call.i real(argc=1)
pop.v.v local.whatflag
pushloc.v local.whatflag
pushi.e 0
cmp.i.v GT
bf [81]

:[80]
pushloc.v local.whatflag
pop.v.v self.watchflag

:[81]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.button_clicked

:[82]
push.v self.watchflag
pushi.e 0
cmp.i.v GT
bf [84]

:[83]
push.i 172962
setowner.e
push.s "Flag ["@29983
push.v self.watchflag
call.i string(argc=1)
add.v.s
push.s "] : "@29987
add.s.v
pushi.e -5
push.v self.watchflag
conv.v.i
push.v [array]self.flag
call.i string(argc=1)
add.v.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.button_text

:[84]
pushi.e -1
pushi.e 3
push.v [array]self.button_clicked
pushi.e 1
cmp.i.v EQ
bf [93]

:[85]
push.s ""@157
conv.s.v
push.s "Enter variable name without \"global.\""@29988
conv.s.v
call.i get_string(argc=2)
pop.v.v local.varname
pushloc.v local.varname
push.s ""@157
cmp.s.v NEQ
bf [92]

:[86]
pushloc.v local.varname
call.i variable_global_exists(argc=1)
conv.v.b
bf [91]

:[87]
pushloc.v local.varname
call.i variable_global_get(argc=1)
pop.v.v local.varval
push.s ""@157
conv.s.v
push.s "The value of "@29991
pushloc.v local.varname
add.v.s
push.s " is "@29975
add.s.v
pushloc.v local.varval
call.i string(argc=1)
add.v.v
push.s ". What to set it to?"@29992
add.s.v
call.i get_string(argc=2)
pop.v.v local.newval
pushloc.v local.newval
push.s ""@157
cmp.s.v NEQ
bf [90]

:[88]
pushloc.v local.newval
call.i string_digits(argc=1)
call.i real(argc=1)
pushi.e 0
cmp.i.v GT
bf [90]

:[89]
pushloc.v local.newval
call.i real(argc=1)
pushloc.v local.varname
call.i variable_global_set(argc=2)
popz.v

:[90]
b [92]

:[91]
push.s "No variable exists. Zannen."@29978
conv.s.v
call.i show_message(argc=1)
popz.v

:[92]
push.i 172967
setowner.e
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 3
pop.v.v [array]self.button_clicked

:[93]
pushi.e -1
pushi.e 4
push.v [array]self.button_clicked
pushi.e 1
cmp.i.v EQ
bf [100]

:[94]
push.s ""@157
conv.s.v
push.s "object name?"@29994
conv.s.v
call.i get_string(argc=2)
pop.v.v local.varname
pushloc.v local.varname
push.s ""@157
cmp.s.v NEQ
bf [99]

:[95]
pushloc.v local.varname
call.i asset_get_index(argc=1)
call.i gml_Script_i_ex(argc=1)
conv.v.b
bf [99]

:[96]
pushi.e 903
pushenv [98]

:[97]
pushi.e 0
conv.i.v
pushloc.v local.varname
call.i asset_get_index(argc=1)
call.i instance_find(argc=2)
pop.v.v self.selected_object

:[98]
popenv [97]
call.i instance_destroy(argc=0)
popz.v

:[99]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 4
pop.v.v [array]self.button_clicked

:[100]
pushi.e -1
pushi.e 5
push.v [array]self.button_clicked
pushi.e 1
cmp.i.v EQ
bf [107]

:[101]
push.s ""@157
conv.s.v
push.s "object name?"@29994
conv.s.v
call.i get_string(argc=2)
pop.v.v local.varname
pushloc.v local.varname
push.s ""@157
cmp.s.v NEQ
bf [106]

:[102]
pushloc.v local.varname
call.i asset_get_index(argc=1)
pushi.e 0
cmp.i.v GT
bf [106]

:[103]
pushloc.v local.varname
call.i asset_get_index(argc=1)
pushbltn.v builtin.mouse_y
pushbltn.v builtin.mouse_x
call.i gml_Script_instance_create(argc=3)
pop.v.v local.bepis
pushi.e 903
pushenv [105]

:[104]
pushloc.v local.bepis
pop.v.v self.selected_object

:[105]
popenv [104]
call.i instance_destroy(argc=0)
popz.v

:[106]
pushi.e 0
conv.i.v
pushi.e -1
pushi.e 5
pop.v.v [array]self.button_clicked

:[107]
pushi.e 500
conv.i.v
pushi.e 40
conv.i.v
push.v self.xx
call.i clamp(argc=3)
pop.v.v self.xx
pushi.e 340
conv.i.v
pushi.e 40
conv.i.v
push.v self.yy
call.i clamp(argc=3)
pop.v.v self.yy
pushbltn.v builtin.mouse_x
call.i gml_Script_camerax(argc=0)
sub.v.v
pop.v.v self.remmx
pushbltn.v builtin.mouse_y
call.i gml_Script_cameray(argc=0)
sub.v.v
pop.v.v self.remmy
push.v self.my
push.v self.mx
pushi.e 0
conv.i.v
pushi.e 1751
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]
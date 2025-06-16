.localvar 2 arguments
.localvar 147 data 76
.localvar 148 num_lines 77
.localvar 152 newline_pos 78
.localvar 153 nextline_pos 79
.localvar 156 line 80
.localvar 159 lines 82
.localvar 167 test_truename 84
.localvar 173 is_valid 87
.localvar 107 i 88
.localvar 175 char_test 89
.localvar 177 test_gold 91
.localvar 179 test_xp 93
.localvar 181 test_lv 95
.localvar 183 test_inv 97
.localvar 185 test_invc 99
.localvar 187 test_darkzone 101
.localvar 200 test_itemat 114
.localvar 202 test_itemdf 116
.localvar 204 test_itemmag 118
.localvar 206 test_itembolts 120
.localvar 208 test_itemgrazeamt 122
.localvar 210 test_itemgrazesize 124
.localvar 212 test_itemboltspeed 126
.localvar 214 test_itemspecial 128
.localvar 216 test_itemelement 130
.localvar 218 test_itemelementamount 132
.localvar 221 test_spell 135
.localvar 223 test_boltspeed 137
.localvar 225 test_grazeamt 139
.localvar 227 test_grazesize 141
.localvar 234 test_tension 148
.localvar 236 test_maxtension 150
.localvar 238 test_lweapon 152
.localvar 240 test_larmor 154
.localvar 242 test_lxp 156
.localvar 244 test_llv 158
.localvar 246 test_lgold 160
.localvar 248 test_lhp 162
.localvar 250 test_lmaxhp 164
.localvar 252 test_lat 166
.localvar 254 test_ldf 168
.localvar 256 test_lwstrength 170
.localvar 258 test_ladef 172
.localvar 263 test_plot 177
.localvar 265 test_room 179
.localvar 267 test_time 181

:[0]
b [266]

> gml_Script_scr_validate_data (locals=46, argc=1)
:[1]
pushbltn.v builtin.os_type
pushi.e 21
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
conv.b.v
ret.v

:[3]
push.v arg.argument0
pop.v.v local.data
pushi.e 0
pop.v.i local.num_lines

:[4]
pushloc.v local.data
call.i string_byte_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [20]

:[5]
pushloc.v local.data
push.s "\n"@150
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.newline_pos
pushloc.v local.newline_pos
pushi.e 0
cmp.i.v GT
bf [18]

:[6]
pushloc.v local.newline_pos
pushi.e 1
add.i.v
pop.v.v local.nextline_pos
pushloc.v local.newline_pos
pushi.e 1
cmp.i.v GT
bf [8]

:[7]
pushloc.v local.newline_pos
pushi.e 1
sub.i.v
pushloc.v local.data
call.i string_char_at(argc=2)
push.s "\r"@154
cmp.s.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
push.v local.newline_pos
push.e 1
sub.i.v
pop.v.v local.newline_pos

:[11]
pushloc.v local.newline_pos
pushi.e 1
cmp.i.v GT
bf [13]

:[12]
pushloc.v local.newline_pos
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local.data
call.i gml_Script_substr(argc=3)
pop.v.v local.line
b [14]

:[13]
push.s ""@157
pop.v.s local.line

:[14]
pushloc.v local.nextline_pos
pushloc.v local.data
call.i gml_Script_strlen(argc=1)
cmp.v.v LTE
bf [16]

:[15]
pushloc.v local.nextline_pos
pushloc.v local.data
call.i gml_Script_substr(argc=2)
pop.v.v local.data
b [17]

:[16]
push.s ""@157
pop.v.s local.data

:[17]
b [19]

:[18]
pushloc.v local.data
pop.v.v local.line
push.s ""@157
pop.v.s local.data

:[19]
push.i 1410756
setowner.e
pushloc.v local.line
pushi.e -7
push.v local.num_lines
dup.v 0
push.e 1
add.i.v
pop.v.v local.num_lines
conv.v.i
pop.v.v [array]self.lines
b [4]

:[20]
call.i ds_map_create(argc=0)
pop.v.v self.myfileid
pushi.e 0
conv.b.v
push.s "is_write"@162
conv.s.v
push.v self.myfileid
call.i ds_map_set(argc=3)
popz.v
pushloc.v local.lines
push.s "text"@164
conv.s.v
push.v self.myfileid
call.i ds_map_set(argc=3)
popz.v
pushloc.v local.num_lines
push.s "num_lines"@148
conv.s.v
push.v self.myfileid
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "line"@156
conv.s.v
push.v self.myfileid
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.b.v
push.s "line_read"@165
conv.s.v
push.v self.myfileid
call.i ds_map_set(argc=3)
popz.v
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_string(argc=1)
pop.v.v local.test_truename
pushloc.v local.test_truename
pushglb.v global.truename
cmp.v.v NEQ
bf [23]

:[21]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[22]
b [24]

:[23]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[24]
pushglb.v global.othername
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [27]

:[25]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[26]
b [28]

:[27]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[28]
pushi.e 1
pop.v.b local.is_valid
pushi.e 0
pop.v.i local.i

:[29]
pushloc.v local.i
pushi.e 3
cmp.i.v LT
bf [35]

:[30]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.char_test
pushloc.v local.char_test
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [array]self.char
cmp.v.v NEQ
bf [33]

:[31]
pushi.e 0
pop.v.b local.is_valid
b [35]

:[32]
b [34]

:[33]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[34]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [29]

:[35]
pushloc.v local.is_valid
conv.v.b
not.b
bf [37]

:[36]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[37]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_gold
pushloc.v local.test_gold
pushglb.v global.gold
cmp.v.v NEQ
bf [40]

:[38]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[39]
b [41]

:[40]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[41]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_xp
pushloc.v local.test_xp
pushglb.v global.xp
cmp.v.v NEQ
bf [44]

:[42]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[43]
b [45]

:[44]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[45]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_lv
pushloc.v local.test_lv
pushglb.v global.lv
cmp.v.v NEQ
bf [48]

:[46]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[47]
b [49]

:[48]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[49]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_inv
pushloc.v local.test_inv
pushglb.v global.inv
cmp.v.v NEQ
bf [52]

:[50]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[51]
b [53]

:[52]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[53]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_invc
pushloc.v local.test_invc
pushglb.v global.invc
cmp.v.v NEQ
bf [56]

:[54]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[55]
b [57]

:[56]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[57]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_darkzone
pushloc.v local.test_darkzone
pushglb.v global.darkzone
cmp.v.v NEQ
bf [60]

:[58]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[59]
b [61]

:[60]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[61]
pushglb.v global.hp
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [64]

:[62]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[63]
b [65]

:[64]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[65]
pushglb.v global.maxhp
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [68]

:[66]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[67]
b [69]

:[68]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[69]
pushglb.v global.at
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [72]

:[70]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[71]
b [73]

:[72]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[73]
pushglb.v global.df
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [76]

:[74]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[75]
b [77]

:[76]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[77]
pushglb.v global.mag
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [80]

:[78]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[79]
b [81]

:[80]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[81]
pushglb.v global.guts
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [84]

:[82]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[83]
b [85]

:[84]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[85]
pushglb.v global.charweapon
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [88]

:[86]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[87]
b [89]

:[88]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[89]
pushglb.v global.chararmor1
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [92]

:[90]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[91]
b [93]

:[92]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[93]
pushglb.v global.chararmor2
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [96]

:[94]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[95]
b [97]

:[96]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[97]
pushglb.v global.weaponstyle
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [100]

:[98]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[99]
b [101]

:[100]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[101]
pushi.e 1
pop.v.b local.is_valid
pushi.e 0
pop.v.i local.i

:[102]
pushloc.v local.i
pushi.e 5
cmp.i.v LT
bf [154]

:[103]
pushi.e 0
pop.v.i self.q

:[104]
push.v self.q
pushi.e 4
cmp.i.v LT
bf [146]

:[105]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_itemat
pushloc.v local.test_itemat
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.itemat
push.v self.q
conv.v.i
pushaf.e
cmp.v.v NEQ
bf [108]

:[106]
pushi.e 0
pop.v.b local.is_valid
b [146]

:[107]
b [109]

:[108]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[109]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_itemdf
pushloc.v local.test_itemdf
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.itemdf
push.v self.q
conv.v.i
pushaf.e
cmp.v.v NEQ
bf [112]

:[110]
pushi.e 0
pop.v.b local.is_valid
b [146]

:[111]
b [113]

:[112]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[113]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_itemmag
pushloc.v local.test_itemmag
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.itemmag
push.v self.q
conv.v.i
pushaf.e
cmp.v.v NEQ
bf [116]

:[114]
pushi.e 0
pop.v.b local.is_valid
b [146]

:[115]
b [117]

:[116]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[117]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_itembolts
pushloc.v local.test_itembolts
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.itembolts
push.v self.q
conv.v.i
pushaf.e
cmp.v.v NEQ
bf [120]

:[118]
pushi.e 0
pop.v.b local.is_valid
b [146]

:[119]
b [121]

:[120]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[121]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_itemgrazeamt
pushloc.v local.test_itemgrazeamt
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.itemgrazeamt
push.v self.q
conv.v.i
pushaf.e
cmp.v.v NEQ
bf [124]

:[122]
pushi.e 0
pop.v.b local.is_valid
b [146]

:[123]
b [125]

:[124]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[125]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_itemgrazesize
pushloc.v local.test_itemgrazesize
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.itemgrazesize
push.v self.q
conv.v.i
pushaf.e
cmp.v.v NEQ
bf [128]

:[126]
pushi.e 0
pop.v.b local.is_valid
b [146]

:[127]
b [129]

:[128]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[129]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_itemboltspeed
pushloc.v local.test_itemboltspeed
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.itemboltspeed
push.v self.q
conv.v.i
pushaf.e
cmp.v.v NEQ
bf [132]

:[130]
pushi.e 0
pop.v.b local.is_valid
b [146]

:[131]
b [133]

:[132]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[133]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_itemspecial
pushloc.v local.test_itemspecial
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.itemspecial
push.v self.q
conv.v.i
pushaf.e
cmp.v.v NEQ
bf [136]

:[134]
pushi.e 0
pop.v.b local.is_valid
b [146]

:[135]
b [137]

:[136]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[137]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_itemelement
pushloc.v local.test_itemelement
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.itemelement
push.v self.q
conv.v.i
pushaf.e
cmp.v.v NEQ
bf [140]

:[138]
pushi.e 0
pop.v.b local.is_valid
b [146]

:[139]
b [141]

:[140]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[141]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_itemelementamount
pushloc.v local.test_itemelementamount
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.itemelementamount
push.v self.q
conv.v.i
pushaf.e
cmp.v.v NEQ
bf [144]

:[142]
pushi.e 0
pop.v.b local.is_valid
b [146]

:[143]
b [145]

:[144]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[145]
push.v self.q
pushi.e 1
add.i.v
pop.v.v self.q
b [104]

:[146]
pushi.e 0
pop.v.i self.j

:[147]
push.v self.j
pushi.e 12
cmp.i.v LT
bf [153]

:[148]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_spell
pushloc.v local.test_spell
pushi.e -5
pushloc.v local.i
conv.v.i
push.v [arraypushaf]self.spell
push.v self.j
conv.v.i
pushaf.e
cmp.v.v NEQ
bf [151]

:[149]
pushi.e 0
pop.v.b local.is_valid
b [153]

:[150]
b [152]

:[151]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[152]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [147]

:[153]
push.v local.i
pushi.e 1
add.i.v
pop.v.v local.i
b [102]

:[154]
pushloc.v local.is_valid
conv.v.b
not.b
bf [156]

:[155]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[156]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_boltspeed
pushloc.v local.test_boltspeed
pushglb.v global.boltspeed
cmp.v.v NEQ
bf [159]

:[157]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[158]
b [160]

:[159]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[160]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_grazeamt
pushloc.v local.test_grazeamt
pushglb.v global.grazeamt
cmp.v.v NEQ
bf [163]

:[161]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[162]
b [164]

:[163]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[164]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_grazesize
pushloc.v local.test_grazesize
pushglb.v global.grazesize
cmp.v.v NEQ
bf [167]

:[165]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[166]
b [168]

:[167]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[168]
pushglb.v global.item
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [171]

:[169]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[170]
b [172]

:[171]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[172]
pushglb.v global.keyitem
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [175]

:[173]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[174]
b [176]

:[175]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[176]
pushglb.v global.weapon
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [179]

:[177]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[178]
b [180]

:[179]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[180]
pushglb.v global.armor
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [183]

:[181]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[182]
b [184]

:[183]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[184]
pushglb.v global.pocketitem
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [187]

:[185]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[186]
b [188]

:[187]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[188]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_tension
pushloc.v local.test_tension
pushglb.v global.tension
cmp.v.v NEQ
bf [191]

:[189]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[190]
b [192]

:[191]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[192]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_maxtension
pushloc.v local.test_maxtension
pushglb.v global.maxtension
cmp.v.v NEQ
bf [195]

:[193]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[194]
b [196]

:[195]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[196]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_lweapon
pushloc.v local.test_lweapon
pushglb.v global.lweapon
cmp.v.v NEQ
bf [199]

:[197]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[198]
b [200]

:[199]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[200]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_larmor
pushloc.v local.test_larmor
pushglb.v global.larmor
cmp.v.v NEQ
bf [203]

:[201]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[202]
b [204]

:[203]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[204]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_lxp
pushloc.v local.test_lxp
pushglb.v global.lxp
cmp.v.v NEQ
bf [207]

:[205]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[206]
b [208]

:[207]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[208]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_llv
pushloc.v local.test_llv
pushglb.v global.llv
cmp.v.v NEQ
bf [211]

:[209]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[210]
b [212]

:[211]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[212]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_lgold
pushloc.v local.test_lgold
pushglb.v global.lgold
cmp.v.v NEQ
bf [215]

:[213]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[214]
b [216]

:[215]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[216]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_lhp
pushloc.v local.test_lhp
pushglb.v global.lhp
cmp.v.v NEQ
bf [219]

:[217]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[218]
b [220]

:[219]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[220]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_lmaxhp
pushloc.v local.test_lmaxhp
pushglb.v global.lmaxhp
cmp.v.v NEQ
bf [223]

:[221]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[222]
b [224]

:[223]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[224]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_lat
pushloc.v local.test_lat
pushglb.v global.lat
cmp.v.v NEQ
bf [227]

:[225]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[226]
b [228]

:[227]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[228]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_ldf
pushloc.v local.test_ldf
pushglb.v global.ldf
cmp.v.v NEQ
bf [231]

:[229]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[230]
b [232]

:[231]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[232]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_lwstrength
pushloc.v local.test_lwstrength
pushglb.v global.lwstrength
cmp.v.v NEQ
bf [235]

:[233]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[234]
b [236]

:[235]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[236]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_ladef
pushloc.v local.test_ladef
pushglb.v global.ladef
cmp.v.v NEQ
bf [239]

:[237]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[238]
b [240]

:[239]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[240]
pushglb.v global.litem
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [243]

:[241]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[242]
b [244]

:[243]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[244]
pushglb.v global.phone
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [247]

:[245]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[246]
b [248]

:[247]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[248]
pushglb.v global.flag
push.v self.myfileid
call.i gml_Script_scr_validate_list(argc=2)
conv.v.b
not.b
bf [251]

:[249]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[250]
b [252]

:[251]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[252]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_plot
pushloc.v local.test_plot
pushglb.v global.plot
cmp.v.v NEQ
bf [255]

:[253]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[254]
b [256]

:[255]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[256]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_room
pushloc.v local.test_room
pushglb.v global.currentroom
cmp.v.v NEQ
bf [259]

:[257]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[258]
b [260]

:[259]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[260]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_read_real(argc=1)
pop.v.v local.test_time
pushloc.v local.test_time
pushglb.v global.lastsavedtime
cmp.v.v NEQ
bf [263]

:[261]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 0
conv.b.v
ret.v

:[262]
b [264]

:[263]
push.v self.myfileid
call.i gml_Script_ossafe_file_text_readln(argc=1)
popz.v

:[264]
push.v self.myfileid
call.i ds_map_destroy(argc=1)
popz.v
pushi.e 1
conv.b.v
ret.v

:[265]
exit.i

:[266]
push.i [function]gml_Script_scr_validate_data
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pushi.e -1
pop.v.v [stacktop]self.scr_validate_data
popz.v

:[end]
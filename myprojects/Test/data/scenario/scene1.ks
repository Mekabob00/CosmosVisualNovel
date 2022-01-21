;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="room.jpg" time="100"]

;メニューボタンの表示
;@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=0 top=780 width=1960 height=300 page=fore visible=true frame="Message_window.png" opacity="200"]

[button name="role_button" role="save" graphic="window/save.png" enterimg="window/save_on.png" x="803" y="1033" width="55" height="30" hint="セーブ画面を開きます。" ]
[button name="role_button" role="load" graphic="window/load.png" enterimg="window/load_on.png" x="863" y="1033" width="55" height="30" hint="ロード画面を開きます。" ]
[button name="role_button" role="quicksave" graphic="window/qsave.png" enterimg="window/qsave_on.png" x="933" y="1033" width="55" height="30" hint="クイックセーブを行います。" ]
[button name="role_button" role="quickload" graphic="window/qload.png" enterimg="window/qload_on.png" x="1008" y="1033" width="55" height="30" hint="クイックロードを行います。" ]
[button name="role_button" role="sleepgame" graphic="window/config.png" enterimg="window/config_on.png" x="1083" y="1033" width="55" height="30" hint="コンフィグ画面を開きます。" storage="config.ks"]
[button name="role_button" role="auto" graphic="window/auto.png" enterimg="window/auto_on.png" x="1143" y="1033" width="55" height="30" hint="オートモードを開始します。" ]
[button name="role_button" role="skip" graphic="window/skip.png" enterimg="window/skip_on.png" x="1203" y="1033" width="55" height="30" height="30" hint="スキップモードを開始します。"]
[button name="role_button" role="backlog" graphic="window/log.png" enterimg="window/log_on.png" x="1253" y="1033" width="55" height="30" hint="バックログを開きます。" ]
[button name="role_button" role="menu" graphic="window/menu.png" enterimg="window/menu_on.png" x="1313" y="1033" width="55" height="30" height="30" hint="タイトル画面に戻ります。" storage="menu.ks" ]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="100" marginl="300" marginr="70" marginb="60"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true


;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=40 bold=true x=320 y=820 shadow="0x000000"]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;maki
[chara_new  name="maki" storage="chara/maki/normal.png" jname="真希"  ]
;キャラクターの表情登録
[chara_face name="maki" face="angry_little" storage="chara/maki/angry_little.png"]
[chara_face name="maki" face="angry_big" storage="chara/maki/angry_big.png"]
[chara_face name="maki" face="normal" storage="chara/maki/normal.png"]

;maki_face
[chara_new  name="maki_face" storage="chara/maki_face/normal.png" jname="真希"  ]
;キャラクターの表情登録
[chara_face name="maki_face" face="angry_little" storage="chara/maki_face/angry_little.png"]
[chara_face name="maki_face" face="angry_big" storage="chara/maki_face/angry_big.png"]
[chara_face name="maki_face" face="normal" storage="chara/maki_face/normal.png"]


;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]



;キャラクター登場
[chara_show  name="maki" face="angry_little" width=1000 height=1000 ]
[chara_show  layer="message0" name="maki_face" face="angry_little" zindex=1005 width=270 height=270 depth=front left=40 top=810]

#???
[font size=40 shadow="0x000000"]
「……あげる。」[p]
[chara_mod  name="maki" face="angry_big"  ]
[chara_mod  name="maki_face" face="angry_big" time=0 ]
[font size=60]
「……だから…付き合ってあげるって言ってんの！！」[p]
[chara_hide layer="message0" name="maki_face" time=0 ]

#
[font size=40]
俺は今、人生最大の危機が迫っている。[p]


#直哉
「言ってる意味が分からないんだけど。」[p]

#???
[chara_show  layer="message0" name="maki_face" face="angry_big" zindex=1005 width=270 height=270 depth=front left=40 top=810]
「はあ！？日本語分かんないの？[r]つ・き・あ・っ・て・あ・げ・る[r]っていってんの！」[p]

[chara_hide layer="message0" name="maki_face" time=0 ]
#直哉
「日本語は分かるわ。なんで俺は幼馴染であるお前に[r]いきなり告白されなきゃならないんだ」[p]

#真希
[chara_mod  name="maki" face="angry_little"  ]
[chara_show  layer="message0" name="maki_face" face="angry_little" zindex=1005 width=270 height=270 depth=front left=40 top=810]
「..........[r]
[chara_mod  name="maki" face="normal"  ]
[chara_mod  name="maki_face" face="normal"  ]
直哉さ、あんときの約束、覚えてないの？」[p]		


#???
現状はここまで

;[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="150"  text="はい。興味あります"  target="*selectinterest"  ]
;[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="250"  text="興味あります！"  target="*selectinterest"  ]
;[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="350"  text="どちらかと言うと興味あり"  target="*selectinterest"  ]
;[s  ]
;*selectinterest

[s]
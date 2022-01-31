;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="Yuujuutakugai.jpg" time="100"]

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
[position layer=message0 page=fore margint="100" marginl="350" marginr="70" marginb="60"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true


;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=40 bold=true x=370 y=820 shadow="0x000000"]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;maki
[chara_new  name="maki" storage="chara/maki/normal.png" jname="真希"  ]
;キャラクターの表情登録
[chara_face name="maki" face="angry_little" storage="chara/maki/angry_little.png"]
[chara_face name="maki" face="angry_big" storage="chara/maki/angry_big.png"]
[chara_face name="maki" face="normal" storage="chara/maki/normal.png"]
[chara_face name="maki" face="angry_close" storage="chara/maki/angry_close.png"]
[chara_face name="maki" face="smile_scare" storage="chara/maki/smile_scare.png"]
[chara_face name="maki" face="smile_normale" storage="chara/maki/smile_normal.png"]


;maki_face
[chara_new  name="maki_face" storage="chara/maki_face/normal.png" jname="真希"  ]
;キャラクターの表情登録
[chara_face name="maki_face" face="angry_little" storage="chara/maki_face/angry_little.png"]
[chara_face name="maki_face" face="angry_big" storage="chara/maki_face/angry_big.png"]
[chara_face name="maki_face" face="normal" storage="chara/maki_face/normal.png"]
[chara_face name="maki_face" face="angry_close" storage="chara/maki_face/angry_close.png"]
[chara_face name="maki_face" face="smile_scare" storage="chara/maki_face/smile_scare.png"]
[chara_face name="maki_face" face="smile_normale" storage="chara/maki_face/smile_normal.png"]


;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]



;キャラクター登場
[chara_show  name="maki" face="angry_little" width=1000 height=1000 ]
[chara_show  layer="message0" name="maki_face" face="angry_little" zindex=1005 width=270 height=270 depth=front left=40 top=810]

[playbgm storage="daru.ogg"]

#???
[font size=40 shadow="0x000000" face="MinN"]
[chara_mod name="maki" face="angry_little" time=0]
[chara_mod name="maki_face" face="angry_little" time=0 ]
#???
「......あげる」[p]
#???
「.........だから...付き合ってあげるって言ってんの！！」[p]

[chara_hide layer="message0" name="maki_face" time=0 ]
#
俺は今、人生最大の危機が迫っている[p]
#直哉
「言ってる意味がわからないんだけど」[p]

[chara_show  layer="message0" name="maki_face" zindex=1005 width=270 height=270 depth=front left=40 top=810 time=0]
[chara_mod name="maki" face="angry_big" time=0 ]
[chara_mod name="maki_face" face="angry_big" time=0 ]
#???
「はぁ！？日本語分かんないの？[r]　つ・き・あ・っ・て・あ・げ・る[r]　っていってんの！」[p]

[chara_hide layer="message0" name="maki_face" time=0 ]
#直哉
「日本語は分かるわ。なんで俺は幼馴染であるお前に[r]　いきなり告白されなきゃならないんだ」[p]

[chara_show  layer="message0" name="maki_face" zindex=1005 width=270 height=270 depth=front left=40 top=810 time=0]
[chara_mod name="maki" face="angry_close" time=0]
[chara_mod name="maki_face" face="angry_close" time=0 ]
#真希
「..........[r]　直哉さ、あんときの約束、覚えてないの？」[p]

[chara_hide layer="message0" name="maki_face" time=0 ]
#
そういえば昔、そんな約束をしたような気がしなくもない[p]
#
思いもよらぬ告白によりすでに思考回路が停止した脳で[r]自分で思い出したくもない過去を思い出してみる[p]
[chara_hide_all time=1000 wait=true]
[bg time="1000" storage="Black.jpg" method="fadeIn"]
[wait time="600"]
[bg time="1000" storage="Park.jpg" method="rotateIn"]
[wait time="600"]
#
──10年前。[p]
#
それは当時流行っていたゲームを真希が盗られたときのことだった。[p]
#ガキ大将
「おまえ、マルオカート9持ってんのかよ！」[p]
#真希
「ふえぇ～ん、ぐすん、とらないで～」[p]
#直哉
「やめろー！」[p]
[quake  time="300"  ]
#
バシッ！！[p]
#真希
「直...くん？」[p]
#ガキ大将
「ぁあん？年下のくせに調子のってんじゃねーーーーー！」[p]
[bg time="1000" storage="YuuPark.jpg" method="fadeIn"]
[wait time="600"]
#
あの後、俺は日が暮れ始めるまで取っ組み合いの喧嘩をしていた [p]
#真希
「うぅ...ありがとう、直君...ぐすん[r]　でもぼうりょくはだめだよ？」[p]
#直哉
「うるせぇなー。取り返してやったんだからいいだろ？[r]　ほら、泣くのやめろよ」[p]
#真希
「うぅ～ん....でも、うぅ、やっぱりぼうりょくは反対」[p]
#直哉
「わーったよ。気を付けるよ........多分」[p]
#真希
「多分じゃだめ！！」[p]
#
ベシッ[p]
[quake  time="300"  ]
#
そう言って真希は俺を容赦なく叩いてくる[p]
#
真希は引っ込み思案なくせに俺だけにはなぜか強く当たってくる[p]
#
昔の俺は所謂『ヒーロー』ってのに強く憧れていて、[r]いろんな喧嘩に首を突っ込んでは取っ組み合いの日々を過ごしていた。[p]
#直哉
「もっと強くなれよ[r]　あんな奴らに負けてちゃヒーローになれないぞ」[p]
#真希
「なろうとしてないよ！？[r]　直くんはいつも変な冗談ばっかり言うんだから、もぅ」[p]
#直哉
「変って.....お前もそんなこと言うのかよ！！」[p]
#真希
「変だよ？でも私のために頑張ってる直くんは...その......」[p]
#真希
「.................かっこ...いい？....よ？」[p]
#直哉
「ん？なんて？」[p]
#真希
「なんでもない！！」[p]
#
やっぱり俺にだけは強く当たってくる[p]
#
そんな、平和なのかよくわからない日常をずっとすごしていた。[r]いたかった。[p]
#
俺は真希にずっと隠していることがあった。[p]
#直哉
「俺、明日引っ越すんだ」[p]
#真希
「......え？」[p]
#真希
「どういうこと？明日引っ越すって急に......[r]　また、変な冗談だよね？」[p]
#直哉
「冗談じゃんないんだ。結構前から父さんの転勤が決まってさ[r]　」[p]
#真希
「結構前って......どうしてもっと早く教えてくれなかったの？」[p]
#直哉
「お前が泣くと思って.....」[p]
#真希
「私が泣くからいけないの？[r]　私が泣くからいつも喧嘩してるの？」[p]
#直哉
「まぁ......そーゆうときもある.......かも」[p]
#真希
「......じゃあ、やめる」[p]
#直哉
「ん？やめる？」[p]
#真希
「うん、泣くのやめる！！今日で卒業！！」[p]
#
今にも泣きだしそうな、そんな震えた声を振り絞っているのが伝わってくる[p]
#真希
「だから.....だから、ね？....その、えぇっと.....」[p]
#真希
「......してほしい」[p]
#真希
「お嫁さん...にして.....くれないかな...なんて、えへへ[r]　いきなり言われても困るよね」[p]
#直哉
「へ？いいよ......？」[p]
#真希
「え、いいの？ほんとに？......約束だよ！！」[p]
#直哉
「お、おう！」[p]
#
[bg time="1000" storage="Black.jpg" method="fadeIn"]
[wait time="600"]
[bg time="1000" storage="Yuujuutakugai.jpg" method="fadeIn"]
[wait time="600"]
#
めっちゃ約束してるわ......[p]
#
溢れるばかりの羞恥と共に『約束』の記憶が鮮明に蘇ってくる。[p]
#
うわあぁぁぁぁぁぁぁぁぁぁぁぁぁぁぁぁぁぁ[p]
#
脳ではもう処理が追いつかず俺は全身で感情表現をしていた。[p]
[chara_show  name="maki" face="angry_little" width=1000 height=1000 ]
[chara_show  layer="message0" name="maki_face" face="angry_little" zindex=1005 width=270 height=270 depth=front left=40 top=810]
#真希
「ねぇ！みんな見てるんだけど！？恥ずかしいからやめてくれない！？」[p]
#
真希の指摘で我に返り、周囲を確認すると、[r]それはもう冷たい眼差しを向けられていた[p]
#直哉
「お、おぅ、すまん。少し取り乱してしまった。」[p]
#真希
「なんか直哉、雰囲気変わったね」[p]
#
お前もな！？[p]
#
言葉にはしないが超特大ブーメランだったので脳内でツッコんでおく[p]
#真希
「昔はもっと『オラオラ系』？みたいな感じじゃなかったっけ？」[p]
#直哉
「昔の話はやめてくれ、あれは思い出したくない黒歴史なんだ」[p]
#真希
「ふーん。まぁ、それならいいんだけど[r]　で？返事は？」[p]
#
そうだ、今日は人生最大の危機だった。[p]
#真希
「約束、思い出してくれたんだよね？」[p]
#直哉
「まぁ、そうだな、思い出した」[p]
#真希
「で？返事は？」[p]
#
真希の声色が強くなってくるのを感じて、あ、これ誤魔化したら〇ぬわ[r]
#
と脊髄反射で理解する[p]
#
俺はここで幼馴染の女の子からの告白を無碍にするほど、[r]
#
どこぞの鈍感系主人公ではないのだ[p]
#直哉
「よろしくお願いします」[p]
#真希
「そ、ありがとう。それじゃ、明日からよろしくね[r]　私、こっちだから」[p]
#
真希はそういってＴ字路を右折する[r]
#
少し離れてから、こっちを見てくる[p]
[chara_mod name="maki" face="smile_scare" time=0]
[chara_mod name="maki_face" face="smile_scare" time=0 ]
#真希
「あ、振ったら〇すから」[p]
#
満面の笑みでそう言い放ち、その場を去っていった。[p]
[chara_hide_all time=1000 wait=true]
#
どうやら俺の感覚神経は正常に動作しているようだ。[p]
#
自身の体の正常さに感謝しつつ[r]
#
俺は何かの作品の主人公かなんなのか？と思う入学式初日だった。[p]



#???
現状はここまで

;[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="150"  text="はい。興味あります"  target="*selectinterest"  ]
;[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="250"  text="興味あります！"  target="*selectinterest"  ]
;[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="350"  text="どちらかと言うと興味あり"  target="*selectinterest"  ]
;[s  ]
;*selectinterest

[s]
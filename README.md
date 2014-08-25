hubot-nomulish
====

[ノムリッシュ翻訳](http://racing-lagoon.info/nomu/translate.php) for Hubot.

Installation
----

    $ npm install git://github.com/emanon001/hubot-nomulish.git

or

    $ # TAG is the package version you need.
    $ npm install 'git://github.com/emanon001/hubot-nomulish.git#TAG'

Configuration
----

`HUBOT_NOMULISH_LEVEL` - デフォルトの翻訳レベル。`1` から `4` はノムリッシュ翻訳の強弱。`5` はラグーン語への翻訳を行なう。

    $ export HUBOT_NOMULISH_LEVEL='5'


Usage
----

### 基本
`hubot nomulish {words}`

    > hubot nomulish こんにちは
    hubot> ・・・そのグルガン族の男は静かに語った・・・
    hubot> 我ら来たれり

### 翻訳レベルの指定
`hubot nomulish {words} l{1-5}`
`1` から `5` の意味は、Configuration の `HUBOT_NOMULISH_LEVEL` を参照。

    > hubot nomulish こんにちは l5
    hubot> そうさ……俺は……
    hubot> こんにちは
    hubot> ……醒めちまったこの街に……………熱いのは………俺たちのDRIVING……

License
----

WTFPL

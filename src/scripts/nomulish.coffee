# Description
#   translate words into 'nomulish'
#
# Dependencies:
#   "request": "^2.37.0"
#   "cheerio": "^0.17.0"
#
# Configuration:
#   None
#
# Commands:
#   hubot nomulish <words> [l{1-5}] - translate words into 'nomulish'
#
# Author:
#   emanon001 <emanon001@gmail.com>
#

request = require 'request'
cheerio = require 'cheerio'

module.exports = (robot) ->
  robot.respond /nomulish\s+(.*?)(\s+l([1-5])\s*)?$/i, (res) ->
    words = res.match[1]
    level = res.match[3] || process.env.HUBOT_NOMULISH_LEVEL || '4'

    request
      .post
        url: 'http://racing-lagoon.info/nomu/translate.php'
        form:
          before: words
          level: level
          options: 'nochk'
          transbtn: true # 何でもよいので値を入れる
        , (e, _, body) ->
          if e?
            robot.logger.error e.message
            res.send 'failed translate'
            return

          $ = cheerio.load body
          nomulish = $('textarea[name=after1]').val()
          res.send nomulish

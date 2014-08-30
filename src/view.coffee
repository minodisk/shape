jQuery = require 'jquery'

module.exports =
class View extends jQuery

  constructor: ->
    $el = super

    # jQueryオブジェクトのプロパティをコピーします
    for prop, val of $el
      if $el.hasOwnProperty prop
        @[prop] = val

  ###
  ラッパを生成するjQueryメソッドをオーバーライドします。
  ここではViewインスタンスを生成するのではなく、jQueryオブジェクトを生成します。
  ###
  pushStack: (elems) ->
    ret = jQuery.merge(jQuery(), elems)
    ret.prevObject = this
    ret.context = @context
    ret

  ###
  ラッパを生成するjQueryメソッドをオーバーライドします。
  ここではViewインスタンスを生成するのではなく、jQueryオブジェクトを生成します。
  ###
  end: ->
    @prevObject ? jQuery(null)

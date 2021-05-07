# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("#user_postal_code").jpostal({
    postcode : [ "#user_postal_code" ],
    address  : {
                  "#user_prefecture_code" : "%3",
                  "#user_address_city" : "%4%5",
                  "#user_address_street" : "%5%6"
                }
  })
  # 入力項目フォーマット
    # %3 都道府県
    # %4 市区町村
    # %5 町域
    # %6 大口事業所の番地
    # %7 大口事業所の名称
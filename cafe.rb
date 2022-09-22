# frozen_string_literal: true

drinks = [
  { name: "コーヒー", price: 300},
  { name: "カフェラテ", price: 400},
  { name: "チャイ", price: 460},
  { name: "エスプレッソ", price: 340},
  { name: "緑茶", price: 450}
].freeze

foods = [
  { name: "チーズケーキ", price: 460},
  { name: "アップルパイ", price: 520},
  { name: "ホットサンド", price: 410}
].freeze

def take_order(menus)
  menus.each_with_index do |menu, i|
    puts "(#{i +1})#{menu[:name]}: #{menu[:price]}"
  end
  print ">"
  @gets_number = gets.to_i
  @menus_name = menus[@gets_number - 1][:name]
  @menus_price = menus[@gets_number - 1][:price]
  puts "#{@menus_name}(#{@menus_price}円)ですね。"
  #戻り値
  @menus_price
end

puts "bugカフェへようこそ！ご注文は？ 番号でどうぞ"
order1 =take_order(drinks)

puts "フードメニューはいかがですか?"
order2 = take_order(foods)

total = order1 + order2
puts "お会計は#{total}円になります。ありがとうございました！"

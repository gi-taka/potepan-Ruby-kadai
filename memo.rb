require "csv"
puts "1（新規でメモを作成）2（既存のメモを編集する）"
memo_type = gets.to_s
p memo_type.chomp
case memo_type.chomp
  when "1"
    puts "拡張子を除いたファイルを入力してください"
    file_name = gets.to_s.chomp + ".csv"
    if File.exist?(file_name)
      puts "そのファイルはすでに存在します"
    else
      File.open(file_name, mode = "w")
      puts "メモしたい内容を記述してください"
      puts "完了したらCtrl+Dを押します"
      memo_sentence = gets.to_s
      File.open(file_name, mode = "w").puts(memo_sentence)
    end
  when "2"
    puts "既存のファイルを選んでください"
    file_name = gets.to_s.chomp + ".csv"
    if File.exist?(file_name)
      puts "メモしたい内容を記述してください"
      puts "完了したらCtrl+Dを押します"
      memo_sentence = gets.to_s
      File.open(file_name, mode = "a").puts(memo_sentence)
    else
      puts "そのファイルは存在しません"
    end
else
  puts "?"
end
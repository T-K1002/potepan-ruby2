def janken
  puts"じゃんけん..."
  puts"0(グー)1(チョキ)2(パー)3(戦わない)"
  player_hand = gets.to_i
  program_hand = rand(3)
 
  if player_hand > 3
 	  puts "入力された値が無効です"
 	  puts"-------------------------"
  return true
	
  elsif player_hand == 3
    puts"出さなかったので負けです"
  return false
 
  end
 
  jankens=["グー","チョキ","パー"]
  puts"あなた:#{jankens[player_hand]}を出しました"
  puts"相　手:#{jankens[program_hand]}を出しました"
  puts"-------------------------"

  if player_hand == program_hand
	  puts "あいこ"
	  puts"-------------------------"
  return true
	
	
  elsif (player_hand == 0 && program_hand ==1) ||(player_hand == 1 && program_hand ==2) || (player_hand == 2 && program_hand ==0) #じゃんけん勝ち
	  puts "あっちむいて〜"
	  puts"0(右)1(左)2(上)3(下)"
	  player_hand2 = gets.to_i
	  program_hand2 = rand(4)
	
  	if player_hand2 > 3
	    puts "入力した値が無効なのであなたの負けです"
	  return false
	  
	  end
	
	  attimuites=["右","左","上","下"]
	  puts"-------------------------"
    puts"ホイ!"
    puts"あなた:#{attimuites[player_hand2]}"
    puts"相　手:#{attimuites[program_hand2]}"
    puts"-------------------------"
  
    if player_hand2 == program_hand2
	    puts "あなたの勝ちです"
	  return false
	 
	  else
	  return true
	  end
	
	
  else #じゃんけん負け
    puts "あっちむいて〜"
    puts"0(右)1(左)2(上)3(下)"
    player_hand2 = gets.to_i
    program_hand2 = rand(4)

    if player_hand2 > 3
      puts "入力した値が無効なのであなたの負けです"
    return false
    end
	
    attimuites=["右","左","上","下"]
    puts"-------------------------"
    puts"ホイ!"
    puts"相　手:#{attimuites[program_hand2]}"
    puts"あなた:#{attimuites[player_hand2]}"
    puts"-------------------------"
  
    if player_hand2 == program_hand2
	    puts "あなたの負けです"
	  return false
	 
	  else
	  return true
	 
	  end
	  
  end 
  
end
	 
	 
next_game = true
while next_game
next_game = janken
end
  
	
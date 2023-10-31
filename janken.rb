def janken
  puts"じゃんけん..."
  puts"1(グー)2(チョキ)3(パー)4(戦わない)"
  puts"-------------------------"
  player_hand = gets.to_i
  player_hand -= 1
  program_hand = rand(3)
  
  if player_hand == 3
    puts"出さなかったので負けです"
  return false
  
  elsif player_hand < 0 || player_hand > 3
    puts"入力した値が無効です"
    puts"-------------------------"
  return true
  
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
	    puts"1(右)2(左)3(上)4(下)"
	    puts"-------------------------"
	    player_hand2 = gets.to_i
	    player_hand2 -= 1
	    program_hand2 = rand(4)
	
  	  if player_hand2 < 0 || player_hand2 > 3
	      puts "入力した値が無効なのであなたの負けです"
	    return false
	  
	    end
	
	    attimuites=["右","左","上","下"]
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
      puts"1(右)2(左)3(上)4(下)"
      puts"-------------------------"
      player_hand2 = gets.to_i 
      player_hand2 -= 1
      program_hand2 = rand(4)

      if player_hand2 < 0 || player_hand2 > 3
        puts "入力した値が無効なのであなたの負けです"
      return false
      end
	
      attimuites=["右","左","上","下"]
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
  
	
hlavni_menu = "*** HLAVNI MENU ***
1. Prihlasit hrace
2. Zobrazit prihlasene
3. Ukoncit prihlasovani"
puts hlavni_menu
print "Vase volba:  "
cislo_menu = gets.to_i
seznam_prihlasenych = []
require "set"
jednotliva_jmena = Set.new
continue = true

while continue
  serazeny_seznam = []
  if cislo_menu == 1
    print "Jmeno:      "
    jmeno = gets.strip
    v_mnozine = jednotliva_jmena.include? jmeno
    v_seznamu = seznam_prihlasenych.include? jmeno
    n = seznam_prihlasenych.count(jmeno)+ 1
    if v_mnozine == true && v_seznamu == true

      poradi_jmena = " " + n.to_s
     seznam_prihlasenych << jmeno + poradi_jmena
    else
      seznam_prihlasenych << jmeno && jednotliva_jmena << jmeno
    end
    serazeny_seznam = seznam_prihlasenych.sort

    puts "Hrac #{jmeno} zaregistrovan"
    p seznam_prihlasenych
    p jednotliva_jmena
    p serazeny_seznam
    puts hlavni_menu
    print "Vase volba:  "
    cislo_menu = gets.to_i
  elsif cislo_menu == 2
    if seznam_prihlasenych == []
      puts "PRIHLASENI HRACI:
Nejsou registrovani zadni hraci"
    else
      seznam_prihlasenych.each_with_index do |name, i|
      i = i + 1
      puts "#{i}. #{name}"
      end
    end

    puts "Chcete nejakeho hrace odhlasit? (ANO/NE)"
    odhlaseni = gets.strip
    if odhlaseni == "ANO"
      print "Cislo hrace ke smazani:  "
      smazani_hrace = gets.to_i
      index = smazani_hrace
      seznam_prihlasenych.delete_at(index - 1)
      p seznam_prihlasenych
    else
      puts hlavni_menu
      print "Vase volba:  "
      cislo_menu = gets.to_i
    end
    puts hlavni_menu
    print "Vase volba:  "
    cislo_menu = gets.to_i
  elsif cislo_menu == 3
    puts "Opravdu chcete ukoncit prihlasovani? (ANO/NE)"
ukonceni = gets.strip
  if ukonceni == "NE"
    puts hlavni_menu
    print "Vase volba:  "
    cislo_menu = gets.to_i
  else
    puts "Rozpis"
    puts "#{seznam_prihlasenych[0]} - #{seznam_prihlasenych[2]}"
    puts "#{seznam_prihlasenych[1]} - #{seznam_prihlasenych[3]}"
    puts "#{seznam_prihlasenych[1]} - #{seznam_prihlasenych[2]}"
    puts "#{seznam_prihlasenych[0]} - #{seznam_prihlasenych[3]}"
  end
  end
  end
continue = false
    


hlavni_menu = "*** HLAVNI MENU ***
1. Prihlasit hrace
2. Zobrazit prihlasene
3. Ukoncit prihlasovani"
puts hlavni_menu
print "Vase volba:  "
cislo_menu = gets.to_i
seznam_prihlasenych = []
continue = true

while continue
  if cislo_menu == 1
    print "Jmeno:      "
    jmeno = gets.strip
    seznam_prihlasenych << jmeno
    puts "Hrac #{jmeno} zaregistrovan"
    p seznam_prihlasenych
    puts hlavni_menu
    print "Vase volba:  "
    cislo_menu = gets.to_i
  elsif cislo_menu == 2
    if seznam_prihlasenych == []
      puts "PRIHLASENI HRACI:
Nejsou registrovani zadni hraci"
    else
      poradi = 1
      seznam_prihlasenych.each do |item|
        puts "#{poradi}. #{item}"
        poradi = poradi + 1
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

    continue = false
  end
end


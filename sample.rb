while true

  puts "Veuillez sélectionner le processus que vous souhaitez effectuer"
  puts "1 : Entrez les points de notation et les commentaires"
  puts "2 : Vérifiez les résultats jusqu'à présent"
  puts "3 : Quitter"
  action= gets.to_i


  def noterCommenter

    puts "Veuillez entrer une note de 1 à 5 ."
    point=gets.to_i
    if point<=1 or point>5
      puts "Veuillez entrer un nombre correct"
    else
      puts "Veuillez saisir un commentaire"
      commentaire= gets
        File.open("data.txt", "a") do |file|
          file.puts("Point : #{point} , comentaire : #{commentaire}")
        end
    end
  end  


  def afficherNoteCommentaire
    puts "Résultats jusqu'à présent"
      File.open("data.txt", "r") do |file|
        file.each_line do |line|
          puts line
        end
      end
  end

  case action

  when 1

    while true
      noterCommenter
      break
      
    end

  when 2
    afficherNoteCommentaire
     
  when 3
    puts "Finir"
    break
  else
    puts "Veuilllez entrer un nombre entre 1 et 3"
  end

end

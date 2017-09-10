classroom = [ [nil, "Pumpkin", nil, nil], ["Socks", nil, "Mimi", nil], ["Gismo", "Shadow", nil, nil], ["Smokey","Toast","Pacha","Mau"] ]



def claim_that_spot(classroom)

  classroom.each_with_index do |index, row|
    index.each_with_index do |seat,available|
      if seat == nil
        puts "Row #{row + 1} seat #{available + 1 } is free"
        puts "Do you want to sit there? (y/n) "

        take_seat = gets.chomp

        if take_seat == 'y'
          puts "What is your name?"
          name = gets.chomp
          classroom[row][available] = name
          p classroom
          exit
        else
          next
        end
      end
    end

  end
end

claim_that_spot(classroom)

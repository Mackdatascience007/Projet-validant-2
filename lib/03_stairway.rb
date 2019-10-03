def dice
    #puts "Clique sur entrer pour lancer les dés!"
    #answer = gets.chomp
    d = Random.new.rand(1..6) 
    puts "lancer de dé : #{d}"
    return d 
end 

def up(p)
    p = p+1
    puts "tu es monté d'une marche, tu es maintenant à la marche #{p}"
    return p
end

def down(p)
    if p == 0
    p = 0
    puts "vous restez sur la marche 0"
    else
    p = p-1
    puts "tu es descendu d'une marche, tu es maintenant à la marche #{p}"
    end
    return p
end


def perform
    p = 1 
    count = 0
    while p < 10
        d = dice
        if d.between?(2,4)
            puts "no move"
        elsif d.between?(5,6)
            p = up(p)
        else 
            p = down(p)
        end 
        count += 1
    end
    puts "Bravo ! tu as monté l'escalier en #{count} coups"
    return count
end

def average_finish_time (sample)
    score = []
    sample.to_i.times do 
        count = perform 
        score << count 
    end 
    print score
    mean = score.sum(0.0) / score.length
    puts "\nEn moyenne il a fallu sur  #{sample} parties #{mean} coups pour monter 10 marches\n"
end

average_finish_time(100)
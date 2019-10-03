def ask_size
    puts "choisis un nombre impair :"
    nb = gets.chomp.to_i 
    while (nb.even?)
        puts "ON A DIT IMPAIR !!!"
        nb = gets.chomp.to_i 
    end 
    return nb
end 

def wtf_pyramid
    i=1
    j=1
    nb = ask_size
    mid_line = (nb.to_f/2).round(half: :up)
    mid_line.times do 
       puts " "*(mid_line-j)+ "#"*i    
        i+=2
        j+=1
    end
    i=nb
    j=nb
    (mid_line-1).times do 
        i-=2
        j-=1
        puts " "*(nb-j)+ "#"*i    
        
    end

end

wtf_pyramid


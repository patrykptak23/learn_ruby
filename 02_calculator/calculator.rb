def add(x,y)
    return x+y
end

def subtract(x,y)
    return x-y
end

def sum (array)
    sum=0
    for i in array do
        sum=sum+i
    end
    return sum
end

def multiply (*numbers)
    wynik=1
  numbers.each{|n| wynik*=n}
  wynik
end

def power (num,razy)
    wynik=1
    razy.times do
        wynik=wynik*num
    end
    wynik
end

def factorial(x)
    wynik=1
    while x!=0
        wynik*=x
        x-=1
    end
    wynik

end
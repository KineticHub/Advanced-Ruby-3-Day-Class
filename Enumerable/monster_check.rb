load 'monsters.rb'

def find_nocturnal_count
  # $monsters.find_all{|m| m[:nocturnal]}.count
  $monsters.count{|m| m[:nocturnal]}
end

def find_nocturnal_names
  $monsters.find_all{|m| m[:nocturnal]}.map{|n| n[:name]}
  $monsters.select{|m| m[:nocturnal]}.map{|n| n[:name]}
end

def find_monster_leg_count
  $monsters.map{|m| m[:legs]}.inject(:+)
end

def find_common_dangers
  # one big array
  # $monsters.flat_map{|m| m[:dangers]}

  # group by common
  # $monsters.flat_map{|m| m[:dangers]}.group_by{|i| i}

  # group and assign count
  # $monsters.flat_map{|m| m[:dangers]}.inject(Hash.new(0)){|h,d| h[d] +=1; h}

  # crazy
  $monsters.flat_map{|m| m[:dangers]}.group_by{|i| i}.sort_by{|k, v| v.size}[-2..-1].map{|a| a.first}
end
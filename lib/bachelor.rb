def get_first_name_of_season_winner(data, season)
    data[season].each do |details|
      if details["status"] === "Winner"
        return details["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
    data.each do |season, contestant|
      contestant.each do |details|
      if details["occupation"] === occupation
        return details["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
    data.each do |season, contestant|
      contestant.each do |details|
        if details["hometown"] === hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
    data.each do |season, contestant|
      contestant.find do |details|
        if details["hometown"] === hometown
          return details["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
    age = data[season].map do |contestant|
      contestant["age"].to_i
  end
    total_age = age.reduce {|total, age| total += age}
    contestant_count =  age.count.to_f
    (total_age/contestant_count).round
end













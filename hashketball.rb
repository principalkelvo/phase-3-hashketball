# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

#gets all team names

# game_hash.each do |game, data|
#   data.each do |attribute,value|
#     # puts "#{attribute}: #{value}"
#     if attribute ==:team_name
#       puts data[:team_name]
#     end
#   end
# end

def num_points_scored player
  game_hash.each do |game, data|
    data.each do |attribute,value|
      # puts "#{attribute}: #{value}"
      if attribute == :players
        value.each do |name|
            if name[:player_name] == player
              return name[:points]
            end
        end
      end
    end
  end
end

# num_points_scored "Kemba Walker"

def shoe_size player
  game_hash.each do |game, data|
    data.each do |attribute,value|
      # puts "#{attribute}: #{value}"
      if attribute == :players
        value.each do |name|
            if name[:player_name] == player
              return name[:shoe]
            end
        end
      end
    end
  end
end

def player_stats player
  game_hash.each do |game, data|
    data.each do |attribute,value|
      # puts "#{attribute}: #{value}"
      if attribute == :players
        value.each do |name|
            if name[:player_name] == player
              return name
            end
        end
      end
    end
  end
end

def team_colors team
  game_hash.each do |game, data|
    data.each do |attribute,value|

      # puts "#{data[:colors]}"
      if data[:team_name] == team
             return data[:colors].to_a
      end
    end
  end
end

# team_colors "Charlotte Hornets"

def team_names
  names =[]
  game_hash.each do |game, data|
    data.each do |attribute,value|
      if data[:team_name] == value
        names<<value
      end
    end
  end
  names
end
# puts team_names

def player_numbers team
  jersey=[]
  game_hash.each do |game, data|
    if data[:team_name] == team
    data.each do |attribute,value|
      if attribute == :players
        value.each do |num|
          jersey<<num[:number]
            
        end
      end

      # puts "#{attribute}: #{value}"
    end
    end
  end
   jersey
end
# player_numbers "Charlotte Hornets"




def big_shoe_rebounds 
  shoe_size=[]
    game_hash.each do |game, data|
      data.each do |attribute,value|
        # puts "#{attribute}: #{value}"
        if attribute == :players
           value.each do |size| 
             shoe_size<<size[:shoe]
            end
            value.each do |rebound| 
              puts shoe_size.max
            if rebound[:shoe]==shoe_size.max
             return rebound[:rebounds]
            end
          end           
        end
      end
    end

end

big_shoe_rebounds
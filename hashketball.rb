def game_hash
  teams={
    home:{
      team_name:"Brooklyn Nets",
      colors:"Black, White",
      players:{
        "Alan Anderson"=>{
          number:0,
          shoe:16,
          points:22,
          rebounds:12,
          assists:12,
          steals:3,
          blocks:1,
          slam_dunks:1},
        "Reggie Evans"=>{
          number:30,
          shoe:14,
          points:12,
          rebounds:12,
          assists:12,
          steals:12,
          blocks:12,
          slam_dunks:7},
        "Brook Lopez"=>{
          number:11,
          shoe:17,
          points:17,
          rebounds:19,
          assists:10,
          steals:3,
          blocks:1,
          slam_dunks:15},
        "Mason Plumlee"=>{
          number:1,
          shoe:19,
          points:26,
          rebounds:12,
          assists:6,
          steals:3,
          blocks:8,
          slam_dunks:5},
        "Jason Terry"=>{
          number:31,
          shoe:15,
          points:19,
          rebounds:2,
          assists:2,
          steals:4,
          blocks:11,
          slam_dunks:1}
        }
    },
    away:{
      team_name:"Charlotte Hornets",
      colors:"Turquoise, Purple",
      players:{
        "Jeff Adrien"=>{
          number:4,
          shoe:18,
          points:10,
          rebounds:1,
          assists:1,
          steals:2,
          blocks:7,
          slam_dunks:2},
        "Bismak Biyombo"=>{
          number:0,
          shoe:16,
          points:12,
          rebounds:4,
          assists:7,
          steals:7,
          blocks:15,
          slam_dunks:10},
        "DeSagna Diop"=>{
          number:2,
          shoe:14,
          points:24,
          rebounds:12,
          assists:12,
          steals:4,
          blocks:5,
          slam_dunks:5},
        "Ben Gordon"=>{
          number:8,
          shoe:15,
          points:33,
          rebounds:3,
          assists:2,
          steals:1,
          blocks:1,
          slam_dunks:0},
        "Brendan Haywood"=>{
          number:33,
          shoe:15,
          points:6,
          rebounds:12,
          assists:12,
          steals:22,
          blocks:5,
          slam_dunks:12}
        }
    }
  }
end

def num_points_scored(name)
  points = 0
  game_hash.each do |k, v|
    v[:players].each do |key2, value2|
      if key2==name
        points=value2[:points]
        break
      end
    end
  end
  points
end

def shoe_size(name)
  shoe_size = 0
  game_hash.each do |k, v|
    v[:players].each do |key2, value2|
      if key2==name
        shoe_size=value2[:shoe]
        break
      end
    end
  end
  shoe_size
end

def team_colors(team)
  colors=""
  game_hash.each do |k, v|
    if v[:team_name].to_s==team
     colors=v[:colors]
    end
  end
  colors_array=colors.split(',')
  colors_array.collect do |color|
    color.strip
  end
end

def team_names
  names=[]
  names = game_hash.map do |k, v|
    v[:team_name]
  end
  names
end

def player_numbers(team)
  jerseys=[]
  game_hash.map do |k, v|
    if v[:team_name].to_s==team
      v[:players].each do |key2, value2|
          jerseys<<value2[:number]
        end
    end
  end
  jerseys
end

def player_stats(name)
  stats=Hash.new
  game_hash.each do |k, v|
    v[:players].each do |key2, value2|
      if key2==name
        stats=value2
        break
      end
    end
  end
  stats
end

def big_shoe_rebounds
  shoes=[]
  game_hash.map do |k, v|
    v[:players].each do |key2, value2|
      shoes<<{key2=>value2[:shoe]}
    end
  end
  # game_hash.each do |k, v|
  #   v[:players].each do |key2, value2|
  #     if key2==name
  #       stats=value2
  #       break
  #     end
  #   end
  # end
  shoes
end

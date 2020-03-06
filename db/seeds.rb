levels = Level.create([{ name: "Level 1" }, { name: "Level 2" }])
user = User.create(name: "Jhon")
Score.create(total_score: 500, user_id: user.id, level_id: levels.first.id)

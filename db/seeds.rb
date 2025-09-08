puts "Création des diplômes..."
educations = [
  {
    school: "Le Wagon",
    degree: "Certification",
    field: "Concepteur Développeur d’Application Web",
    description: "Formation intensive et certifiante axée sur la création d’applications web complètes.",
    start_date: Date.new(2025, 5, 1),
    end_date: Date.new(2025, 5, 31)
  },
  {
    school: "Lycée Le Corbusier",
    degree: "BTS",
    field: "Management des Unités Commerciales",
    description: "Formation Bac +2 axée sur le commerce, le management et la relation client.",
    start_date: Date.new(2014, 9, 1),
    end_date: Date.new(2016, 6, 30)
  }
]

educations.each do |attrs|
  Education.find_or_create_by!(school: attrs[:school], degree: attrs[:degree], field: attrs[:field]) do |edu|
    edu.description = attrs[:description]
    edu.start_date  = attrs[:start_date]
    edu.end_date    = attrs[:end_date]
  end
end
puts "Diplômes créés."

puts "Création des compétences..."
skills = [
  { name: "Travailler en équipe", level: "Avancé" },
  { name: "Faire preuve de curiosité", level: "Avancé" },
  { name: "HTML", level: "Intermédiaire" },
  { name: "CSS", level: "Intermédiaire" },
  { name: "Ruby on Rails", level: "Intermédiaire" },
  { name: "Stimulus JS", level: "Débutant" },
  { name: "JavaScript", level: "Débutant" },
  { name: "PostgreSQL", level: "Intermédiaire" },
  { name: "Git / GitHub", level: "Intermédiaire" }
]

skills.each do |attrs|
  Skill.find_or_create_by!(name: attrs[:name]) do |skill|
    skill.level = attrs[:level]
  end
end
puts "Compétences créées."

puts "Création des projets..."
projects = [
  {
    title: "Habits Quests",
    description: "Application RPG gamifiée pour transformer la gestion des habitudes en quêtes héroïques. Développée en Ruby on Rails et déployée sur Heroku.",
    link: "https://github.com/G-I-Joey/habits-quests",
    start_date: Date.new(2025, 8, 1),
    end_date: nil
  },
  {
    title: "cvsite",
    description: "Mon CV personnel adapté sur site web, développé en Ruby on Rails pour me présenter.",
    link: "https://github.com/G-I-Joey/cvsite",
    start_date: Date.new(2025, 8, 24),
    end_date: nil
  },
  {
    title: "Air_bn_Me",
    description: "Premier projet en groupe pour se familiariser au fonctionnement en équipe pour développer un projet sur la base d'une marketplace comme AirBnB.",
    link: "https://github.com/Anonis4up/Air_bn_Me",
    start_date: Date.new(2025, 8, 24),
    end_date: Date.new(2025, 2, 16)
  }
]

projects.each do |attrs|
  Project.find_or_create_by!(title: attrs[:title]) do |project|
    project.description = attrs[:description]
    project.link        = attrs[:link]
    project.start_date  = attrs[:start_date]
    project.end_date    = attrs[:end_date]
  end
end
puts "Projets créés."

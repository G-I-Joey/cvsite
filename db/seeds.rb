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
  # Soft skills
  { name: "Travail en équipe", level: "Avancé" },
  { name: "Curiosité et apprentissage continu", level: "Avancé" },
  { name: "Persévérance face aux défis", level: "Avancé" },
  { name: "Communication claire", level: "Intermédiaire" },
  { name: "Méthodologie Agile (Scrum, Kanban)", level: "Débutant" },

  # Front-end
  { name: "HTML5", level: "Intermédiaire" },
  { name: "CSS3 / Responsive Design", level: "Intermédiaire" },
  { name: "JavaScript", level: "Intermédiaire" },
  { name: "React", level: "Débutant" },
  { name: "React Router", level: "Débutant" },
  { name: "Accessibilité web (WCAG / ARIA)", level: "Débutant" },

  # Back-end
  { name: "PHP", level: "débutant" },
  { name: "Programmation Orientée Objet (POO)", level: "Intermédiaire" },
  { name: "Architecture MVC", level: "Débutant" },
  { name: "APIs REST", level: "Débutant" },
  { name: "Authentification & sessions", level: "Débutant" },

  # Base de données
  { name: "MySQL", level: "Intermédiaire" },
  { name: "PostgreSQL", level: "Intermédiaire" },
  { name: "Modélisation BDD", level: "Intermédiaire" },

  # Outils
  { name: "Git / GitHub (avancé)", level: "Intermédiaire" },
  { name: "Figma (prototypage)", level: "Intermédiaire" },
  { name: "Heroku / Déploiement cloud", level: "Intermédiaire" },
  { name: "Docker (bases)", level: "Débutant" },

  # Qualité / Tests
  { name: "Tests unitaires", level: "Débutant" },
  { name: "Debugging", level: "Intermédiaire" },
  { name: "Documentation technique", level: "Débutant" }
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

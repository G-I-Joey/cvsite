puts "Création des diplômes..."
Education.create!(
  [
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
)
puts "Diplômes créés."

puts "Création des compétences..."
Skill.create!(
  [
    { name: "Travailler en équipe", category: "Soft Skill", level: "Avancé" },
    { name: "Faire preuve de curiosité", category: "Soft Skill", level: "Avancé" },
    { name: "HTML", category: "Front-end", level: "Intermédiaire" },
    { name: "CSS", category: "Front-end", level: "Intermédiaire" },
    { name: "Ruby on Rails", category: "Back-end", level: "Intermédiaire" },
    { name: "Stimulus JS", category: "Front-end", level: "Débutant" },
    { name: "JavaScript", category: "Front-end", level: "Débutant" },
    { name: "PostgreSQL", category: "Base de données", level: "Intermédiaire" },
    { name: "Git / GitHub", category: "Outils", level: "Intermédiaire" }
  ]
)
puts "Compétences créées."

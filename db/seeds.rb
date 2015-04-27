
seed_file = Rails.root.join('db', 'students.yml')
students = YAML::load_file(seed_file)
Student.create!(students)

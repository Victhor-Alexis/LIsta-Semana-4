# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

prof_id = 0

5.times do |i|
    if i < 2
        puts "Cadastrando professor #{i+1}"
        Teacher.create(name: Faker::Name.unique.name, email: Faker::Internet.unique.email, birthdate: Faker::Date.backward(days: 20000))
        
        prof_id = Teacher.first.id

        puts "Cadastrando linguagem #{i+1}"
        Language.create(name: Faker::ProgrammingLanguage.unique.name, teacher_id: prof_id)
    end
    
    if i == 2
        ++prof_id
    end

    puts "Cadastrando aluno #{i+1}"
    Student.create(name: Faker::Name.unique.name, email: Faker::Internet.unique.email, registration_number: Faker::Number.leading_zero_number(digits: 9), birthdate: Faker::Date.backward(days: 20000), teacher_id: prof_id)
end

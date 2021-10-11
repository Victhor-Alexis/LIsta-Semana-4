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
        t = Teacher.create(name: Faker::Name.unique.name, email: Faker::Internet.unique.email, birthdate: Faker::Date.backward(days: 20000))
        
        t.photo.attach(io: File.open("./public/prof#{i+1}.png"), filename: "prof#{i+1}.png")

        prof_id = Teacher.first.id

        puts "Cadastrando linguagem #{i+1}"
        if i == 0
            Language.create(name: Faker::ProgrammingLanguage.unique.name, teacher_id: prof_id)
            Doc.create(name: "doc1", language_id: 1)
            Doc.create(name: "doc2", language_id: 1)
        else
            Language.create(name: Faker::ProgrammingLanguage.unique.name, teacher_id: prof_id + 1)
            Doc.create(name: "doc1", language_id: 2)
            Doc.create(name: "doc2", language_id: 2)
        end
    end

    if i == 2
        prof_id += 1
    end

    puts "Cadastrando aluno #{i+1}"
    s = Student.create(name: Faker::Name.unique.name, email: Faker::Internet.unique.email, registration_number: Faker::Number.leading_zero_number(digits: 9), birthdate: Faker::Date.backward(days: 20000), teacher_id: prof_id)
    s.photo.attach(io: File.open('./public/aluno.jpeg'), filename: 'aluno.jpeg')
end

# Adicionando Admin
puts "Adicionando admin"
Admin.create(password: "adm123", email: "admin@admin", name:"admin")
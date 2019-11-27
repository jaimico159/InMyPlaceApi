# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'Jaime',
            last_name: 'Huarsaya Rivera',
            email: 'jaime@gmail.com',
            phone: '+51986130678',
            dni: '70395166',
            password: 'testing')

User.create(first_name: 'Sergio',
            last_name: 'Laureano Gutierrez',
            email: 'sergio@gmail.com',
            phone: '+51986130678',
            dni: '70395166',
            password: 'testing')

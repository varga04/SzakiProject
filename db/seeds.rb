# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
Category.create(name: "Villanyszerelő")
Category.create(name: "Szakács")
Category.create(name: "Kőmüves")
Category.create(name: "Ács")
Category.create(name: "Festő")
Category.create(name: "Kerti munkás")
Category.create(name: "Cukrász")
Category.create(name: "Vízvezeték szerelő")
Category.create(name: "Gázszerelő")
Category.create(name: "Kéményseprő")
Category.create(name: "Asztalos")
Category.create(name: "Lakatos")
Szaki.create(id: 5, title: "Festés szegeden", description: "Szobák festését vállalom olcsón! Szeged területén hívj bátran 06/20-111-3333", worktype: "festés, mázolás", user_id: 1, category_id: 5)
Szaki.create(id: 6, title: "Cukrász munka", description: "Torták, sütemények sütését vállalom Szegeden, zsúrokra, partykra. Hívj 06/30-222-4444", worktype: "sütés, főzés, torták", created_at: "2018-04-25 16:15:18", updated_at: "2018-04-26 16:13:18", user_id: 1, category_id: 7)
Szaki.create(id: 7, title: "Ács munka", description: "Tetők szerkezetének megtervezése, kivitelezése. Szegeden. Hívj: 06/70-333-2321", worktype: "tetők", created_at: "2017-04-27 16:15:18", updated_at: "2017-04-27 16:13:18", user_id: 1, category_id: 5)
User.create(email: "asdasd@gmail.com", created_at: "2018-04-24 15:02:35", updated_at: "2018-04-24 17:42:29")
User.create(email: "asdasd@gmail.com", created_at: "2018-04-24 15:02:35", updated_at: "2018-04-24 17:42:29")
User.create(email: "dsadsa@gmail.com", created_at: "2018-04-24 15:02:35", updated_at: "2018-04-24 17:42:29")

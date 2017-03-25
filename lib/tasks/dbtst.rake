namespace :dbtst do

  Faker::Config.locale = :'pt-BR'

  desc 'Seeding a db w/ test data for Users'
  task seed_users: :environment do
    start = Time.now
    puts '~> Users: Seeding ...'

    2.times do |i|
      email = i == 0 ? 'raul.pereira@gmail.com' : Faker::Internet.email
      User.create!({ email: email, password: '000000', password_confirmation: '000000' }) do |user|
        puts '   - create_user:(%s|000000)' % [email]
      end
    end

    puts '~> Users: Seeded (%.4fs).' % [Time.now - start], ''
  end

  desc 'Seeding a db w/ test data for Custom Fields'
  task seed_custom_fields: :environment do
    start = Time.now
    puts '~> Custom Fields: Seeding ...'

    User.all.each do |user|
      Type.all.each do |type|
        label = case type.value
          when 'Text' then 'Telefone'
          when 'Text Area' then 'Observação'
          when 'Combo Box' then 'Tipo'
        end
        CustomField.create!({ user: user, label: label, type: type }) do |custom_field|
          puts '   - create_custom_field:(%s|%s)' % [label, type.value]
          if label == 'Tipo'
            Option.create!([
              { custom_field: custom_field, value: 'Amigo' },
              { custom_field: custom_field, value: 'Família' },
              { custom_field: custom_field, value: 'Trabalho' },
              { custom_field: custom_field, value: 'Serviço' }
            ]) do |option|
              puts '     - create_option:(%s)' % [option.value]
            end
          end
        end
      end
    end

    puts '~> Custom Fields: Seeded (%.4fs).' % [Time.now - start], ''
  end

  desc 'Seeding a db w/ test data for  Contacts'
  task seed_contacts: :environment do
    start = Time.now
    puts '~> Contacts: Seeding ...'

    User.all.each do |user|
      40.times do |i|
        Contact.create!({ user: user, name: Faker::Name.name, email: Faker::Internet.email }) do |contact|
          puts '   - create_contact:(%s|%s)' % [contact.name, contact.email]
          CustomField.where(user: user).each do |custom_field|
            value = case custom_field.type.value
              when 'Text' then Faker::PhoneNumber.phone_number
              when 'Text Area' then Faker::Lorem.sentence
              when 'Combo Box' then Option.where(custom_field: custom_field).sample.value
            end
            ContactCustomField.create!([
              { contact: contact, custom_field: custom_field, value: value }
            ]) do |contact_custom_field|
              puts '     - create_contact_custom_field:(%s|%s)' % [custom_field.label, value]
            end
          end
        end
      end
    end

    puts '~> Contacts: Seeded (%.4fs).' % [Time.now - start], ''
  end

  desc 'Seeding a db w/ all test data'
  task all: [:seed_users, :seed_custom_fields, :seed_contacts]

end

# Customizer (vlab for [resultadosdigitais.com.br](http://resultadosdigitais.com.br/))

A small project to test my skills.

![frontend-scshot](../master/scshot/frontend-scshot.png)

## Install

### Prerequisites

Have locally installed (only for Development and Test):
- [Git](https://git-scm.com/)
- [Ruby](https://ruby-lang.org)
- [Bundle](http://bundler.io/)
- [RubyGems](https://rubygems.org/)
- [Rake](https://github.com/ruby/rake)
- [Rails](http://rubyonrails.org/)

### Instalando dependências

```bash
$ git clone https://github.com/raulpereira/customizer.git
$ cd customizer
$ bundle install --without production
$ rake db:migrate db:seed
```

## Up & Run

### Development environment

```bash
$ rails s
```
![dsv-scshot](../master/scshot/dsv-scshot.png)

### Test environment

`All tests need to be done` :disappointed_relieved:

### Production environment

Go to => *[https://intense-bastion-42995.herokuapp.com/](https://intense-bastion-42995.herokuapp.com/)* :clap:

## Considerations

### Platform

**[Rails](http://rubyonrails.org/)**: It was a choice determined by the VLab, I decided to face the challenge even knowing very little the environment and I finish the term determined to execute the project with the desire to continue deepening in the platform.

### Backend

#### Web Server

**[Puma.io](http://puma.io/)**: It was chosen because it is already in the package initialized by Rails, in addition to being recommended by the site that would host in production.

#### Database

**[SQlite](https://sqlite.org/)**: It has been chosen for the development and testing environment, since it has already embarked on the Rails framework. 

**[PostgreSQL](https://www.postgresql.org/)**: It was chosen for production environment by recommendation of the location that would host the application.

### Frontend

**[HTML](https://w3.org/html/)** + **[CSS](https://w3.org/Style/CSS/)** (c/ **[Bootstrap](http://getbootstrap.com/)**) + **[JS](https://developer.mozilla.org/en-US/docs/Web/JavaScript)** (c/ **[CoffeeScript](http://coffeescript.org/)** + **[jQuery](https://jquery.com/)**): I did not use any framework to implement this layer of the solution, only facilitating libraries, because it is a simple project.

### Tests

`Was missing to study and apply every part of application tests, serious fault...` :disappointed_relieved:

### Production Servers

**[Heroku](https://heroku.com)** (PAAS): Although it was determined by the VLab, already knew the environment, super practical to use and easy to set up. Because of the lack of testing, integration with [GitHub](https://github.com/) was not done.

## Conclusion

I learned a lot in these 3 days of project development, even more than I barely knew the language in which I set out to face the challenge, satisfied with the result and willing to know even more deeply the whole platform, especially the parts that I could not study right in this short time (Tests).

**LET'S GO, GUYS!** :muscle:

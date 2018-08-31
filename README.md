# Twitter-Clone


## Bien débuter

Ces instructions vont vous permettre de récupérer une copie du projet sur votre machine local afin de permettre le développement ainsi que différents tests. Veuillez voir les notes du le déploiement pour voir comment déployer le projet sur Internet.

### Prérequis

Pour ce projet, vous aurez besoin d'installer Ruby & Ruby On Rails.

Pour installer Ruby, rendez-vous sur le site de [Ruby](http://www.sitedumodeleun.com) et prenez la version 2.4.X (X étant la dernière version sortie).

Une fois que vous avez fini l'installation. Lancez simplement un invité de commande comme `cmd`.

Puis tapez cette commande dans votre invité.

```
gem install rails
```

Le gestionnaire de paquet qui est installé avec Ruby va automatiquement installer Rails pour vous.

### Installation

Une fois que vous avez installé Ruby & Rails. Il suffit simplement de taper la commande `bundle exec` afin d'installer les différentes gemmes du fichier `Gemfile`.

Enfin, une fois l'installation terminée.

```
rails server
```

Vous permettra d'aller voir votre application sur l'adresse '`http://localhost:3000`'.

## Exécuter des tests

Pour le moment, le projet n'est pas bien fourni, les seuls tests automatisés peuvent être lancés à l'aide de `rails test`.

### Code pour les tests

Voici à quoi ressemble notre fichier test.

```ruby
require "test_helper"

class StatiqueControllerTest < ActionDispatch::IntegrationTest
  def setup
    @baseTitle = "Projet"
  end

  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "Accueil | #{@baseTitle}"
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact | #{@baseTitle}"
  end

  test "should get team" do
    get team_url
    assert_response :success
    assert_select "title", "Team | #{@baseTitle}"
  end

  test "should get services" do
    get services_url
    assert_response :success
    assert_select "title", "Services | #{@baseTitle}"
  end
end
```

Il va permettre de vérifier que toutes nos pages comporte un titre. Vous pouvez écrire des tests similaires en changeant la balise après `assert_select`.

## Deploiement

Pour déployer cette application, nous allons utiliser Heroku. Vous allez devoir installer le [CLI de Heroku](https://devcenter.heroku.com/articles/heroku-cli).

Une fois le CLI installé, créez-vous un compte puis tapez les commandes suivantes :

* `heroku login`
* `heroku keys:add`
* `heroku create`
* `heroku rename` + le nom du projet
* `git push heroku master`

_Vous devez avoir envoyé vos changements sur un repository GitHub afin de faciliter l'envoie sur heroku_

Vous pourrez ensuite ouvrir votre projet sur Heroku, en utilisant la commande `heroku open`.

## Coder avec

* [Ruby](https://www.ruby-lang.org/en/)
* [Ruby On Rails](https://sitedumodeledeux.org)

### Gemmes utilisées

Voir le fichier [Gemfile](https://github.com/gCKn/app-gckn-udemy/blob/master/Gemfile) dans la racine du projet.

## Accéder à notre documentation



## Contribuer au projet



## Participer au projet en tant que 'Commiters'



## Historique de version

Nous utilisons l'extension [GitVersion](https://github.com/GitTools/GitVersion) et [GitReleaseManager](https://github.com/GitTools/GitReleaseManager) pour nos différentes versions. Pour retrouver un historique de nos versions, regardez directement les [différentes releases du repository](https://github.com/gCKn/app-gckn-udemy/releases)


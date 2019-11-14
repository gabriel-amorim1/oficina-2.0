# Oficina-2.0
Desafio Técnico PHP - Básico - Codificar -
Gabriel de Amorim Machado

Para rodar o projeto são necessários ter o seguinte programa instalado:
https://www.apachefriends.org/pt_br/index.html (XAMPP)

Após instalá-lo, baixe o arquivo .zip aqui contido (Codificar Oficina2.0 13-11-2019) e descompacte-o na pasta htdocs do xampp. Ex: C:\xampp\htdocs 

Execute o XAMPP Control Panel, e aperte em "Start" no Apache, aperte em "Start" no MySQL e depois em "Admin".
Depois de clicar em "Admin", abrirá a página do banco de dados(caso não abra é so digitar na barra de endereços http://localhost/phpmyadmin/ ). Crie um banco de dados com o nome "oficina". Agora são dadas duas opções, escolha o que achar melhor:

1° opção: baixar o arquivo SQL disponibilizado aqui chamado "oficina" e importá-lo na base de dados criada. Essa opção cria 97 linhas na tabela "orcamento".

2° opção: Usar o seeder contido na aplicação (os dados são gerados pela biblioteca Faker do laravel)
Para isso é preciso ter instalado o seguinte programa:
https://getcomposer.org/ (Composer)
Siga a instalação padrão e quando terminar abra o prompt de comandos, vá até a pasta xampp e digite php composer-setup.php --install-dir=bin
Após terminado a instalação, vá até a pasta do projeto e digite o seguinte comando:
php artisan migrate
Aperte enter e quando acabar de executar digite o seguinte comando:
composer dump-autoload
Aperte enter e quando acabar de executar digite o seguinte comando:
php artisan db:seed

Com isso serão gerados 25 linhas de dados na tabela "orcamento". Caso queira aumentar o número de linhas geradas, antes de executar essa segunda opção, vá na pasta do projeto->database->seeds->OrcamentoTableSeeder.php e altere na linha 14 ("factory(App\Orcamento::class,24)->create();") o número "24" pelo número desejado.

Para acessar a página inicial da aplicação é só digitar na barra de endereços "http://localhost/oficina/public/home".




# Oficina-2.0

Para rodar o projeto são necessários ter o seguinte programa instalado:
https://www.apachefriends.org/pt_br/index.html (XAMPP)

Após instalá-lo, clone o projeto na pasta htdocs do xampp. Ex: C:\xampp\htdocs 

Execute o XAMPP Control Panel, e aperte em "Start" no Apache, aperte em "Start" no MySQL e depois em "Admin".
Depois de clicar em "Admin", abrirá a página do banco de dados(caso não abra é so digitar na barra de endereços http://localhost/phpmyadmin/ ). Crie um banco de dados com o nome "oficina". Agora são dadas duas opções, escolha o que achar melhor:

1° opção: baixar o arquivo SQL disponibilizado aqui chamado "oficina" e importá-lo na base de dados criada. Essa opção cria 100 linhas na tabela "orcamento", 100 linhas na tabela "cliente" e 10 linhas na tabela "vendedor"

2° opção: Usar o seeder contido na aplicação (os dados são gerados pela biblioteca Faker do laravel)
Para isso é preciso ter instalado o seguinte programa:
https://getcomposer.org/ (Composer)
Siga a instalação padrão e quando terminar abra o prompt de comandos, vá até a pasta xampp e digite ```$ php composer-setup.php --install-dir=bin```
Após terminado a instalação, vá até a pasta do projeto e digite o seguinte comando:
```$ php artisan migrate```
Aperte enter e quando acabar de executar digite o seguinte comando:
```$ composer dump-autoload```
Aperte enter e quando acabar de executar digite o seguinte comando:
```$ php artisan db:seed```

Com isso serão gerados 100 linhas de dados na tabela "orcamento", 100 linhas na tabela "cliente" e 10 linhas na tabela "vendedor". Caso queira aumentar o número de linhas geradas na tabela "orcamento", antes de executar essa segunda opção, vá na pasta do projeto->database->seeds->OrcamentoTableSeeder.php e altere na linha 14 ("factory(App\Orcamento::class,100)->create();") o número "100" pelo número desejado. Caso queira aumentar o número de linhas geradas na tabela "cliente", antes de executar essa segunda opção, vá na pasta do projeto->database->seeds->ClienteTableSeeder.php e altere na linha 14 ("factory(App\Orcamento::class,100)->create();") o número "100" pelo número desejado. Caso queira aumentar o número de linhas geradas na tabela "vendedor", antes de executar essa segunda opção, vá na pasta do projeto->database->seeds->VendedorTableSeeder.php e altere na linha 14 ("factory(App\Orcamento::class,10)->create();") o número "10" pelo número desejado.

Para acessar a página inicial da aplicação é só digitar na barra de endereços "http://localhost/oficina/public/home".

Para que um orçamento seja cadastrado, deverão ser feitos previamente o cadastro do vendedor e cliente, pois os id's de cada são chave estrangeira da tabela de 'orcamento'. Os id's de todas as tabelas são gerados automaticamente e a data e hora do orçamento é a mesma do computador naquele momento do cadastro(por isso não existem campos para id ou data/hora na tela de cadastro). 


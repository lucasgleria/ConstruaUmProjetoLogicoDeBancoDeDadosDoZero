# Desafio de Projeto DIO
## Criando e Implementando um Projeto Lógico de Banco de Dados

### Referente a [desafio-sql]([link](https://github.com/lucasgleria/ConstruaUmProjetoLogicoDeBancoDeDadosDoZero/tree/main/desafio-sql))
<h4><b> Desafio proposto: </b></h4>
Neste desafio, você irá utilizar seu esquema conceitual, criado no desafio do módulo de modelagem de BD com modelo ER, para criar o esquema lógico para o contexto de uma oficina. Você definirá todas as etapas. Desde o esquema até a implementação do banco de dados.

##
<b>Obrigações:</b>

* Recuperações simples com SELECT Statement;
* Filtros com WHERE Statement; 
* Crie expressões para gerar atributos derivados;
* Defina ordenações dos dados com ORDER BY;
* Condições de filtros aos grupos – HAVING Statement;
* Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados;


<b>Diretrizes:</b>


* Não há um mínimo de queries a serem realizadas;
* Os tópicos supracitados devem estar presentes nas queries;
* Elabore perguntas que podem ser respondidas pelas consultas
* As cláusulas podem estar presentes em mais de uma query
* O projeto deverá ser adicionado a um repositório do Github para futura 

##
### Separei o desafio em 3 arquivos diferentes por fins visuais. 
<small>Contém o [esquema conceitual](https://github.com/lucasgleria/ConstruaUmProjetoLogicoDeBancoDeDadosDoZero/blob/main/desafio-sql/Oficina.png) em png</small>
<h4>O que encontrarei no <b>create.sql</b>?</h4>

* Todo o script em [create.sql](https://github.com/lucasgleria/ConstruaUmProjetoLogicoDeBancoDeDadosDoZero/blob/main/desafio-sql/create.sql) é desenvolvido com o comando nativo 'create' e alguns 'alter', no início criando o banco de dados e após isso todos os schemas seguintes, com suas propriedades, seguindo meus próprio esquema conceitual.

<h4>O que encontrarei no <b>insert.sql</b>?</h4>

* Todo o script em [insert.sql](https://github.com/lucasgleria/ConstruaUmProjetoLogicoDeBancoDeDadosDoZero/blob/main/desafio-sql/insert.sql) é desenvolvido com o comando nativo 'insert into', inserindo em todos os schemas dados conforme cada qual, com suas propriedades, seguindo conforme o script _create.sql_.

<h4>O que encontrarei no <b>queries.sql</b>?</h4>

* Todo o script em [queries.sql](https://github.com/lucasgleria/ConstruaUmProjetoLogicoDeBancoDeDadosDoZero/blob/main/desafio-sql/queries.sql) é desenvolvido com o comando nativo 'select', fazendo todas as buscas nos schemas conforme suas propriedades, seguindo as Obrigações e Diretrizes desse desafio.

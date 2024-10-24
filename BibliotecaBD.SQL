create database BibliotecaPublica

use BiliotecaPublica

create table Autores (
  autor_id int auto_increment primary key,
  nome varchar(200) not null,
  dataNascimento date,
  nacionalidade varchar(100)
);

create table Categorias (
  categoria_id int auto_increment primary key,
  nomeCategoria varchar(100),
  descricaoCategoria text
);

create table Livro (
  livro_id int auto_increment primary key,
  titulo varchar(200) not null,
  autor_id int,
  genero varchar(100),
  dataPublicacao date,
  editora varchar(200),
  idioma varchar(50),
  exemplaresDisponiveis int default 0,
  totaisExemplares int default 0
  
 );

create table Usuarios (
  usuario_id int auto_increment primary key,
  nome varchar(200),
  email varchar(100) unique,
  telefone varchar(20),
  dataCadastro date not null,
  endereco text
);

create table Emprestimos (
  emprestimo_id int auto_increment primary key,
  usuario_id int,
  livro_id int,
  dataEmprestimo date not null,
  dataDevolucao date
  
);









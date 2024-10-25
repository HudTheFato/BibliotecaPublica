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
  totalExemplares int default 0,
  constraint fk_Autor foreign key (autor_id) references Autores(autor_id)
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

insert INTO Autores (nome, dataNascimento, Nacionalidade) VALUES
('J.K. Rowling', '1965-07-31', 'Britânica'),
('George Orwell', '1903-06-25', 'Britânico'),
('Gabriel García Márquez', '1927-03-06', 'Colombiano'),
('Jane Austen', '1775-12-16', 'Britânica'),
('Mark Twain', '1835-11-30', 'Americano'),
('Chico Buarque', '1944-06-19', 'Brasileiro'),
('Haruki Murakami', '1949-01-12', 'Japonês'),
('Agatha Christie', '1890-09-15', 'Britânica'),
('Stephen King', '1947-09-21', 'Americano'),
('F. Scott Fitzgerald', '1896-09-24', 'Americano'),
('Clarice Lispector', '1920-12-10', 'Brasileira'),
('Ernest Hemingway', '1899-07-21', 'Americano'),
('Virginia Woolf', '1882-01-25', 'Britânica'),
('Pablo Neruda', '1904-07-12', 'Chileno'),
('Emily Dickinson', '1830-12-10', 'Americana'),
('Maya Angelou', '1928-04-04', 'Americana'),
('Leo Tolstoy', '1828-09-09', 'Russo'),
('Franz Kafka', '1883-07-03', 'Alemão'),
('Mario Vargas Llosa', '1936-03-28', 'Peruano'),
('Herman Melville', '1819-08-01', 'Americano'),
('Ray Bradbury', '1920-08-22', 'Americano'),
('Toni Morrison', '1931-02-18', 'Americana'),
('Isaac Asimov', '1920-01-02', 'Russo-Americano'),
('Jules Verne', '1828-02-08', 'Francês'),
('Oscar Wilde', '1854-10-16', 'Irlandês'),
('Dante Alighieri', '1265-06-01', 'Italiano'),
('Mikhail Bulgakov', '1891-05-15', 'Russo'),
('Sylvia Plath', '1932-10-27', 'Americana'),
('Khaled Hosseini', '1965-03-04', 'Afegão'),
('Margaret Atwood', '1939-11-18', 'Canadense'),
('Neil Gaiman', '1960-11-10', 'Britânico'),
('H.G. Wells', '1866-09-21', 'Britânico'),
('Zadie Smith', '1975-10-25', 'Britânica');

INSERT INTO livro (titulo, autor_id, genero, dataPublicacao, editora, idioma, exemplaresDisponiveis) VALUES
('Harry Potter e a Pedra Filosofal', 1, 'Fantasia', '1997-06-26', 'Bloomsbury', 'Inglês', 5),
('1984', 2, 'Ficção Científica', '1949-06-08', 'Secker & Warburg', 'Inglês', 8),
('Cem Anos de Solidão', 3, 'Ficção', '1967-05-30', 'Editorial Sudamericana', 'Espanhol', 3),
('Orgulho e Preconceito', 4, 'Romance', '1813-01-28', 'T. Egerton', 'Inglês', 10),
('As Aventuras de Tom Sawyer', 5, 'Aventura', '1876-06-01', 'Chatto & Windus', 'Inglês', 6),
('Budapeste', 6, 'Romance', '2003-05-01', 'Companhia das Letras', 'Português', 4),
('Kafka à Beira-Mar', 7, 'Ficção', '2002-09-12', 'Companhia das Letras', 'Português', 7),
('Assassinato no Expresso do Oriente', 8, 'Mistério', '1934-01-01', 'Collins Crime Club', 'Inglês', 5),
('It: A Coisa', 9, 'Terror', '1986-09-15', 'Viking Penguin', 'Inglês', 2),
('O Grande Gatsby', 10, 'Romance', '1925-04-10', 'Charles Scribners Sons', 'Inglês', 9),
('A Hora da Estrela', 11, 'Ficção', '1977-06-01', 'Companhia das Letras', 'Português', 3),
('O Sol é Para Todos', 12, 'Ficção', '1960-07-11', 'J.B. Lippincott & Co.', 'Inglês', 4),
('Mrs. Dalloway', 13, 'Ficção', '1925-05-14', 'Hogarth Press', 'Inglês', 6),
('O Amor nos Tempos do Cólera', 3, 'Romance', '1985-11-06', 'Editorial Oveja Negra', 'Espanhol', 5),
('Moby Dick', 5, 'Aventura', '1851-10-18', 'Harper & Brothers', 'Inglês', 2),
('A Menina que Roubava Livros', 14, 'Ficção Histórica', '2005-03-01', 'Zusak', 'Alemão', 4),
('A Metamorfose', 15, 'Ficção', '1915-01-01', 'Fischer', 'Alemão', 3),
('O Senhor dos Anéis', 1, 'Fantasia', '1954-07-29', 'Allen & Unwin', 'Inglês', 5),
('Catcher in the Rye', 16, 'Ficção', '1951-07-16', 'Little, Brown and Company', 'Inglês', 3),
('O Nome da Rosa', 17, 'Mistério', '1980-01-01', 'Bompiani', 'Italiano', 2),
('O Estrangeiro', 18, 'Ficção', '1942-06-01', 'Gallimard', 'Francês', 4),
('O Processo', 15, 'Ficção', '1925-05-26', 'Fischer', 'Alemão', 3),
('Ensaio sobre a cegueira', 19, 'Ficção', '1995-02-01', 'Caminho', 'Português', 6),
('A Cor Púrpura', 20, 'Ficção', '1982-02-01', 'Penguin', 'Inglês', 5),
('As Crônicas de Nárnia', 21, 'Fantasia', '1950-10-16', 'Geoffrey Bles', 'Inglês', 4),
('O Hobbit', 1, 'Fantasia', '1937-09-21', 'George Allen & Unwin', 'Inglês', 3),
('O Alquimista', 22, 'Ficção', '1988-05-01', 'HarperCollins', 'Português', 5),
('O Silmarillion', 1, 'Fantasia', '1977-09-15', 'George Allen & Unwin', 'Inglês', 4),
('Crime e Castigo', 23, 'Ficção', '1866-01-01', 'The Russian Messenger', 'Russo', 2),
('Fahrenheit 451', 9, 'Ficção Científica', '1953-10-19', 'Ballantine Books', 'Inglês', 3),
('O Senhor das Moscas', 24, 'Ficção', '1954-09-17', 'Faber & Faber', 'Inglês', 7),
('O Livro do Riso e do Esquecimento', 25, 'Ficção', '1979-03-01', 'Krytyka', 'Tcheco', 4);

INSERT INTO usuarios (nome, email, telefone, dataCadastro, endereco) VALUES
('Ana Silva', 'ana.silva@example.com', '1234-5678', '2023-01-15', 'Rua A, 123, São Paulo, SP'),
('Carlos Pereira', 'carlos.pereira@example.com', '9876-5432', '2023-02-20', 'Rua B, 456, Rio de Janeiro, RJ'),
('Maria Oliveira', 'maria.oliveira@example.com', '2345-6789', '2023-03-10', 'Avenida C, 789, Belo Horizonte, MG'),
('João Santos', 'joao.santos@example.com', '8765-4321', '2023-04-05', 'Praça D, 101, Curitiba, PR'),
('Fernanda Lima', 'fernanda.lima@example.com', '3456-7890', '2023-05-12', 'Travessa E, 202, Salvador, BA'),
('Paulo Costa', 'paulo.costa@example.com', '7654-3210', '2023-06-15', 'Rua F, 303, Porto Alegre, RS'),
('Lucia Martins', 'lucia.martins@example.com', '4567-8901', '2023-07-01', 'Avenida G, 404, Fortaleza, CE'),
('Ricardo Gomes', 'ricardo.gomes@example.com', '6543-2109', '2023-07-20', 'Rua H, 505, Manaus, AM'),
('Juliana Rocha', 'juliana.rocha@example.com', '5678-9012', '2023-08-18', 'Praça I, 606, Natal, RN'),
('Lucas Almeida', 'lucas.almeida@example.com', '7890-1234', '2023-09-10', 'Travessa J, 707, Recife, PE'),
('Tatiane Souza', 'tatiane.souza@example.com', '8901-2345', '2023-09-15', 'Rua K, 808, Florianópolis, SC'),
('André Martins', 'andre.martins@example.com', '9012-3456', '2023-10-01', 'Avenida L, 909, Vitória, ES'),
('Camila Dias', 'camila.dias@example.com', '0123-4567', '2023-10-05', 'Praça M, 111, João Pessoa, PB'),
('Felipe Almeida', 'felipe.almeida@example.com', '1234-5670', '2023-10-10', 'Rua N, 222, Teresina, PI'),
('Sofia Ribeiro', 'sofia.ribeiro@example.com', '2345-6781', '2023-10-12', 'Avenida O, 333, Maceió, AL'),
('Victor Teixeira', 'victor.teixeira@example.com', '3456-7892', '2023-10-15', 'Rua P, 444, Aracaju, SE'),
('Aline Fernandes', 'aline.fernandes@example.com', '4567-8903', '2023-10-18', 'Travessa Q, 555, São Luís, MA'),
('Diego Barros', 'diego.barros@example.com', '5678-9014', '2023-10-20', 'Avenida R, 666, Cuiabá, MT'),
('Beatriz Cunha', 'beatriz.cunha@example.com', '6789-0125', '2023-10-22', 'Praça S, 777, Campo Grande, MS'),
('Thiago Mendes', 'thiago.mendes@example.com', '7890-1236', '2023-10-24', 'Rua T, 888, Londrina, PR'),
('Patrícia Almeida', 'patricia.almeida@example.com', '8901-2347', '2023-10-25', 'Avenida U, 999, São Bernardo do Campo, SP'),
('Gabriel Pires', 'gabriel.pires@example.com', '9012-3458', '2023-10-26', 'Praça V, 121, Santo André, SP'),
('Mariana Dias', 'mariana.dias@example.com', '1234-5671', '2023-10-27', 'Rua W, 131, Guarulhos, SP'),
('Leandro Nascimento', 'leandro.nascimento@example.com', '2345-6782', '2023-10-28', 'Avenida X, 141, Osasco, SP'),
('Jéssica Lima', 'jessica.lima@example.com', '3456-7893', '2023-10-29', 'Rua Y, 151, Diadema, SP'),
('Rodrigo Silva', 'rodrigo.silva@example.com', '4567-8904', '2023-10-30', 'Avenida Z, 161, Santos, SP'),
('Natália Costa', 'natalia.costa@example.com', '5678-9015', '2023-10-31', 'Travessa AA, 171, Niterói, RJ'),
('Fernando Oliveira', 'fernando.oliveira@example.com', '6789-0126', '2023-11-01', 'Rua AB, 181, Duque de Caxias, RJ'),
('Roberta Ferreira', 'roberta.ferreira@example.com', '7890-1237', '2023-11-02', 'Praça AC, 191, São João de Meriti, RJ');

INSERT INTO emprestimos (usuario_id, livro_id, dataEmprestimo, dataDevolucao) VALUES
(1, 1, '2024-01-10', '2024-01-24'),
(2, 2, '2024-01-15', '2024-01-29'),
(3, 3, '2024-01-20', '2024-02-03'),
(4, 4, '2024-01-22', '2024-02-05'),
(5, 5, '2024-01-25', '2024-02-08'),
(6, 6, '2024-02-01', '2024-02-15'),
(7, 7, '2024-02-03', '2024-02-17'),
(8, 8, '2024-02-10', '2024-02-24'),
(9, 9, '2024-02-12', '2024-02-26'),
(10, 10, '2024-02-15', '2024-03-01'),
(11, 11, '2024-02-18', '2024-03-04'),
(12, 12, '2024-02-20', '2024-03-06'),
(13, 13, '2024-02-25', '2024-03-11'),
(14, 14, '2024-03-01', '2024-03-15'),
(15, 15, '2024-03-03', '2024-03-17'),
(16, 16, '2024-03-05', '2024-03-19'),
(17, 17, '2024-03-10', '2024-03-24'),
(18, 18, '2024-03-12', '2024-03-26'),
(19, 19, '2024-03-15', '2024-03-29'),
(20, 20, '2024-03-20', '2024-04-03'),
(21, 21, '2024-03-22', '2024-04-05'),
(22, 22, '2024-03-25', '2024-04-08'),
(23, 23, '2024-03-28', '2024-04-11'),
(24, 24, '2024-04-01', '2024-04-15'),
(25, 25, '2024-04-05', '2024-04-19'),
(26, 26, '2024-04-07', '2024-04-21'),
(27, 27, '2024-04-10', '2024-04-24'),
(28, 28, '2024-04-12', '2024-04-26'),
(29, 29, '2024-04-15', '2024-04-29'),
(30, 30, '2024-04-20', '2024-05-04');









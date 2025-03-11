create database db_shelf;

select database() db_shelf;

use db_shelf;

create table tb_usuario (
	id_usuario int auto_increment,
	nm_usuario varchar(40) not null,
    ds_email varchar(70) not null,
    cd_senha varchar(30) not null,
    id_tipo int not null,
			primary key (id_usuario),
            
	foreign key (id_tipo) references tb_tipo_usuario(id_tipo)
);

select * from sessions;

select * from users;

select * from password_resets;

select * from `password_reset_tokens`;

select * from migrations;

create table tb_tipo_usuario (
	id_tipo int auto_increment,
    nm_tipo varchar(25) not null,
   primary key (id_tipo) 
);

insert into tb_tipo_usuario (nm_tipo) values 
('Aluno'),
('Professor'),
('Coordenador'),
('Bibliotecário');

select * from tb_tipo_usuario;

truncate table tb_tipo_usuario;

select * from tb_usuario;

INSERT INTO tb_usuario (nm_usuario, ds_email, cd_senha, id_tipo) VALUES
('João Silva', 'joao.silva@etec.sp.gov.br', 'senhaSegura1', 1),
('Maria Oliveira', 'maria.oliveira@etec.sp.gov.br', 'senhaForte2', 2),
('José Santos', 'jose.santos@etec.sp.gov.br', 'senhaFixa99', 3),
('Ana Pereira', 'ana.pereira@etec.sp.gov.br', 'meuSenha88', 4),
('Carlos Alberto', 'carlos.alberto@etec.sp.gov.br', 'forteSenha7', 1),
('Fernanda Costa', 'fernanda.costa@etec.sp.gov.br', 'senhaBOM123', 2),
('Paulo Lima', 'paulo.lima@etec.sp.gov.br', 'senhaLegal8', 3),
('Mariana Souza', 'mariana.souza@etec.sp.gov.br', 'senhaOK2023', 4),
('Rafael Nunes', 'rafael.nunes@etec.sp.gov.br', 'senhaViva9', 1),
('Camila Rocha', 'camila.rocha@etec.sp.gov.br', 'senhaFixaa1', 4);

select * from tb_usuario;

create table tb_Editora (
	id_editora int auto_increment,
    nm_editora varchar(30) not null,
    primary key (id_editora)
);

INSERT INTO tb_Editora (nm_editora) VALUES
('HarperCollins'),
('Penguin Books'),
('Pearson Education'),
('Oxford University Press'),
('Wiley');

create table tb_Autor (
	id_autor int auto_increment,
	nm_autor varchar(30) not null,
	primary key (id_autor)
);

INSERT INTO tb_Autor (nm_autor) VALUES
('J.K. Rowling'),
('George Orwell'),
('J.R.R. Tolkien'),
('Isaac Asimov'),
('Jane Austen');

create table tb_LocalPublicacao (
	id_localPublicacao int auto_increment,
    nm_localPublicacao varchar(20) not null,
    primary key (id_localPublicacao)
);

INSERT INTO tb_LocalPublicacao (nm_localPublicacao) VALUES
('London'),
('New York'),
('São Paulo'),
('Paris'),
('Berlim');

create table tb_SerieColecao (
	id_serieColecao int auto_increment,
    nm_serieColecao varchar(30),
    primary key (id_serieColecao)
);

CREATE TABLE IF NOT EXISTS `db_shelf`.`tb_usuario_biblioteca` (
  `id_usuario_biblioteca` INT NOT NULL,
  PRIMARY KEY (`id_usuario_biblioteca`),
  CONSTRAINT `id_biblioteca`
    FOREIGN KEY (`id_usuario_biblioteca`)
    REFERENCES `db_shelf`.`tb_biblioteca` (`id_biblioteca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_usuario`
    FOREIGN KEY (`id_usuario_biblioteca`)
    REFERENCES `db_shelf`.`tb_usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE tb_usuario_biblioteca (
	id_usuario_biblioteca int auto_increment primary key,
    id_usuario INT,
    id_biblioteca INT,
    FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id_usuario) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_biblioteca) REFERENCES tb_biblioteca(id_biblioteca) ON DELETE CASCADE ON UPDATE CASCADE
);

select * from tb_biblioteca;

INSERT INTO tb_usuario_biblioteca (id_usuario, id_biblioteca)
VALUES 
    (1, 2), -- Usuário 1 na Biblioteca 2
    (1, 3), -- Usuário 1 na Biblioteca 3
    (2, 1), -- Usuário 2 na Biblioteca 1
    (2, 3); -- Usuário 2 na Biblioteca 3
    
select * from tb_usuario_biblioteca;

select * from tb_usuario;

INSERT INTO tb_SerieColecao (nm_serieColecao) VALUES
('Harry Potter'),
('1984'),
('Senhor dos Anéis'),
('Fundação'),
('Orgulho e Preconceito');

create table tb_Idioma (
	id_idioma int auto_increment,
    nm_idioma varchar(20) not null,
    primary key (id_idioma)
);

INSERT INTO tb_idioma (nm_idioma) VALUES
('Africâner'),
('Alemão'),
('Amárico'),
('Árabe'),
('Basco'),
('Bemba'),
('Bengali'),
('Birmanês'),
('Búlgaro'),
('Cazaque'),
('Cebuano'),
('Checo'),
('Chinês'),
('Coreano'),
('Croata'),
('Dinamarquês'),
('Eslovaco'),
('Esloveno'),
('Espanhol'),
('Estoniano'),
('Filipino'),
('Finlandês'),
('Francês'),
('Gaélico Escocês'),
('Galês'),
('Georgiano'),
('Grego'),
('Gujarati'),
('Húngaro'),
('Hindi'),
('Holandês'),
('Hmong'),
('Húngaro'),
('Islandês'),
('Indonésio'),
('Inglês'),
('Irlandês'),
('Italiano'),
('Japonês'),
('Javanês'),
('Khmer'),
('Laociano'),
('Letão'),
('Lituano'),
('Macedônio'),
('Malgaxe'),
('Malaio'),
('Malayalam'),
('Mandarim'),
('Marata'),
('Mongol'),
('Nepali'),
('Norueguês'),
('Oriá'),
('Pashto'),
('Persa'),
('Polonês'),
('Português'),
('Quichua'),
('Romeno'),
('Russo'),
('Servo-Croata'),
('Sesotho'),
('Somali'),
('Suaíli'),
('Sundanês'),
('Tagalo'),
('Tailandês'),
('Tamil'),
('Tártaro'),
('Telugu'),
('Tétum'),
('Tibetano'),
('Tswana'),
('Turco'),
('Ucraniano'),
('Urdu'),
('Usbeque'),
('Venda'),
('Vietnamita'),
('Xhosa'),
('Zulu');

select nm_idioma from tb_idioma;

select * from tb_livro;

create table tb_Livro (
	id_livro int auto_increment,
	nm_livro varchar(50) not null,
	ds_cutter char(5) not null,
    ds_cdd varchar(15) not null,
    ds_isbn char(13) not null,
	nr_anoPublicacao varchar(4) not null,
    dt_registro varchar(10) not null,
    id_idioma int not null,
    id_editora int not null,
	id_autor int not null,
    id_localPublicacao int not null,
    nr_exemplar varchar(2),
    id_serieColecao int,
    nr_edicao varchar(2),
    nr_volume varchar(2),
    ds_observacao varchar(50),

	primary key (id_livro),

	foreign key (id_editora) references tb_Editora(id_editora),
	foreign key (id_autor) references tb_Autor(id_autor),
    foreign key (id_localPublicacao) references tb_localPublicacao(id_localPublicacao),
    foreign key (id_serieColecao) references tb_SerieColecao(id_serieColecao),
    foreign key (id_idioma) references tb_Idioma(id_idioma)
);

describe tb_livro;

ALTER TABLE tb_livro 
ADD COLUMN id_biblioteca INT NOT NULL;

ALTER TABLE tb_livro 
ADD CONSTRAINT fk_livro_biblioteca 
FOREIGN KEY (id_biblioteca) 
REFERENCES tb_biblioteca(id_biblioteca) 
ON DELETE CASCADE ON UPDATE CASCADE;

select * from tb_biblioteca;

alter table tb_biblioteca
drop column id_livro;

insert into tb_biblioteca values 
(2, 'Biblioteca pública de Santos', 'bpsantos'),
(3, 'Escolastica Rosa', 'etecesco')
;

select * from tb_livro;

UPDATE tb_livro 
SET id_biblioteca = 1 
WHERE id_biblioteca NOT IN (SELECT id_biblioteca FROM tb_biblioteca);


CREATE TABLE IF NOT EXISTS `db_shelf`.`tb_biblioteca` (
  `id_biblioteca` INT NOT NULL,
  `nm_biblioteca` VARCHAR(45) NOT NULL,
  `nm_handle` VARCHAR(20) NULL,
  `id_livro` VARCHAR(45) NULL,
  PRIMARY KEY (`id_biblioteca`),
  UNIQUE INDEX `nm_handle_UNIQUE` (`nm_handle` ASC) VISIBLE)
ENGINE = InnoDB;

INSERT INTO tb_Livro (nm_livro, ds_cutter, ds_cdd, ds_isbn, nr_anoPublicacao, dt_registro, id_idioma, id_editora, id_autor, id_localPublicacao, nr_exemplar, id_serieColecao, nr_edicao, nr_volume, ds_observacao) VALUES
('Harry Potter e a Pedra Filosofal', 'R123h', '823.914', '9780747532743', '1997', '2024-11-28', 44, 1, 1, 1, '1', 1, '1', '1', 'Primeiro livro da série.'),
('1984', 'O234m', '823.912', '9780451524935', '1949', '2024-11-28', 47, 2, 2, 2, '1', 2, '1', '1', 'Clássico distópico.'),
('A Sociedade do Anel', 'T345a', '823.912', '9780261103573', '1954', '2024-11-28', 49, 3, 3, 3, '1', 3, '1', '1', 'Início da épica fantasia.'),
('Fundação', 'A456f', '823.912', '9780553293357', '1951', '2024-11-28', 49, 4, 4, 4, '1', 4, '1', '1', 'Clássico da ficção científica.'),
('Orgulho e Preconceito', 'A567o', '823.912', '9780141040349', '1813', '2024-11-28', 49, 5, 5, 5, '1', 5, '1', '1', 'Romance clássico da literatura inglesa.');

create table tb_Assunto (
	id_assunto int auto_increment,
	nm_assunto varchar(20) not null,
	primary key (id_assunto)
);

INSERT INTO tb_Assunto (nm_assunto) VALUES
('Ficção'),
('Ficção Científica'),
('Fantasia'),
('Literatura Inglesa'),
('Política');

create table tb_LivroAssunto (
	id_livroAssunto int auto_increment,
    id_livro int not null,
    id_assunto int not null,
    primary key (id_livroAssunto),
    foreign key (id_livro) references tb_livro(id_livro),
    foreign key (id_assunto) references tb_assunto(id_assunto)
);

INSERT INTO tb_LivroAssunto (id_livro, id_assunto) VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 2),
(5, 4);

create table tb_emprestimo (
    id_emprestimo int auto_increment,
    id_usuario int not null,
    id_livro int not null,
    dt_devolucao varchar(10) not null,
    primary key (id_emprestimo),
    foreign key (id_usuario) references tb_usuario(id_usuario),
    foreign key (id_livro) references tb_livro(id_livro)
);

select 
	tb_usuario.nm_usuario as 'Aluno',
	tb_usuario.cd_senha as 'Senha',
    tb_usuario.ds_email as 'E-mail',
    tb_tipo_usuario.nm_tipo as 'Tipo de Usuário'
from tb_usuario
inner join tb_tipo_usuario on tb_usuario.id_tipo = tb_tipo_usuario.id_tipo;

SELECT
    tb_usuario.nm_usuario AS 'Aluno',
    tb_livro.nm_livro AS 'Livro',
    tb_emprestimo.dt_devolucao AS 'Data de Devolução'
FROM tb_emprestimo
INNER JOIN tb_usuario ON tb_emprestimo.id_usuario = tb_usuario.id_usuario
INNER JOIN tb_livro ON tb_emprestimo.id_livro = tb_livro.id_livro
ORDER BY tb_emprestimo.dt_devolucao DESC;


select
tb_Livro.nm_livro as 'Livro',
tb_Assunto.nm_assunto as 'Assunto'
from tb_livroassunto
inner join tb_livro on tb_livroassunto.id_livro = tb_livro.id_livro
inner join tb_assunto on tb_livroassunto.id_assunto = tb_assunto.id_assunto
order by tb_livroassunto.id_livroAssunto;

SELECT 
tb_livro.nm_livro AS 'Título',
tb_autor.nm_autor AS 'Autor',
tb_editora.nm_editora AS 'Editora',
GROUP_CONCAT(tb_assunto.nm_assunto ORDER BY tb_assunto.nm_assunto ASC SEPARATOR ', ') AS 'Assuntos',
tb_seriecolecao.nm_seriecolecao AS 'Série/coleção',
tb_livro.nr_volume AS 'Volume',
tb_livro.nr_edicao AS 'Edição',
tb_livro.nr_anoPublicacao AS 'Ano de publicação',
tb_idioma.nm_idioma AS 'Idioma',
tb_localpublicacao.nm_localpublicacao AS 'Local de publicação',
tb_livro.ds_isbn AS 'ISBN',
tb_livro.ds_cdd AS 'CDD',
tb_livro.ds_cutter AS 'Cutter',
tb_livro.dt_registro AS 'Data de registro',
tb_livro.nr_exemplar AS 'N. de exemplares',
tb_livro.ds_observacao AS 'Observação'

FROM tb_livro
INNER JOIN tb_autor ON tb_livro.id_autor = tb_autor.id_autor
INNER JOIN tb_idioma ON tb_livro.id_idioma = tb_idioma.id_idioma
INNER JOIN tb_localpublicacao ON tb_livro.id_localpublicacao = tb_localpublicacao.id_localpublicacao
INNER JOIN tb_seriecolecao ON tb_livro.id_seriecolecao = tb_seriecolecao. id_serieColecao
INNER JOIN tb_editora ON tb_livro.id_editora = tb_editora.id_editora
INNER JOIN tb_livroassunto ON tb_livro.id_livro = tb_livroassunto.id_livro
INNER JOIN tb_assunto ON tb_livroassunto.id_assunto = tb_assunto.id_assunto
GROUP BY 
    tb_livro.nm_livro,
    tb_autor.nm_autor,
    tb_editora.nm_editora,
    tb_idioma.nm_idioma,
    tb_localpublicacao.nm_localpublicacao,
    tb_seriecolecao.nm_seriecolecao,
    tb_livro.ds_cdd,
    tb_livro.ds_isbn,
    tb_livro.nr_anoPublicacao,
    tb_livro.dt_registro,
    tb_livro.nr_exemplar,
    tb_livro.nr_volume,
    tb_livro.ds_cutter,
    tb_livro.ds_observacao,
    tb_livro.nr_edicao;
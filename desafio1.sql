DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;
  
  USE SpotifyClone;

  CREATE TABLE SpotifyClone.plano(
      plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      plano VARCHAR(120) NOT NULL,
      valor DOUBLE NOT NULL
      );

  CREATE TABLE SpotifyClone.usuario(
      usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      usuario VARCHAR(120) NOT NULL,
      idade INT NOT NULL,
      plano_id INT NOT NULL,
      data_assinatura VARCHAR(120) NOT NULL,
      FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
      );
      
      CREATE TABLE SpotifyClone.artista(
      artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      nome_artista VARCHAR(120) NOT NULL
      );
      
      CREATE TABLE SpotifyClone.album(
      album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      album_nome VARCHAR(120) NOT NULL,
      artista_id INT NOT NULL,
      ano_lancamento DOUBLE NOT NULL,
      FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
      );
      
      CREATE TABLE SpotifyClone.cancoes(
      cancoes_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
      cancoes VARCHAR(120) NOT NULL,
      album_id INT NOT NULL,
      duracao INT,
      FOREIGN KEY (album_id) REFERENCES album(album_id)
      );
      
      
      CREATE TABLE SpotifyClone.seguindo_artistas(
      usuario_id INT NOT NULL,
      artista_id INT NOT NULL,
      CONSTRAINT PRIMARY KEY(artista_id, usuario_id),
      FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
      FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
      );
      
       CREATE TABLE SpotifyClone.historico(
      usuario_id INT NOT NULL,
      cancoes_id INT NOT NULL,
      data_reproducao DATETIME NOT NULL,
      PRIMARY KEY(usuario_id, cancoes_id),
      FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
      FOREIGN KEY (cancoes_id) REFERENCES cancoes(cancoes_id)
	  ) engine = InnoDB;

 INSERT INTO SpotifyClone.plano (plano, valor) VALUES
("gratuito", 0.00),
("familiiar", 7.99),
("uninversitário", 5.99),
("pessoal", 6.99);
INSERT INTO SpotifyClone.usuario (usuario, idade, data_assinatura, plano_id) VALUES
("Barbara Liskov", 82, "2019-10-20", 1),
("Robert Cecil Martin", 52, "2017-01-06",1),
("Ada Lovelace", 37, "2017-12-30",2),
("Martin Fowler", 46, "2017-01-17", 2),
("Sandi Metz", 58, "2018-04-29", 2),
("Paulo Freire", 19, "2018-02-14",3),
("Bell Hooks", 26, "2018-01-05",3),
("Christopher Alexander", 85, "2019-06-05", 4),
("Judith Butler", 45, "2020-05-13", 4),
("Jorge Amado", 58, "2017-02-17", 4);

INSERT INTO SpotifyClone.artista (nome_artista) VALUES
("Beyoncé"),
("Queen"),
("Elis Regina"),
("Baco Exu do Blues"),
("Blind Guardian"),
("Nina Simone");

INSERT INTO SpotifyClone.album (album_nome, ano_lancamento, artista_id) VALUES
("Renaissance", 2022, 1),
("Jazz", 1978, 2),
("Hot Space", 1982, 2),
("Falso Brilhante", 1998, 3),
("Vento de Maio", 2001, 3),
("QVVJFA?", 2003, 4),
("Somewhere Far Beyond", 2007, 5),
("I Put A Spell On You", 2012, 6);

INSERT INTO SpotifyClone.cancoes (cancoes, duracao, album_id) VALUES
("BREAK MY SOUL", 279, 1),
("VIRGO'S GROOVE", 369, 1),
("ALIEN SUPERSTAR", 116, 1),
("Don't Stop Me", 203, 2),
("Under Pressuree", 152, 3),
("Como Nossos Pais", 105, 4),
("O Medo de Amar é o Medo de Ser Livre", 207, 5),
("Samba em Paris", 267, 6),
("The Bard's Song", 244, 7),
("Feeling Good", 100, 8);

INSERT INTO SpotifyClone.seguindo_artistas (artista_id, usuario_id) VALUES
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(3, 2),
(2, 3),
(4, 4),
(5, 5),
(6, 5),
(6, 6),
(1, 6),
(6, 7),
(3, 9),
(2, 10);

INSERT INTO SpotifyClone.historico (usuario_id, cancoes_id, data_reproducao) VALUES
(1, 8,"2022-02-28 10:45:55"),
(1, 2, "2020-05-02 05:30:35"),
(1, 10, "2020-03-06 11:22:33"),
(2, 10, "2022-08-05 08:05:17"),
(2, 7, "2020-01-02 07:40:33"),
(3, 10, "2020-11-13 16:55:13"),
(3, 2, "2020-12-05 18:38:30"),
(4, 8, "2021-08-15 17:10:10"),
(5, 8, "2022-01-09 01:44:33"),
(5, 5, "2020-08-06 15:23:43"),
(6, 7, "2017-01-24 00:31:17"),
(6, 1, "2017-10-12 12:35:20"),
(7, 4, "2011-12-15 22:30:49"),
(8, 4, "2012-03-17 14:56:41"),
(9, 9, "2022-02-24 21:14:22"),
(10, 3, "2015-12-13 08:30:22");

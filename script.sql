create database tpS6;
create table article(
                        idArticle serial primary key ,
                        titre varchar(30),
                        datePublication date default now(),
                        contenu text,
                        image text
);

create table utilisateur(
                            idUtilisateur serial primary key ,
                            username varchar(30),
                            mdp varchar(30)
);
insert into utilisateur(username, mdp) VALUES ('rakoto',1234);
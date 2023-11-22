USE CBD_LAB3;

-- Tabela USER
INSERT INTO USER (username, name, email, register_date)
VALUES ('joaosilva', 'João Silva', 'joao.silva@example.com', '2023-01-31 23:45:12.345');
INSERT INTO USER (username, name, email, register_date)
VALUES ('mariasouza', 'Maria Souza', 'maria.souza@example.com', '2023-05-12 12:34:56.789');
INSERT INTO USER (username, name, email, register_date)
VALUES ('carlospereira', 'Carlos Pereira', 'carlos.pereira@example.com', '2022-09-30 09:08:07.654');
INSERT INTO USER (username, name, email, register_date)
VALUES ('anacosta', 'Ana Costa', 'ana.costa@example.com', '2022-12-31 23:59:59.999');
INSERT INTO USER (username, name, email, register_date)
VALUES ('ricardofernandes', 'Ricardo Fernandes', 'ricardo.fernandes@example.com', '2022-01-01 00:00:00.000');
INSERT INTO USER (username, name, email, register_date)
VALUES ('beatrizoliveira', 'Beatriz Oliveira', 'beatriz.oliveira@example.com', '2022-02-05 01:02:03.004');
INSERT INTO USER (username, name, email, register_date)
VALUES ('pedromartins', 'Pedro Martins', 'pedro.martins@example.com', '2023-03-04 05:06:07.008');
INSERT INTO USER (username, name, email, register_date)
VALUES ('catarinarodrigues', 'Catarina Rodrigues', 'catarina.rodrigues@example.com', '2023-02-03 04:05:06.007');
INSERT INTO USER (username, name, email, register_date)
VALUES ('ruialmeida', 'Rui Almeida', 'rui.almeida@example.com', '2023-04-17 18:19:20.021');
INSERT INTO USER (username, name, email, register_date)
VALUES ('margaridacosta', 'Margarida Costa', 'margarida.costa@example.com', '2023-10-16 17:18:19.020');


-- Tabela VIDEO
INSERT INTO VIDEO (author_username, id, name, description, tag, upload_time)
VALUES ('joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João',
        {'tag1', 'tag2'}, '2023-10-21 17:22:19.000');
INSERT INTO VIDEO (author_username, id, name, description, tag, upload_time)
VALUES ('mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria',
        {'tag2', 'tag3'}, '2023-05-12 15:00:00.000');
INSERT INTO VIDEO (author_username, id, name, description, tag, upload_time)
VALUES ('carlospereira', 86aafb44-6fc7-488e-85ba-8631fe66a97c, 'Vídeo do Carlos', 'Descrição do vídeo do Carlos',
        {'tag2', 'tag3', 'tag4'}, '2022-10-01 00:00:00.000');
INSERT INTO VIDEO (author_username, id, name, description, tag, upload_time)
VALUES ('anacosta', 8fc80794-fb45-4de7-ad65-c691c2b159eb, 'Vídeo da Ana', 'Descrição do vídeo da Ana',
        {'tag1'}, '2023-01-10 12:23:34.223');
INSERT INTO VIDEO (author_username, id, name, description, tag, upload_time)
VALUES ('ricardofernandes', 5576245c-f401-4688-a295-95d012e32000, 'Vídeo do Ricardo', 'Descrição do vídeo do Ricardo',
        {'tag3', 'tag4'}, '2022-01-02 00:00:00.000');
INSERT INTO VIDEO (author_username, id, name, description, tag, upload_time)
VALUES ('beatrizoliveira', cf54e676-4aaf-40e5-bd3a-b3a842a893f4, 'Vídeo da Beatriz', 'Descrição do vídeo da Beatriz',
        {'tag1', 'tag3'}, '2023-03-24 16:45:22.345');
INSERT INTO VIDEO (author_username, id, name, description, tag, upload_time)
VALUES ('pedromartins', 97a647e1-cb0f-4698-83ee-5415320c4591, 'Vídeo do Pedro', 'Descrição do vídeo do Pedro',
        {'tag2', 'tag3'}, '2023-09-01 08:34:27.000');
INSERT INTO VIDEO (author_username, id, name, description, tag, upload_time)
VALUES ('catarinarodrigues', 0d5a8fbd-7b6c-4715-ac71-9ce9a75b9352, 'Vídeo da Catarina',
        'Descrição do vídeo da Catarina', {'tag4'}, '2023-02-04 15:00:00.345');
INSERT INTO VIDEO (author_username, id, name, description, tag, upload_time)
VALUES ('ruialmeida', c553d808-ea99-41cb-837e-c35a199ed3ed, 'Vídeo do Rui', 'Descrição do vídeo do Rui',
        {'tag2', 'tag4'}, '2023-06-30 11:00:00.001');
INSERT INTO VIDEO (author_username, id, name, description, tag, upload_time)
VALUES ('margaridacosta', 88e52b88-5d06-4621-a71b-4405252fab4a, 'Vídeo da Margarida',
        'Descrição do vídeo da Margarida', {'tag1', 'tag4'}, '2023-11-17 12:04:24.456');


-- Tabela VIDEO_BY_TAG
INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag1', 'joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6);
INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag2', 'joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6);

INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag2', 'mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4);
INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag3', 'mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4);

INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag2', 'carlospereira', 86aafb44-6fc7-488e-85ba-8631fe66a97c);
INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag3', 'carlospereira', 86aafb44-6fc7-488e-85ba-8631fe66a97c);
INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag4', 'carlospereira', 86aafb44-6fc7-488e-85ba-8631fe66a97c);

INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag1', 'anacosta', 8fc80794-fb45-4de7-ad65-c691c2b159eb);

INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag3', 'ricardofernandes', 5576245c-f401-4688-a295-95d012e32000);
INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag4', 'ricardofernandes', 5576245c-f401-4688-a295-95d012e32000);

INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag1', 'beatrizoliveira', cf54e676-4aaf-40e5-bd3a-b3a842a893f4);
INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag3', 'beatrizoliveira', cf54e676-4aaf-40e5-bd3a-b3a842a893f4);

INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag2', 'pedromartins', 97a647e1-cb0f-4698-83ee-5415320c4591);
INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag3', 'pedromartins', 97a647e1-cb0f-4698-83ee-5415320c4591);

INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag4', 'catarinarodrigues', 0d5a8fbd-7b6c-4715-ac71-9ce9a75b9352);

INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag2', 'ruialmeida', c553d808-ea99-41cb-837e-c35a199ed3ed);
INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag4', 'ruialmeida', c553d808-ea99-41cb-837e-c35a199ed3ed);

INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag1', 'margaridacosta', 88e52b88-5d06-4621-a71b-4405252fab4a);
INSERT INTO VIDEO_BY_TAG (tag, author_username, video_id)
VALUES ('tag4', 'margaridacosta', 88e52b88-5d06-4621-a71b-4405252fab4a);


-- Tabela COMMENT_BY_AUTHOR
INSERT INTO COMMENT_BY_AUTHOR (comment_author_username, comment_author_name, comment_author_email,
                               comment_author_register_date, video_author_username, video_id, time, content)
VALUES ('joaosilva', 'João Silva', 'joao.silva@example.com', '2023-01-31 23:45:12.345', 'mariasouza',
        db72a1e5-c706-41ba-85b1-198e6f9061f4, '2023-05-15 15:00:00.000', 'Comentário do João no vídeo da Maria');
INSERT INTO COMMENT_BY_AUTHOR (comment_author_username, comment_author_name, comment_author_email,
                               comment_author_register_date, video_author_username, video_id, time, content)
VALUES ('mariasouza', 'Maria Souza', 'maria.souza@example.com', '2023-05-12 12:34:56.789', 'joaosilva',
        2a949560-77bb-4f85-b604-1d4c694f3bd6, '2023-10-23 18:22:19.000', 'Comentário da Maria no vídeo do João');
INSERT INTO COMMENT_BY_AUTHOR (comment_author_username, comment_author_name, comment_author_email,
                               comment_author_register_date, video_author_username, video_id, time, content)
VALUES ('carlospereira', 'Carlos Pereira', 'carlos.pereira@example.com', '2022-09-30 09:08:07.654', 'mariasouza',
        db72a1e5-c706-41ba-85b1-198e6f9061f4, '2023-05-12 15:01:00.000', 'Comentário do Carlos no vídeo da Maria');
INSERT INTO COMMENT_BY_AUTHOR (comment_author_username, comment_author_name, comment_author_email,
                               comment_author_register_date, video_author_username, video_id, time, content)
VALUES ('anacosta', 'Ana Costa', 'ana.costa@example.com', '2022-12-31 23:59:59.999', 'joaosilva',
        2a949560-77bb-4f85-b604-1d4c694f3bd6, '2023-10-21 19:45:29.000', 'Comentário da Ana no vídeo do João');
INSERT INTO COMMENT_BY_AUTHOR (comment_author_username, comment_author_name, comment_author_email,
                               comment_author_register_date, video_author_username, video_id, time, content)
VALUES ('anacosta', 'Ana Costa', 'ana.costa@example.com', '2022-12-31 23:59:59.999', 'mariasouza',
        db72a1e5-c706-41ba-85b1-198e6f9061f4, '2023-05-12 15:01:30.000', 'Comentário da Ana no vídeo da Maria');
INSERT INTO COMMENT_BY_AUTHOR (comment_author_username, comment_author_name, comment_author_email,
                               comment_author_register_date, video_author_username, video_id, time, content)
VALUES ('ricardofernandes', 'Ricardo Fernandes', 'ricardo.fernandes@example.com', '2022-01-01 00:00:00.000',
        'mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4, '2023-05-12 15:30:00.000',
        'Comentário do Ricardo no vídeo da Maria');
INSERT INTO COMMENT_BY_AUTHOR (comment_author_username, comment_author_name, comment_author_email,
                               comment_author_register_date, video_author_username, video_id, time, content)
VALUES ('beatrizoliveira', 'Beatriz Oliveira', 'beatriz.oliveira@example.com', '2022-02-05 01:02:03.004', 'joaosilva',
        2a949560-77bb-4f85-b604-1d4c694f3bd6, '2023-10-22 23:45:29.000', 'Comentário da Beatriz no vídeo do João');
INSERT INTO COMMENT_BY_AUTHOR (comment_author_username, comment_author_name, comment_author_email,
                               comment_author_register_date, video_author_username, video_id, time, content)
VALUES ('pedromartins', 'Pedro Martins', 'pedro.martins@example.com', '2023-03-04 05:06:07.008', 'mariasouza',
        db72a1e5-c706-41ba-85b1-198e6f9061f4, '2023-05-12 17:23:58.000', 'Comentário do Pedro no vídeo da Maria');
INSERT INTO COMMENT_BY_AUTHOR (comment_author_username, comment_author_name, comment_author_email,
                               comment_author_register_date, video_author_username, video_id, time, content)
VALUES ('catarinarodrigues', 'Catarina Rodrigues', 'catarina.rodrigues@example.com', '2023-02-03 04:05:06.007',
        'joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6, '2023-10-21 23:11:29.000',
        'Comentário da Catarina no vídeo do João');
INSERT INTO COMMENT_BY_AUTHOR (comment_author_username, comment_author_name, comment_author_email,
                               comment_author_register_date, video_author_username, video_id, time, content)
VALUES ('ruialmeida', 'Rui Almeida', 'rui.almeida@example.com', '2023-04-17 18:19:20.021', 'mariasouza',
        db72a1e5-c706-41ba-85b1-198e6f9061f4, '2023-05-12 15:10:23.000', 'Comentário do Rui no vídeo da Maria');
INSERT INTO COMMENT_BY_AUTHOR (comment_author_username, comment_author_name, comment_author_email,
                               comment_author_register_date, video_author_username, video_id, time, content)
VALUES ('margaridacosta', 'Margarida Costa', 'margarida.costa@example.com', '2023-10-16 17:18:19.020', 'joaosilva',
        2a949560-77bb-4f85-b604-1d4c694f3bd6, '2023-10-21 17:30:01.000', 'Comentário da Margarida no vídeo do João');


-- Tabela COMMENT_BY_VIDEO
INSERT INTO COMMENT_BY_VIDEO (author_username, video_id, video_name, video_description, video_tag, video_upload_time,
                              time, content)
VALUES ('joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João',
        {'tag1', 'tag2'}, '2023-10-21 17:22:19.000', '2023-10-23 18:22:19.000', 'Comentário da Maria no vídeo do João');
INSERT INTO COMMENT_BY_VIDEO (author_username, video_id, video_name, video_description, video_tag, video_upload_time,
                              time, content)
VALUES ('joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João',
        {'tag1', 'tag2'}, '2023-10-21 17:22:19.000', '2023-10-21 19:45:29.000', 'Comentário da Ana no vídeo do João');
INSERT INTO COMMENT_BY_VIDEO (author_username, video_id, video_name, video_description, video_tag, video_upload_time,
                              time, content)
VALUES ('joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João',
        {'tag1', 'tag2'}, '2023-10-21 17:22:19.000', '2023-10-22 23:45:29.000',
        'Comentário da Beatriz no vídeo do João');
INSERT INTO COMMENT_BY_VIDEO (author_username, video_id, video_name, video_description, video_tag, video_upload_time,
                              time, content)
VALUES ('joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João',
        {'tag1', 'tag2'}, '2023-10-21 17:22:19.000', '2023-10-21 23:11:29.000',
        'Comentário da Catarina no vídeo do João');
INSERT INTO COMMENT_BY_VIDEO (author_username, video_id, video_name, video_description, video_tag, video_upload_time,
                              time, content)
VALUES ('joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João',
        {'tag1', 'tag2'}, '2023-10-21 17:22:19.000', '2023-10-21 17:30:01.000',
        'Comentário da Margarida no vídeo do João');
INSERT INTO COMMENT_BY_VIDEO (author_username, video_id, video_name, video_description, video_tag, video_upload_time,
                              time, content)
VALUES ('mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria',
        {'tag2', 'tag3'}, '2023-05-12 15:00:00.000', '2023-05-15 15:00:00.000', 'Comentário do João no vídeo da Maria');
INSERT INTO COMMENT_BY_VIDEO (author_username, video_id, video_name, video_description, video_tag, video_upload_time,
                              time, content)
VALUES ('mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria',
        {'tag2', 'tag3'}, '2023-05-12 15:00:00.000', '2023-05-12 15:01:00.000',
        'Comentário do Carlos no vídeo da Maria');
INSERT INTO COMMENT_BY_VIDEO (author_username, video_id, video_name, video_description, video_tag, video_upload_time,
                              time, content)
VALUES ('mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria',
        {'tag2', 'tag3'}, '2023-05-12 15:00:00.000', '2023-05-12 15:01:30.000',
        'Comentário da Ana no vídeo da Maria');
INSERT INTO COMMENT_BY_VIDEO (author_username, video_id, video_name, video_description, video_tag, video_upload_time,
                              time, content)
VALUES ('mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria',
        {'tag2', 'tag3'}, '2023-05-12 15:00:00.000', '2023-05-12 15:30:00.000',
        'Comentário do Ricardo no vídeo da Maria');
INSERT INTO COMMENT_BY_VIDEO (author_username, video_id, video_name, video_description, video_tag, video_upload_time,
                              time, content)
VALUES ('mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria',
        {'tag2', 'tag3'}, '2023-05-12 15:00:00.000', '2023-05-12 17:23:58.000',
        'Comentário do Pedro no vídeo da Maria');
INSERT INTO COMMENT_BY_VIDEO (author_username, video_id, video_name, video_description, video_tag, video_upload_time,
                              time, content)
VALUES ('mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria',
        {'tag2', 'tag3'}, '2023-05-12 15:00:00.000', '2023-05-12 15:10:23.000', 'Comentário do Rui no vídeo da Maria');


-- Tabela VIDEO_FOLLOWERS
INSERT INTO VIDEO_FOLLOWERS (follower_username, follower_name, follower_email, follower_register_date, author_username,
                             video_id, video_name, video_description, video_tag, video_upload_time)
VALUES ('joaosilva', 'João Silva', 'joao.silva@example.com', '2023-01-31 23:45:12.345', 'mariasouza',
        db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria', {'tag2', 'tag3'},
        '2023-05-12 15:00:00.000');
INSERT INTO VIDEO_FOLLOWERS (follower_username, follower_name, follower_email, follower_register_date, author_username,
                             video_id, video_name, video_description, video_tag, video_upload_time)
VALUES ('mariasouza', 'Maria Souza', 'maria.souza@example.com', '2023-05-12 12:34:56.789', 'joaosilva',
        2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João', {'tag1', 'tag2'},
        '2023-10-21 17:22:19.000');
INSERT INTO VIDEO_FOLLOWERS (follower_username, follower_name, follower_email, follower_register_date, author_username,
                             video_id, video_name, video_description, video_tag, video_upload_time)
VALUES ('carlospereira', 'Carlos Pereira', 'carlos.pereira@example.com', '2022-09-30 09:08:07.654', 'mariasouza',
        db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria', {'tag2', 'tag3'},
        '2023-05-12 15:00:00.000');
INSERT INTO VIDEO_FOLLOWERS (follower_username, follower_name, follower_email, follower_register_date, author_username,
                             video_id, video_name, video_description, video_tag, video_upload_time)
VALUES ('anacosta', 'Ana Costa', 'ana.costa@example.com', '2022-12-31 23:59:59.999', 'carlospereira',
        86aafb44-6fc7-488e-85ba-8631fe66a97c, 'Vídeo do Carlos', 'Descrição do vídeo do Carlos',
        {'tag2', 'tag3', 'tag4'},
        '2022-10-01 00:00:00.000');
INSERT INTO VIDEO_FOLLOWERS (follower_username, follower_name, follower_email, follower_register_date, author_username,
                             video_id, video_name, video_description, video_tag, video_upload_time)
VALUES ('ricardofernandes', 'Ricardo Fernandes', 'ricardo.fernandes@example.com', '2022-01-01 00:00:00.000',
        'carlospereira', 86aafb44-6fc7-488e-85ba-8631fe66a97c, 'Vídeo do Carlos', 'Descrição do vídeo do Carlos',
        {'tag2', 'tag3', 'tag4'}, '2022-10-01 00:00:00.000');
INSERT INTO VIDEO_FOLLOWERS (follower_username, follower_name, follower_email, follower_register_date, author_username,
                             video_id, video_name, video_description, video_tag, video_upload_time)
VALUES ('beatrizoliveira', 'Beatriz Oliveira', 'beatriz.oliveira@example.com', '2022-02-05 01:02:03.004', 'anacosta',
        8fc80794-fb45-4de7-ad65-c691c2b159eb, 'Vídeo da Ana', 'Descrição do vídeo da Ana', {'tag1'},
        '2023-01-10 12:23:34.223');
INSERT INTO VIDEO_FOLLOWERS (follower_username, follower_name, follower_email, follower_register_date, author_username,
                             video_id, video_name, video_description, video_tag, video_upload_time)
VALUES ('pedromartins', 'Pedro Martins', 'pedro.martins@example.com', '2023-03-04 05:06:07.008', 'beatrizoliveira',
        cf54e676-4aaf-40e5-bd3a-b3a842a893f4, 'Vídeo da Beatriz', 'Descrição do vídeo da Beatriz', {'tag1', 'tag3'},
        '2023-03-24 16:45:22.345');
INSERT INTO VIDEO_FOLLOWERS (follower_username, follower_name, follower_email, follower_register_date, author_username,
                             video_id, video_name, video_description, video_tag, video_upload_time)
VALUES ('catarinarodrigues', 'Catarina Rodrigues', 'catarina.rodrigues@example.com', '2023-02-03 04:05:06.007',
        'joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João',
        {'tag1', 'tag2'}, '2023-10-21 17:22:19.000');
INSERT INTO VIDEO_FOLLOWERS (follower_username, follower_name, follower_email, follower_register_date, author_username,
                             video_id, video_name, video_description, video_tag, video_upload_time)
VALUES ('ruialmeida', 'Rui Almeida', 'rui.almeida@example.com', '2023-04-17 18:19:20.021', 'margaridacosta',
        88e52b88-5d06-4621-a71b-4405252fab4a, 'Vídeo da Margarida', 'Descrição do vídeo da Margarida',
        {'tag1', 'tag4'}, '2023-11-17 12:04:24.456');
INSERT INTO VIDEO_FOLLOWERS (follower_username, follower_name, follower_email, follower_register_date, author_username,
                             video_id, video_name, video_description, video_tag, video_upload_time)
VALUES ('margaridacosta', 'Margarida Costa', 'margarida.costa@example.com', '2023-10-16 17:18:19.020', 'joaosilva',
        2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João', {'tag1', 'tag2'},
        '2023-10-21 17:22:19.000');


-- Tabela EVENT
INSERT INTO EVENT (username, name, email, register_date, author_username, video_id, video_name, video_description,
                   video_tag, video_upload_time, event, time, video_time)
VALUES ('carlospereira', 'Carlos Pereira', 'carlos.pereira@example.com', '2022-09-30 09:08:07.654', 'mariasouza',
        db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria', {'tag2', 'tag3'},
        '2023-05-12 15:00:00.000', 'play', '2023-05-13 15:00:01.000', 0);
INSERT INTO EVENT (username, name, email, register_date, author_username, video_id, video_name, video_description,
                   video_tag, video_upload_time, event, time, video_time)
VALUES ('carlospereira', 'Carlos Pereira', 'carlos.pereira@example.com', '2022-09-30 09:08:07.654', 'mariasouza',
        db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria', {'tag2', 'tag3'},
        '2023-05-12 15:00:00.000', 'pause', '2023-05-13 15:00:04.500', 3.5);
INSERT INTO EVENT (username, name, email, register_date, author_username, video_id, video_name, video_description,
                   video_tag, video_upload_time, event, time, video_time)
VALUES ('carlospereira', 'Carlos Pereira', 'carlos.pereira@example.com', '2022-09-30 09:08:07.654', 'mariasouza',
        db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria', {'tag2', 'tag3'},
        '2023-05-12 15:00:00.000', 'play', '2023-05-13 15:00:05.000', 3.5);
INSERT INTO EVENT (username, name, email, register_date, author_username, video_id, video_name, video_description,
                   video_tag, video_upload_time, event, time, video_time)
VALUES ('carlospereira', 'Carlos Pereira', 'carlos.pereira@example.com', '2022-09-30 09:08:07.654', 'mariasouza',
        db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria', {'tag2', 'tag3'},
        '2023-05-12 15:00:00.000', 'stop', '2023-05-13 15:02:30.000', 145);

INSERT INTO EVENT (username, name, email, register_date, author_username, video_id, video_name, video_description,
                   video_tag, video_upload_time, event, time, video_time)
VALUES ('anacosta', 'Ana Costa', 'ana.costa@example.com', '2022-12-31 23:59:59.999', 'joaosilva',
        2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João', {'tag1', 'tag2'},
        '2023-10-21 17:22:19.000', 'play', '2023-10-21 17:25:45.000', 0);
INSERT INTO EVENT (username, name, email, register_date, author_username, video_id, video_name, video_description,
                   video_tag, video_upload_time, event, time, video_time)
VALUES ('anacosta', 'Ana Costa', 'ana.costa@example.com', '2022-12-31 23:59:59.999', 'joaosilva',
        2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João', {'tag1', 'tag2'},
        '2023-10-21 17:22:19.000', 'pause', '2023-10-21 17:25:49.500', 4.5);
INSERT INTO EVENT (username, name, email, register_date, author_username, video_id, video_name, video_description,
                   video_tag, video_upload_time, event, time, video_time)
VALUES ('anacosta', 'Ana Costa', 'ana.costa@example.com', '2022-12-31 23:59:59.999', 'joaosilva',
        2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João', {'tag1', 'tag2'},
        '2023-10-21 17:22:19.000', 'play', '2023-10-21 17:25:50.550', 4.5);
INSERT INTO EVENT (username, name, email, register_date, author_username, video_id, video_name, video_description,
                   video_tag, video_upload_time, event, time, video_time)
VALUES ('anacosta', 'Ana Costa', 'ana.costa@example.com', '2022-12-31 23:59:59.999', 'joaosilva',
        2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João', {'tag1', 'tag2'},
        '2023-10-21 17:22:19.000', 'pause', '2023-10-21 17:25:59.550', 13.55);
INSERT INTO EVENT (username, name, email, register_date, author_username, video_id, video_name, video_description,
                   video_tag, video_upload_time, event, time, video_time)
VALUES ('anacosta', 'Ana Costa', 'ana.costa@example.com', '2022-12-31 23:59:59.999', 'joaosilva',
        2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João', {'tag1', 'tag2'},
        '2023-10-21 17:22:19.000', 'play', '2023-10-21 17:26:00.550', 13.55);
INSERT INTO EVENT (username, name, email, register_date, author_username, video_id, video_name, video_description,
                   video_tag, video_upload_time, event, time, video_time)
VALUES ('anacosta', 'Ana Costa', 'ana.costa@example.com', '2022-12-31 23:59:59.999', 'joaosilva',
        2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João', {'tag1', 'tag2'},
        '2023-10-21 17:22:19.000', 'stop', '2023-10-21 17:30:00.000', 253);


-- Tabela RATING
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João',
        {'tag1', 'tag2'}, '2023-10-21 17:22:19.000', 4342400f-037d-4ecb-bb96-5e958942645d, 5);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João',
        {'tag1', 'tag2'}, '2023-10-21 17:22:19.000', 9e16e7ab-f33f-4731-8b61-bc901a559df0, 4);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João',
        {'tag1', 'tag2'}, '2023-10-21 17:22:19.000', e1257cfa-147f-4e4a-8326-43a8d0654e2e, 5);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria',
        {'tag2', 'tag3'}, '2023-05-12 15:00:00.000', eda5e5f7-9cdb-4645-b83b-7165e21f239a, 4);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria',
        {'tag2', 'tag3'}, '2023-05-12 15:00:00.000', 74c826c6-294f-49d4-be99-f8e12a53b0d1, 5);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria',
        {'tag2', 'tag3'}, '2023-05-12 15:00:00.000', 22076a8d-56d4-4b15-a416-a7a72038677c, 4);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('carlospereira', 86aafb44-6fc7-488e-85ba-8631fe66a97c, 'Vídeo do Carlos', 'Descrição do vídeo do Carlos',
        {'tag2', 'tag3', 'tag4'}, '2022-10-01 00:00:00.000', 576b0c6c-23b0-40c0-813d-fbd76b65fe1e, 3);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('carlospereira', 86aafb44-6fc7-488e-85ba-8631fe66a97c, 'Vídeo do Carlos', 'Descrição do vídeo do Carlos',
        {'tag2', 'tag3', 'tag4'}, '2022-10-01 00:00:00.000', 5c775e22-e3f5-4fd2-af76-945cc81a47fd, 2);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('anacosta', 8fc80794-fb45-4de7-ad65-c691c2b159eb, 'Vídeo da Ana', 'Descrição do vídeo da Ana',
        {'tag1'}, '2023-01-10 12:23:34.223', 222a97c3-86fd-49ba-83d6-bdd0ce5f55c9, 5);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('ricardofernandes', 5576245c-f401-4688-a295-95d012e32000, 'Vídeo do Ricardo', 'Descrição do vídeo do Ricardo',
        {'tag3', 'tag4'}, '2022-01-02 00:00:00.000', 9424d889-79c3-436f-b6e7-01e50583cd79, 4);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('ricardofernandes', 5576245c-f401-4688-a295-95d012e32000, 'Vídeo do Ricardo', 'Descrição do vídeo do Ricardo',
        {'tag3', 'tag4'}, '2022-01-02 00:00:00.000', fe426108-c457-484e-99e0-397ae8e79a6b, 4);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('beatrizoliveira', cf54e676-4aaf-40e5-bd3a-b3a842a893f4, 'Vídeo da Beatriz', 'Descrição do vídeo da Beatriz',
        {'tag1', 'tag3'}, '2023-03-24 16:45:22.345', 4d18a815-5527-4918-bf34-1ba94a9b877f, 5);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('beatrizoliveira', cf54e676-4aaf-40e5-bd3a-b3a842a893f4, 'Vídeo da Beatriz', 'Descrição do vídeo da Beatriz',
        {'tag1', 'tag3'}, '2023-03-24 16:45:22.345', df572d22-0e45-4701-82fb-2eccee8683da, 5);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('beatrizoliveira', cf54e676-4aaf-40e5-bd3a-b3a842a893f4, 'Vídeo da Beatriz', 'Descrição do vídeo da Beatriz',
        {'tag1', 'tag3'}, '2023-03-24 16:45:22.345', 93030e07-4d3e-4940-a945-1760fee672a6, 4);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('pedromartins', 97a647e1-cb0f-4698-83ee-5415320c4591, 'Vídeo do Pedro', 'Descrição do vídeo do Pedro',
        {'tag2', 'tag3'}, '2023-09-01 08:34:27.000', 8a065fd4-45f1-419e-a009-5bce2e298372, 4);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('pedromartins', 97a647e1-cb0f-4698-83ee-5415320c4591, 'Vídeo do Pedro', 'Descrição do vídeo do Pedro',
        {'tag2', 'tag3'}, '2023-09-01 08:34:27.000', 67eaa9ee-c147-49f3-9bac-d7b9f5073965, 3);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('pedromartins', 97a647e1-cb0f-4698-83ee-5415320c4591, 'Vídeo do Pedro', 'Descrição do vídeo do Pedro',
        {'tag2', 'tag3'}, '2023-09-01 08:34:27.000', 82d0c5ee-b06d-44bc-a2e6-13a156545889, 5);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('pedromartins', 97a647e1-cb0f-4698-83ee-5415320c4591, 'Vídeo do Pedro', 'Descrição do vídeo do Pedro',
        {'tag2', 'tag3'}, '2023-09-01 08:34:27.000', 9952abae-0ac8-4577-9b6f-e855d492191b, 4);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('catarinarodrigues', 0d5a8fbd-7b6c-4715-ac71-9ce9a75b9352, 'Vídeo da Catarina',
        'Descrição do vídeo da Catarina', {'tag4'}, '2023-02-04 15:00:00.345', 2dd0bfea-ece9-46e0-8c62-e1f48c074d9e, 3);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('catarinarodrigues', 0d5a8fbd-7b6c-4715-ac71-9ce9a75b9352, 'Vídeo da Catarina',
        'Descrição do vídeo da Catarina', {'tag4'}, '2023-02-04 15:00:00.345', b8e2604b-1166-4775-b44c-082aea5b0fbe, 1);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('ruialmeida', c553d808-ea99-41cb-837e-c35a199ed3ed, 'Vídeo do Rui', 'Descrição do vídeo do Rui',
        {'tag2', 'tag4'}, '2023-06-30 11:00:00.001', da904fdb-1f26-49ed-866e-3caffbca7e11, 4);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('ruialmeida', c553d808-ea99-41cb-837e-c35a199ed3ed, 'Vídeo do Rui', 'Descrição do vídeo do Rui',
        {'tag2', 'tag4'}, '2023-06-30 11:00:00.001', 7e8bc30a-bbf3-4332-8ccb-4a58369d6970, 2);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating_id,
                    rating)
VALUES ('margaridacosta', 88e52b88-5d06-4621-a71b-4405252fab4a, 'Vídeo da Margarida', 'Descrição do vídeo da Margarida',
        {'tag1', 'tag4'}, '2023-11-17 12:04:24.456', b96d6e23-7e9f-4f5d-aaf5-f08abf439438, 2);

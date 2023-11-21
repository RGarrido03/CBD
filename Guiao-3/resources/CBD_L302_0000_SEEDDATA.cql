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
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João',
        {'tag1', 'tag2'}, '2023-10-21 17:22:19.000', 5);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João',
        {'tag1', 'tag2'}, '2023-10-21 17:22:19.000', 4);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('joaosilva', 2a949560-77bb-4f85-b604-1d4c694f3bd6, 'Vídeo do João', 'Descrição do vídeo do João',
        {'tag1', 'tag2'}, '2023-10-21 17:22:19.000', 5);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria',
        {'tag2', 'tag3'}, '2023-05-12 15:00:00.000', 4);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria',
        {'tag2', 'tag3'}, '2023-05-12 15:00:00.000', 5);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('mariasouza', db72a1e5-c706-41ba-85b1-198e6f9061f4, 'Vídeo da Maria', 'Descrição do vídeo da Maria',
        {'tag2', 'tag3'}, '2023-05-12 15:00:00.000', 4);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('carlospereira', 86aafb44-6fc7-488e-85ba-8631fe66a97c, 'Vídeo do Carlos', 'Descrição do vídeo do Carlos',
        {'tag2', 'tag3', 'tag4'}, '2022-10-01 00:00:00.000', 3);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('carlospereira', 86aafb44-6fc7-488e-85ba-8631fe66a97c, 'Vídeo do Carlos', 'Descrição do vídeo do Carlos',
        {'tag2', 'tag3', 'tag4'}, '2022-10-01 00:00:00.000', 2);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('anacosta', 8fc80794-fb45-4de7-ad65-c691c2b159eb, 'Vídeo da Ana', 'Descrição do vídeo da Ana',
        {'tag1'}, '2023-01-10 12:23:34.223', 5);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('ricardofernandes', 5576245c-f401-4688-a295-95d012e32000, 'Vídeo do Ricardo', 'Descrição do vídeo do Ricardo',
        {'tag3', 'tag4'}, '2022-01-02 00:00:00.000', 4);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('ricardofernandes', 5576245c-f401-4688-a295-95d012e32000, 'Vídeo do Ricardo', 'Descrição do vídeo do Ricardo',
        {'tag3', 'tag4'}, '2022-01-02 00:00:00.000', 4);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('beatrizoliveira', cf54e676-4aaf-40e5-bd3a-b3a842a893f4, 'Vídeo da Beatriz', 'Descrição do vídeo da Beatriz',
        {'tag1', 'tag3'}, '2023-03-24 16:45:22.345', 5);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('beatrizoliveira', cf54e676-4aaf-40e5-bd3a-b3a842a893f4, 'Vídeo da Beatriz', 'Descrição do vídeo da Beatriz',
        {'tag1', 'tag3'}, '2023-03-24 16:45:22.345', 5);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('beatrizoliveira', cf54e676-4aaf-40e5-bd3a-b3a842a893f4, 'Vídeo da Beatriz', 'Descrição do vídeo da Beatriz',
        {'tag1', 'tag3'}, '2023-03-24 16:45:22.345', 4);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('pedromartins', 97a647e1-cb0f-4698-83ee-5415320c4591, 'Vídeo do Pedro', 'Descrição do vídeo do Pedro',
        {'tag2', 'tag3'}, '2023-09-01 08:34:27.000', 4);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('pedromartins', 97a647e1-cb0f-4698-83ee-5415320c4591, 'Vídeo do Pedro', 'Descrição do vídeo do Pedro',
        {'tag2', 'tag3'}, '2023-09-01 08:34:27.000', 3);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('pedromartins', 97a647e1-cb0f-4698-83ee-5415320c4591, 'Vídeo do Pedro', 'Descrição do vídeo do Pedro',
        {'tag2', 'tag3'}, '2023-09-01 08:34:27.000', 5);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('pedromartins', 97a647e1-cb0f-4698-83ee-5415320c4591, 'Vídeo do Pedro', 'Descrição do vídeo do Pedro',
        {'tag2', 'tag3'}, '2023-09-01 08:34:27.000', 4);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('catarinarodrigues', 0d5a8fbd-7b6c-4715-ac71-9ce9a75b9352, 'Vídeo da Catarina',
        'Descrição do vídeo da Catarina', {'tag4'}, '2023-02-04 15:00:00.345', 3);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('catarinarodrigues', 0d5a8fbd-7b6c-4715-ac71-9ce9a75b9352, 'Vídeo da Catarina',
        'Descrição do vídeo da Catarina', {'tag4'}, '2023-02-04 15:00:00.345', 1);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('ruialmeida', c553d808-ea99-41cb-837e-c35a199ed3ed, 'Vídeo do Rui', 'Descrição do vídeo do Rui',
        {'tag2', 'tag4'}, '2023-06-30 11:00:00.001', 4);
INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('ruialmeida', c553d808-ea99-41cb-837e-c35a199ed3ed, 'Vídeo do Rui', 'Descrição do vídeo do Rui',
        {'tag2', 'tag4'}, '2023-06-30 11:00:00.001', 2);

INSERT INTO RATING (author_username, video_id, video_name, video_description, video_tag, video_upload_time, rating)
VALUES ('margaridacosta', 88e52b88-5d06-4621-a71b-4405252fab4a, 'Vídeo da Margarida',
        'Descrição do vídeo da Margarida', {'tag1', 'tag4'}, '2023-11-17 12:04:24.456', 5);

-- Keyspace
DROP KEYSPACE IF EXISTS CBD_LAB3_ex2;
CREATE KEYSPACE CBD_LAB3_ex2 WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 1};
USE CBD_LAB3_ex2;


CREATE TABLE USER
(
    username      VARCHAR PRIMARY KEY,
    name          VARCHAR,
    email         VARCHAR,
    register_date TIMESTAMP
);


CREATE TABLE VIDEO
(
    -- User denormalization
    author_username VARCHAR,

    id              UUID,
    name            VARCHAR,
    description     VARCHAR,
    tag             SET<VARCHAR>,
    upload_time     TIMESTAMP,
    PRIMARY KEY ( author_username, id, upload_time ),
);


CREATE TABLE VIDEO_BY_TAG
(
    tag             VARCHAR,
    author_username VARCHAR,
    video_id        UUID,

    PRIMARY KEY ( tag, author_username, video_id )
);


CREATE TABLE COMMENT_BY_AUTHOR
(
    -- User denormalization
    comment_author_username      VARCHAR,
    comment_author_name          VARCHAR,
    comment_author_email         VARCHAR,
    comment_author_register_date TIMESTAMP,

    video_author_username        VARCHAR,
    video_id                     UUID,

    time                         TIMESTAMP,
    content                      VARCHAR,

    PRIMARY KEY ( comment_author_username, time )
) WITH CLUSTERING ORDER BY (time desc);


CREATE TABLE COMMENT_BY_VIDEO
(
    -- A
    author_username   VARCHAR,

    -- Video denormalization
    video_id          UUID,
    video_name        VARCHAR,
    video_description VARCHAR,
    video_tag         SET<VARCHAR>,
    video_upload_time TIMESTAMP,

    time              TIMESTAMP,
    content           VARCHAR,

    PRIMARY KEY ( (author_username, video_id), time )
) WITH CLUSTERING ORDER BY (time desc);


CREATE TABLE VIDEO_FOLLOWERS
(
    -- User denormalization
    follower_username      VARCHAR,
    follower_name          VARCHAR,
    follower_email         VARCHAR,
    follower_register_date TIMESTAMP,

    -- Video denormalization
    author_username        VARCHAR,
    video_id               UUID,
    video_name             VARCHAR,
    video_description      VARCHAR,
    video_tag              SET<VARCHAR>,
    video_upload_time      TIMESTAMP,

    PRIMARY KEY ( (author_username, video_id), follower_username )
);


CREATE TABLE EVENT
(
    -- User denormalization
    username          VARCHAR,
    name              VARCHAR,
    email             VARCHAR,
    register_date     TIMESTAMP,

    -- Video denormalization
    author_username   VARCHAR,
    video_id          UUID,
    video_name        VARCHAR,
    video_description VARCHAR,
    video_tag         SET<VARCHAR>,
    video_upload_time TIMESTAMP,

    event             VARCHAR,
    time              TIMESTAMP,
    video_time        DOUBLE,

    PRIMARY KEY ( (author_username, video_id), username, time )
) WITH CLUSTERING ORDER BY (username asc, time desc);


CREATE TABLE RATING
(
    -- Video denormalization
    author_username   VARCHAR,
    video_id          UUID,
    video_name        VARCHAR,
    video_description VARCHAR,
    video_tag         SET<VARCHAR>,
    video_upload_time TIMESTAMP,

    rating_id         UUID,
    rating            INT,
    PRIMARY KEY ( (author_username, video_id), rating_id )
);
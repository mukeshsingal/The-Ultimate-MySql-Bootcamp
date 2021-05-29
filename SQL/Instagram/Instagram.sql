-- Main features

-- ** MAIN ENTITES

-- USER
-- PHOTOS
-- LIKES
-- HASH TAGS
-- COMMENTS
-- FOLLOWERS AND FOLLOWING

-- USERS
-- -> id 
-- -> username
-- -> created_at

CREATE TABLE USERS (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
)

INSERT INTO USERS (username) 
VALUES ('BLUE'),
       ('MUKESH');


-- PHOTOS
-- -> id
-- -> image_url
-- -> user_id
-- -> created_at

CREATE TABLE PHOTOS (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
    user_id INTEGER NOT NULL,
    FOREIGN KEY user_id REFERENCES USERS(id)
);


-- Comments
-- -> id
-- -> comment_text
-- -> user_id
-- -> photo_id
-- -> created_at

CREATE TABLE COMMENTS (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    FOREIGN KEY user_id REFERENCES USERS(id),
    FOREIGN KEY photo_id REFERENCES PHOTOS(id)
);

-- Likes
-- -> id
-- -> user_id
-- -> photo_id
-- -> created_at

CREATE TABLE LIKES (
    created_at TIMESTAMP DEFAULT NOW()
    user_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    FOREIGN KEY user_id REFERENCES USERS(id),
    FOREIGN KEY photo_id REFERENCES PHOTOS(id),
    PRIMARY KEY(user_id, photo_id) 
);

-- Follows
-- -> follower_id
-- -> followee_id
-- -> created_at

CREATE TABLE FOLLOWS (
    created_at TIMESTAMP DEFAULT NOW()
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    FOREIGN KEY follower_id REFERENCES USERS(id),
    FOREIGN KEY followee_id REFERENCES PHOTOS(id),
    PRIMARY KEY(follower_id, followee_id) 
);


-- Tags
-- -> id
-- -> tag_name
-- -> created_at

-- Photo Tags
-- -> tag_id
-- -> photo_id

CREATE TABLE tags (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(255) UNIQUE,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photo_tags (
    photo_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY(photo_id) REFERENCES photos(id),
    FOREIGN KEY(tag_id) REFERENCES tags(id),
    PRIMARY KEY(photo_id, tag_id)
);
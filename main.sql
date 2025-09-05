-- databaseni ochib olamiz
.open "/Users/djumanov/NajotTalim/SN02/lesson40/python-sqlite3/school_db.sqlite3"

-- qaysi db bilan ishlayotganimizni ko'rish
.databases

-- mode
.mode box

-- table yaratish
CREATE TABLE IF NOT EXISTS students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    birth_date DATE NOT NULL,
    parent VARCHAR(128),
    username VARCHAR(128) NOT NULL UNIQUE,
    hashed_password VARCHAR(256) NOT NULL,
    xp INTEGER NOT NULL DEFAULT 0 CHECK(xp >= 0),
    level INTEGER NOT NULL DEFAULT 0 CHECK(level >= 0),

    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP
);

-- barcha table larni korish
.tables

-- tableni korish
.schema students


-- malumot kiritish
INSERT INTO 
    students (first_name, last_name, birth_date, username, hashed_password)
VALUES 
    ('Ali', 'Valiyev', '05.09.2025', 'ali123', 'fjdsifjbsdaiubfu349545798fyds8fgv2873^&&^&'),
    ('Vali', 'Aliyev', '04.09.2025', 'vali123', 'fjdsifjbsdaiubfu349545798fyds8fgv2873^&&^&');

-- hamma studentlarni korish
SELECT
    id, first_name, last_name, birth_date, username, hashed_password
FROM students;

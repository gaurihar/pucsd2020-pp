USE ACL;


CREATE TABLE IF NOT EXISTS user_info (
    user_id                  INT         AUTO_INCREMENT      PRIMARY KEY,
    first_name          VARCHAR(25)    NOT NULL,
    last_name           VARCHAR(25)    NOT NULL,
    username            VARCHAR(25)    NOT NULL,
    email               VARCHAR(64)    NOT NULL UNIQUE,
    password            VARBINARY(128)    NOT NULL,
    is_user_root         TINYINT(1)   NOT NULL DEFAULT 0 ,
    creation_date       DATETIME    DEFAULT CURRENT_TIMESTAMP,
    last_update         DATETIME    DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    updated_by          INT         NOT NULL DEFAULT 0,
    deleted             TINYINT(1)  NOT NULL DEFAULT 0
)ENGINE = INNODB CHARACTER SET=utf8;

CREATE TABLE IF NOT EXISTS groups (
    groups_id            INT         AUTO_INCREMENT      PRIMARY KEY,
    group_name           VARCHAR(50)    NOT NULL,            
    creation_date       DATETIME    DEFAULT CURRENT_TIMESTAMP,
    last_update         DATETIME    DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    updated_by          INT         NOT NULL DEFAULT 0,
    deleted             TINYINT(1)  NOT NULL DEFAULT 0
    
)ENGINE = INNODB CHARACTER SET=utf8;


CREATE TABLE IF NOT EXISTS permission (
    permission_num      INT     PRIMARY KEY,
    permission_info varchar(20)
)ENGINE = INNODB CHARACTER SET=utf8;

CREATE TABLE IF NOT EXISTS resources_type(
resource_type_id INT  PRIMARY KEY,
resource_info varchar(50) NOT NULL
)ENGINE = INNODB CHARACTER SET=utf8;



CREATE TABLE IF NOT EXISTS resources(
    resource_id            INT        AUTO_INCREMENT      PRIMARY KEY,
    resource_type_id    INT    NOT NULL,
    resource_parent INT NOT NULL,
    resource_name    VARCHAR(50)    NOT NULL, 
    resource_path    VARCHAR(100)    NOT NULL, 
    creation_date       DATETIME    DEFAULT CURRENT_TIMESTAMP,
    last_update         DATETIME    DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    updated_by          INT         NOT NULL DEFAULT 0,
    deleted             TINYINT(1)  NOT NULL DEFAULT 0
)ENGINE = INNODB CHARACTER SET=utf8;


CREATE TABLE IF NOT EXISTS user_group (
    groups_id            INT NOT NULL,
    user_id             INT  NOT NULL,
    FOREIGN KEY(user_id) REFERENCES user_info(user_id) ,
    FOREIGN KEY(groups_id) REFERENCES groups(groups_id) ,
    PRIMARY KEY(groups_id,user_id)
)ENGINE = INNODB CHARACTER SET=utf8;

CREATE TABLE IF NOT EXISTS user_permission
(
resource_id INT NOT NULL,
user_id INT NOT NULL,
permission_num INT NOT NULL,
FOREIGN KEY(user_id) REFERENCES user_info(user_id) ,
FOREIGN KEY(resource_id) REFERENCES resources(resource_id),
FOREIGN KEY(permission_num) REFERENCES permission(permission_num) ,
PRIMARY KEY(resource_id,user_id,permission_num)
)ENGINE = INNODB CHARACTER SET=utf8;


CREATE TABLE IF NOT EXISTS group_permission
(
resource_id INT NOT NULL,
groups_id INT  NOT NULL,permission_num INT NOT NULL,
FOREIGN KEY(groups_id) REFERENCES groups(groups_id) ,
FOREIGN KEY(resource_id) REFERENCES resources(resource_id) ,
FOREIGN KEY(permission_num) REFERENCES permission(permission_num),
PRIMARY KEY(resource_id,groups_id,permission_num)
)ENGINE = INNODB CHARACTER SET=utf8;

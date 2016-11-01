

**Database Schema**

**Users**

column name	 |   data type	 |   details
------------|---------------|--------------
id	        |    integer	   |   not null, primary key
username	   |   string	    |  not null, indexed, unique   
email	     |     string	    |  not null, indexed, unique
password_digest|	string	  |    not null
session_token	 | string	    |  not null, indexed, unique

**Reviews**

column name  |   data type  |   details
------------|--------------|---------------
id        |      integer    |   not null, primary key
manga_id   |     integer    |   not null, foreign_key
user_id     |    integer    |   not null, foreign_key
title       |    string     |   not null
body        |    text       |   not null
star_rating   |  integer    |   not_null

**manga**

column name  |   data type  |   details
------------|--------------|-------------
id         |     integer    |   not null, primary key
title       |    string     |   not null
author      |    string      |  not null

**bookshelves**

column name  |   data type  |   details
-------------|-----------------|---------------
id           |   integer    |   not null, primary key
title         |  string     |   not null
user_id     |  integer    |   not null

**manga_bookshelves**

column name   |  data type  |   details
--------------|------------------|-------------------------
manga_id     |   integer    |   not null, foreign_key
bookshelf_id  |  integer    |   not null, foreign_key

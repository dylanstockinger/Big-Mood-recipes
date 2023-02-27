 
 BEGIN;

 DROP TABLE IF EXISTS "user", "recipe";

-- -----------------------------------------------------
-- Table "user"
-- -----------------------------------------------------
 CREATE TABLE "user" (
    "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "email" VARCHAR(128) UNIQUE NOT NULL,
    "username" VARCHAR(128) NOT NULL,
    "password" VARCHAR(128) NOT NULL,
    "is_admin" BOOLEAN NOT NULL DEFAULT FALSE,
    "created_at" timestamptz NOT NULL DEFAULT NOW(),
    "updated_at" timestamptz
 );

-- -----------------------------------------------------
-- Table "Recipe"
-- -----------------------------------------------------
 CREATE TABLE "recipe" (
    "id" INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "title" VARCHAR(128) NOT NULL,
    "ingredients_list" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "steps" TEXT NOT NULL,
    "cooking_time" INT,
    "difficulty" VARCHAR(16),
    "user_id" INT REFERENCES "user"("id"),
    "rate" INT NOT NULL DEFAULT 0,
    "picture" TEXT,
    "type" TEXT NOT NULL,
    "created_at" timestamptz NOT NULL DEFAULT NOW(),
    "updated_at" timestamptz  
    
 );


 COMMIT; 


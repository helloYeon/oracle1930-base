-- PDBへ切り替え
ALTER SESSION SET CONTAINER=helloyeon_test_db;

-- PDB内に新しいユーザーを作成する
CREATE USER helloyeon_test_db_user IDENTIFIED BY "helloyeon_test_db_password";

-- 必要な権限を付与する
GRANT CONNECT, RESOURCE TO helloyeon_test_db_user;
GRANT CREATE SESSION, CREATE TABLE, CREATE VIEW, CREATE PROCEDURE TO helloyeon_test_db_user;

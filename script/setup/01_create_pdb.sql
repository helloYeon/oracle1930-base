-- 新しいPDBの作成
CREATE PLUGGABLE DATABASE helloyeon_test_db
ADMIN USER pdbadmin IDENTIFIED BY pdbpassword
FILE_NAME_CONVERT =
('/opt/oracle/oradata/ORCLCDB/pdbseed',
 '/opt/oracle/oradata/helloyeon_test_db');

-- PDBを開く
ALTER PLUGGABLE DATABASE helloyeon_test_db OPEN;

-- PDBの自動起動設定
ALTER PLUGGABLE DATABASE helloyeon_test_db SAVE STATE;

-- PDB切り替え（これがないと、コンテナ再起動時に「ORA-01109: database not open」が発生）
ALTER SESSION SET CONTAINER=helloyeon_test_db;



CREATE USER 'DBA'@'LOCALHOST' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON *.* TO 'DBA'@'LOCALHOST';
CREATE USER 'CLIENTE'@'LOCALHOST' IDENTIFIED BY '123';
GRANT  INSERT,UPDATE,SELECT ON PANADERIA.PEDIDOS TO 'CLIENTE'@'LOCALHOST';
GRANT  UPDATE,SELECT ON PANADERIA.PERSONAS TO 'CLIENTE'@'LOCALHOST';
CREATE USER 'EMPLEADO'@'LOCALHOST' IDENTIFIED BY '123';
GRANT INSERT,UPDATE,SELECT ON PANADERIA.PEDIDOS TO 'EMPLEADO'@'LOCALHOST';
GRANT INSERT,UPDATE,SELECT ON PANADERIA.CLIENTES TO 'EMPLEADO'@'LOCALHOST';
GRANT INSERT,UPDATE,SELECT ON PANADERIA.PRODUCTOS TO 'EMPLEADO'@'LOCALHOST';
GRANT INSERT,UPDATE,SELECT ON PANADERIA.VENTAS TO 'EMPLEADO'@'LOCALHOST';
GRANT INSERT,UPDATE,SELECT ON PANADERIA.PERSONAS TO 'EMPLEADO'@'LOCALHOST';
GRANT INSERT,UPDATE,SELECT ON PANADERIA.INVENTARIOS TO 'EMPLEADO'@'LOCALHOST';
GRANT INSERT,UPDATE,SELECT ON PANADERIA.PROVEEDORES TO 'EMPLEADO'@'LOCALHOST';
CREATE USER 'ADMIN'@'LOCALHOST' IDENTIFIED BY '123';
GRANT  ALL PRIVILEGES ON PANADERIA.* TO 'ADMIN'@'LOCALHOST';










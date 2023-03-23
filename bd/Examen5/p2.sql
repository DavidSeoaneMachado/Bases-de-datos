INSERT INTO acs_objects (object_id, title, package_id, context_id, creation_user, modifying_ip)
VALUES (45, 'trueno', 56, 55, 22, '200.200.0.1'), (23, 'ejemplo2', 4, 2, 21, '200.200.0.2');


INSERT INTO acs_objects (object_id, object_type, title, package_id, context_id, security_inherit_p, creation_user,  creation_ip,  modifying_user, modifying_ip)
VALUES (12, 'dia', 'ejemplo', 3, 23, false, 12, '200.200.0.1', 1, '200.200.0.2'), (21, 'noche', 'ejemplo2', 25, 4, true, 12, '200.200.0.1', 1, '200.200.0.2');



UPDATE acs_objects SET title = 'Ejemplo de título' WHERE object_id > 100;


DELETE FROM acs_objects WHERE modifying_ip = '200.200.200.200';



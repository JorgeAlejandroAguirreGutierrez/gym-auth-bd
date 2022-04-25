SELECT setval('auth_sequence', COALESCE((SELECT MAX(id)+1 FROM auth), 1), false);
SELECT setval('empresa_sequence', COALESCE((SELECT MAX(id)+1 FROM auth), 1), false);
SELECT setval('mensaje_sequence', COALESCE((SELECT MAX(id)+1 FROM auth), 1), false);
SELECT setval('parametro_sequence', COALESCE((SELECT MAX(id)+1 FROM auth), 1), false);
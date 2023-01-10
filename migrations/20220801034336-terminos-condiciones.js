'use strict';
const fs = require('fs');
var path = require('path');
require('dotenv').config();

var dbm;
var type;
var seed;

/**
  * We receive the dbmigrate dependency from dbmigrate initially.
  * This enables us to not have to rely on NODE_PATH.
  */
exports.setup = function(options, seedLink) {
  dbm = options.dbmigrate;
  type = dbm.dataType;
  seed = seedLink;
};

exports.up = function(db) {
  console.log('Iniciando Migracion........');
  try {
	  db.runSql(`
	    DO $$ DECLARE
	    BEGIN
        ALTER TABLE auth ADD termino_condicion boolean;
	    END $$;
	  `);
	  return db.runSql('COMMIT');
   } catch (err) {
    console.error('Fail......');
    throw err;
  }
};

exports.down = function(db) {
  console.log('Iniciando Delete........');
  try {
	  db.runSql(`
	    DO $$ DECLARE
	    BEGIN
        ALTER TABLE auth DROP COLUMN termino_condicion;
	    END $$;
	  `);
	  return db.runSql('COMMIT');
   } catch (err) {
    console.error('Fail......');
    throw err;
  }
};

exports._meta = {
  "version": 1
};


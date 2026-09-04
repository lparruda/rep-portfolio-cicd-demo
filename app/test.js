const assert = require('assert');
const app = require('./app');

assert.strictEqual(typeof app, 'function', 'App deve ser uma função Express');
console.log('Testes passaram com sucesso!');
process.exit(0);

const config = {
    uname: 'root',
    upass: '', //leave it blank for windows
    port: 3306, //windows 3306 // mac 8889
    host: 'localhost',
    db: 'db_thermosecurity'
}

// make this a public file our app can read
module.exports = config;
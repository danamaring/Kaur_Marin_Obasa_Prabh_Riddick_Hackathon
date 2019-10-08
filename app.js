const express = require('express');
const path = require('path'); // path lets us avigate the file system / folders
const hbs = require('hbs');

//require the sql connection file
const sql = require('./utils/sql');

//heroku assigns a port when it deploys via the process (environment variables - comming soon)
// locally this will run @ port 3000; remotely it'll run wherever heroku tells it to run
const port = process.env.PORT || 3000; // a double pipe means "or"


const app = express();

app.use(express.static('public'));

//tell express to use the handlebars engine to render data
app.set('view engine', 'hbs');

// tell express to use the views folder to find its templates
app.set('views', __dirname + '/views');

// a forward slash is the home route (same as index.html)
app.get('/', (req, res) => {
  console.log('at the home route');

  //res.sendFile(path.join(__dirname + '/views/index.html'));

//--DB STUFF STARTS HERE

  sql.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

    let query = `SELECT * FROM tbl_alexa, tbl_capabilities, tbl_features, tbl_footer, tbl_header, tbl_packaging, tbl_recognition, tbl_security`;

    sql.query(query, (err, rows) => {
      connection.release();

      if (err) { return console.log(err.message) }

      console.log(rows);

      res.render('layout', rows[0])
    })
  })
})
//----DB STUFF ENDS


app.listen(port, () => {
  console.log(`Server running at ${port}`);
});
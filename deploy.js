// copy dist files
const fs = require('fs-extra');
 
if( fs.existsSync('dist') ){
  //fs.removeSync('dist');
}
const files_and_folders_to_deploy = ["index.html", "images", "css", "js", "zdrojaky"];

const files_copying = files_and_folders_to_deploy.map(f => fs.copy(f, 'dist/'+f));

Promise.all(files_copying).then(
  () => {
    // config with ftp settings
    const configFile = require('./config/ftp_credentials.json');

    console.log(__dirname + '/dist');

    var FtpDeploy = require('ftp-deploy');
    var ftpDeploy = new FtpDeploy();
     
    var config = {
        user: configFile.user,                   
        password: configFile.password,           
        host: configFile.host,
        port: configFile.port,
        localRoot: __dirname + '/dist',
        remoteRoot: configFile.path,
        include: ['*', '**/*'],
        exclude: [],
        deleteRemote: true              // delete existing files at destination before uploading
    }

 
     
    // use with promises
    ftpDeploy.deploy(config)
        .then(res => console.log('finished'))
        .catch(err => console.log(err))

    
    
  },
  (err) => console.log(err) 
);


console.log("deploying started");
// copy dist files
const fs = require('fs-extra');

const files_and_folders_to_deploy = ["index.html", "images", "css", "js", "zdrojaky"];

const files_copying = files_and_folders_to_deploy.map(f => fs.copy(f, 'dist/'+f));

Promise.all(files_copying).then(
  () => {
    console.log("copied to dist");
    var FtpDeploy = require('ftp-deploy');
    var ftpDeploy = new FtpDeploy();
     
    var config = {
        user: process.env.FTP_USERNAME,                   
        password: process.env.FTP_PASSWORD,           
        host: process.env.FTP_HOST,
        port: process.env.FTP_PORT,
        localRoot: __dirname + '/dist',
        remoteRoot: process.env.FTP_PATH,
        include: ['*', '**/*'],
        exclude: [],
        // deleteRemote: true              // delete existing files at destination before uploading
    }
 
     
    // use with promises
    ftpDeploy.deploy(config)
        .then(res => { console.log("finished"); fs.removeSync('dist'); console.log('finished')})
        .catch(err => console.log(err))

    ftpDeploy.on('upload-error', function (data) {
        console.log(data.err); // data will also include filename, relativePath, and other goodies
    });
    
  },
  (err) => console.log(err) 
);


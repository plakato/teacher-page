const fs = require('fs-extra');




fs.readdirSync('zdrojaky').filter(name=> !name.match(/.*.html/)).forEach(dateFold => {
  let zdrojaky = [];

  fs.readdirSync('zdrojaky/'+dateFold).filter(name => name.match(/.*.lpr/)).forEach(sourceFile => {
    zdrojaky.push(fs.readFileSync('zdrojaky/' + dateFold + '/' + sourceFile).toString());
  });

  fs.writeFileSync('zdrojaky/' + dateFold + '.html',  getZdrojakyTemplate(zdrojaky));

});



function getZdrojakyTemplate(zdrojaky) {

  zdrojaky = zdrojaky.map(zdrojak => {
    return `
    <pre class="line-numbers">
      <code class="language-pascal">${escapeHtml(zdrojak)}</code>
    </pre>
    `;
  });

  return `
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link  rel="stylesheet" href="../css/style.css" />
    <title>Zdrojáky 15. 10. 2018</title>
    <style>code{display: block}</style>
  </head>
  <body>
    ${zdrojaky.join(' ')}
    <script src="https://cdn.jsdelivr.net/npm/clipboard@2/dist/clipboard.min.js"></script>
    <script src="../js/prism.js"></script>
  </body>
  </html>`
}


function escapeHtml(text) {
  var map = {
    '&': '&amp;',
    '<': '&lt;',
    '>': '&gt;',
    '"': '&quot;',
    "'": '&#039;'
  };

  return text.replace(/[&<>"']/g, function(m) { return map[m]; });
}
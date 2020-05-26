npm init --yes && \
npm install --save-dev webpack webpack-cli webpack-dev-server css-loader sass-loader mini-css-extract-plugin html-webpack-plugin

cp $HOME/.config/fish/templates/html5/index.html .

echo
echo (set_color brgreen) Done!
echo (set_color normal) - Use webpack-dev-server to run a livereload server. \(yarn webpack-dev-server, npm run webpack-dev-server\)
echo (set_color normal) - Use webpack or webpack --watch \(also --mode development or --mode production\) to build the site. \(yarn webpack, npm run webpack\)
echo

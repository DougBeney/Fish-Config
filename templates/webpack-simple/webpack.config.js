const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const HtmlWebpackPlugin = require('html-webpack-plugin')

module.exports = {
    plugins: [
        new MiniCssExtractPlugin,
        new HtmlWebpackPlugin({ template: 'index.html' })
    ],
    module: {
        rules: [
            { test: /\.sass$/, use: [MiniCssExtractPlugin.loader, 'css-loader', 'sass-loader']}
        ]
    }
}

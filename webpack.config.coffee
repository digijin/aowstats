path = require 'path'
webpack = require 'webpack'

module.exports = 
    context: path.join process.cwd(), "app"
    entry: "./index"
    output: 
        path: path.join process.cwd(), "dist"
        publicPath: "/assets/"
        filename: "bundle.js"
    module: 
        loaders: [
            { test: /\.coffee$/, loader: "coffee-loader" }
            { test: /\.html$/, loader: "ejs-loader?variable=data" }
        ]
    resolve:
    	extensions: ['', '.coffee', '.js', '.html']
    	root: [
    		path.join process.cwd(), 'app'
    	]
    devServer:
    	contentBase: './demo'
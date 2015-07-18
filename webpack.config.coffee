module.exports = 
    context: __dirname + "/app"
    entry: "./index.coffee"
    output: 
        path: __dirname + "/dist"
        filename: "bundle.js"
    module: 
        loaders: [
            { test: /\.coffee$/, loader: "coffee-loader" }
        ]
    resolve:
    	extensions: ['', '.coffee', '.js']
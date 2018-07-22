webpack = require 'webpack'
path = require 'path'

HtmlWebpackPlugin = require 'html-webpack-plugin'
SOCKET_PORT = parseInt(process.env.WEBPACK_DEV_SOCKET_PORT || 9999)
sourcePath = path.join __dirname

console.log "==================================="
console.log "-source->", sourcePath
console.log "NODE_ENV = ", process.env.NODE_ENV
console.log "SOCKET_PORT = ", SOCKET_PORT
console.log "==================================="
config =
  node:
    fs: 'empty'
    __filename: true
  devtool: 'eval-source-map'
  entry:[
    'babel-polyfill'
    'react-hot-loader/patch'
    "webpack-dev-server/client?http://0.0.0.0:#{SOCKET_PORT}"
    'webpack/hot/only-dev-server'
    './index.coffee'
    ]

  output:
    publicPath: '/build'
    path: path.join(__dirname, 'build')
    filename: 'bundle.js'
  resolve: 
    extensions:  ['.js', '.coffee', '.jsx', '.css','scss']
    
  module:
    loaders: [
      test: /\.coffee$/
      loaders: [ 'babel-loader', 'coffeescript-loader' ]
    ,
      test: /\.(png|woff|woff2|eot|ttf|svg)$/
      loaders: ['url-loader?limit=100000','img-loader']
    ,
      test: /\.css$/
      loaders: [ 'style-loader', 'css-loader' ]
    ]
  plugins: [
    new webpack.NamedModulesPlugin()
  ,
  #   new webpack.HotModuleReplacementPlugin()
  # ,
    new webpack.DefinePlugin
      'process.env.NODE_ENV': JSON.stringify('development')
  ,
    new HtmlWebpackPlugin
      template: 'index.html'
      hash: true
  ]
  devServer:
    proxy:
      '/github':
        target: 'https://api.github.com/graphql'
        secure: false
        changeOrigin: true
        pathRewrite:
          '^/github': ''
        # bypass: (req, res, proxyOptions) ->
   

    port: SOCKET_PORT
    publicPath: '/build'
    host: "0.0.0.0"
    #contentBase: [path.resolve(__dirname)]
    historyApiFallback: true
    disableHostCheck: true
    inline: true
    # contentBase: './'
    hot: true
    watchOptions:
      aggregateTimeout: 300
      poll: 500




module.exports = config
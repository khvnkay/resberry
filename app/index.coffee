import React from 'react'
import ReactDOM from 'react-dom'
import { AppContainer } from 'react-hot-loader'
import { createStore, applyMiddleware } from 'redux'
import thunk                            from 'redux-thunk'
import { Provider }                     from 'react-redux'
import reducer                          from './ducks'
import promiseMiddleware                from 'redux-promise-middleware'
import { createLogger }                 from 'redux-logger'
import { composeWithDevTools }          from 'redux-devtools-extension'
import { BrowserRouter as Router } from 'react-router-dom'
import App from './app'

viewport = null


middleware = applyMiddleware(promiseMiddleware(), thunk, createLogger())
store = createStore(reducer, {},composeWithDevTools(middleware))

render = (Component)=>
  ReactDOM.render(
    <Provider store={store}>    
      <AppContainer>
        <Router>
          <App />
        </Router>
      </AppContainer>
    </Provider>
  ,
    document.getElementById('render-app')
  )

render()

if module.hot
  module.hot.accept './app', ->
    render require('./app')

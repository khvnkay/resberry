import { connect }                          from 'react-redux'
import React, { Component }                 from 'react'
import { render }                           from 'react-dom'
import { Container, Header, Button, Icon }  from 'semantic-ui-react'

import LayoutComponent                      from './react/layoutComponent'
import MenuBar                              from './react/menuBar'
import Footer                              from './react/footer'

import * as _ from 'lodash'


class App extends Component

  componentDidCatch: (error, info) ->
    # alert error
   
  render: ->
    me = @

    <div>
      <MenuBar />
      <Footer />
    </div>


     


  

export default connect()(App)
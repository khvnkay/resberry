import { connect }                     from 'react-redux'
import React, { Component }             from 'react'
import { render }                       from 'react-dom'

import * as _ from 'lodash'


class App extends Component


 
  componentDidCatch: (error, info) ->
    alert error
   
  render: ->
    me = @
    <h2> Rkongkan! </h2>


mapDispatchToProps= (dispatch) ->


mapStateToProps = ({login}) ->
  

export default connect()(App)
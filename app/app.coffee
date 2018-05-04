import { connect }                     from 'react-redux'
import React, { Component }             from 'react'
import { render }                       from 'react-dom'
import { Button }                       from 'semantic-ui-react'

import * as _ from 'lodash'


class App extends Component


 
  componentDidCatch: (error, info) ->
    alert error
   
  render: ->
    me = @
    <div>
      <h2> Rkongkan!test123 </h2>
      <button className="ui button">
        Follow
      </button>
    </div>


mapDispatchToProps= (dispatch) ->


mapStateToProps = ({login}) ->
  

export default connect()(App)
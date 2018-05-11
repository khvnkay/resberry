import { connect }                          from 'react-redux'
import React, { Component }                 from 'react'
import { render }                           from 'react-dom'
import { ResponsiveContainer, Segment, Grid, Header , Image, Button }  from 'semantic-ui-react'
import Social from '../components/socials'


import * as _ from 'lodash'


class Home extends Component

  componentDidCatch: (error, info) ->
    # alert error
   
  render: ->
    me = @

    <div>

      heelo
      <Button>hi</Button>
       test
      <p>Extra space for 
       <br />
       a 
       <br />
       call 
       <br />
       to 
       <br />
       action 
       <br />
       inside 
       <br />
       the footer 
       <br />
       that 
       <br />
       could 
       <br />
       help 
       <br />
       re-
       <br />engage users.</p>
      <Social />
    </div>
export default Home

     


  


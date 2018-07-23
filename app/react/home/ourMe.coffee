import React,{ Component }      from 'react'
import moment                 from 'moment'
import { connect } from 'react-redux'
import {  Image, Button, Grid, Header }  from 'semantic-ui-react'
import home_belgium  from '/app/assets/img/home_belgium.png'
import home_colombia  from '/app/assets/img/home_colombia.png'

require '/app/assets/css/gallery-home.css'
class OurMe extends Component
  render: ->
    me = @
    <div className="grid-center" > 
      <Grid  centered columns={2}>
        <Grid.Row centered columns={6}>
          <Grid.Column>
            <Image src={home_belgium} size='tiny' />
            <Header as='h3'>My Lab
              <Header.Subheader>Manage your account settings and set e-mail preferences.</Header.Subheader>
            </Header>
          </Grid.Column>
          <Grid.Column>
            <Image src={home_colombia} size='tiny' />
            <Header as='h3'>exportory
              <Header.Subheader>Manage your account settings and set e-mail preferences.</Header.Subheader>
            </Header>
          </Grid.Column>
        </Grid.Row>
      </Grid>
    </div>

export default connect()(OurMe)
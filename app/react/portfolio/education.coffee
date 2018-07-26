import React,{ Component }  from 'react'
import e2 from '/app/assets/img/e2.png'
import e1 from '/app/assets/img/e1.png'
import e3 from '/app/assets/img/e3.png'
import e4 from '/app/assets/img/e4.png'
import e5 from '/app/assets/img/e5.png'
import { Image, List, Segment, Header, Button, Progress, Icon, Grid } from 'semantic-ui-react'


class Education extends Component
  constructor: (props) ->
    super(props)
    @state =
      percent: 33
  increment: () =>
    me = @
    console.log  (if(me.state.percent >= 100) then  0 else (me.state.percent + 20))
    @setState
      percent: (if(me.state.percent >= 100) then  0 else (me.state.percent + 20))
    true
    console.log me.state,"=12=="
  render: ->
    me = @
    console.log "lll", me
    <div>
      Education
      <Grid divided='vertically'>
        <Grid.Row columns={5}>
          <Grid.Column>
            <Image src={e1} onClick={()-> console.log "====="}  disabled={ !(me.state.percent >= 20) } />
            <Header as='h2' icon>
              Account Settings
              <Header.Subheader>Manage your account settings and set e-mail preferences.</Header.Subheader>
            </Header>
          </Grid.Column>
          <Grid.Column>
            <Image src={e2}  disabled={ !(me.state.percent >= 40) } />
            <Header as='h2' icon>
              Account Settings
              <Header.Subheader>Manage your account settings and set e-mail preferences.</Header.Subheader>
            </Header>
          </Grid.Column>
          <Grid.Column>
            <Image src={e3} disabled={ !(me.state.percent >= 60) } />
            <Header as='h2' icon>
              Account Settings
              <Header.Subheader>Manage your account settings and set e-mail preferences.</Header.Subheader>
            </Header>
          </Grid.Column>
          <Grid.Column>
            <Image src={e4} disabled={ !(me.state.percent >= 80) } />
            <Header as='h2' icon>
              Account Settings
              <Header.Subheader>Manage your account settings and set e-mail preferences.</Header.Subheader>
            </Header>
          </Grid.Column>
          <Grid.Column>
            <Image src={e5} disabled={ !(me.state.percent >= 100) }  />
            <Header as='h2' icon>
              Account Settings
              <Header.Subheader>Manage your account settings and set e-mail preferences.</Header.Subheader>
            </Header>
          </Grid.Column>
        </Grid.Row>
      </Grid>
      <Progress percent={me.state.percent} indicating />
      <Button onClick={()->
        me.setState
          percent: (if(me.state.percent >= 100) then  0 else (me.state.percent + 20))}>Increment</Button>
        
    </div>
export default Education
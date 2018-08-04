import React,{ Component }  from 'react'
import e2 from '/app/assets/img/e2.png'
import e1 from '/app/assets/img/e1.png'
import e3 from '/app/assets/img/port/g3.png'
import e4 from '/app/assets/img/port/g4.png'
import e5 from '/app/assets/img/port/g5.png'
import { Image, List, Segment, Header, Button, Progress, Icon, Grid } from 'semantic-ui-react'


class Education extends Component
  constructor: (props) ->
    super(props)
    @state =
      percent: 33
 
  render: ->
    me = @
    <div>
      <h1> Education</h1>
      
      <Grid divided='vertically'>
        <Grid.Row columns={3}>
          <Grid.Column>
            <Image src={e3} disabled={ !(me.state.percent >= 32) } />
            <Header as='h2' icon>
              Matthayom WatNongChok School 2007 - 2010
              <Header.Subheader>Science - Math</Header.Subheader>
            </Header>
          </Grid.Column>
          <Grid.Column>
            <Image src={e4} disabled={ !(me.state.percent >= 60) } />
            <Header as='h2' icon>
              Matthayom WatNongChok School 2011 - 2014 
              <Header.Subheader>Science - Math</Header.Subheader>
            </Header>
          </Grid.Column>
          <Grid.Column>
            <Image src={e5} disabled={ !(me.state.percent >= 100) }  />
            <Header as='h2' icon>
              King Mongkut's Institute of Technology Ladkrabang  2014 - 2017
              <Header.Subheader>major Information Engineer</Header.Subheader>
            </Header>
          </Grid.Column>
        </Grid.Row>
      </Grid>
      <Progress percent={me.state.percent} indicating />
      <Button onClick={()->
        me.setState
          percent: (if(me.state.percent >= 100) then  0 else (me.state.percent + 34))}>Increment</Button>
        
    </div>
export default Education
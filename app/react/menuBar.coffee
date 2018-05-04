import React,{ Component }      from 'react'
import { connect } from 'react-redux'
import HomepageHeading                      from './homePageHeading'
import { 
  Responsive, 
  Visibility, 
  Segment, 
  Menu , 
  Container, 
  Button }  from 'semantic-ui-react'


class MenuBar extends Component

  constructor: (props) ->
    super(props)
    @state = {
      activeItem: 'Home'
    }
  handleItemClick=->
    console.log "===="
  hideFixedMenu = (me) => 
    me.setState
      fixed: false
  showFixedMenu = (me) => 
    me.setState
      fixed: true 
  render: ->
    me = @
    <Responsive {...Responsive.onlyComputer}>
      <Visibility once={false} onBottomPassed={showFixedMenu(me)} onBottomPassedReverse={hideFixedMenu(me)}>
        <Segment inverted textAlign='center' style={{ minHeight: 700, padding: '1em 0em' }} vertical>
          <Menu
            fixed={true}
            inverted={!me.state.fixed}
            pointing={!me.state.fixed}
            secondary={!me.state.fixed}
            size='large'
          >
            <Container>
              <Menu.Item as='a' active={me.state.activeItem is 'Home'} onClick={() -> me.handleItemClick()}  >Home</Menu.Item>
              <Menu.Item as='a' active={me.state.activeItem is 'two'} >two</Menu.Item>
              <Menu.Item as='a' active={me.state.activeItem is 'Blog'}  >Blog</Menu.Item>
              <Menu.Item as='a' active={me.state.activeItem is 'Activity'} >Activity</Menu.Item>
              <Menu.Item position='right'>
                <Button as='a' inverted={!me.state.fixed}>Log in</Button>
                <Button as='a' inverted={!me.state.fixed} primary={me.state.fixed} style={{ marginLeft: '0.5em' }}>Sign Up</Button>
              </Menu.Item>
            </Container>
          </Menu>
          <HomepageHeading />
        </Segment>
      </Visibility>
    </Responsive>

export default MenuBar
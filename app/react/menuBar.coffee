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
  fixed = false
  render: ->
    <Responsive {...Responsive.onlyComputer}>
      <Visibility once={false} onBottomPassed={this.showFixedMenu} onBottomPassedReverse={this.hideFixedMenu}>
        <Segment inverted textAlign='center' style={{ minHeight: 700, padding: '1em 0em' }} vertical>
          <Menu
            fixed={true}
            inverted={!fixed}
            pointing={!fixed}
            secondary={!fixed}
            size='large'
          >
            <Container>
              <Menu.Item as='a' active>Home</Menu.Item>
              <Menu.Item as='a'>Work</Menu.Item>
              <Menu.Item as='a'>Company</Menu.Item>
              <Menu.Item as='a'>Careers</Menu.Item>
              <Menu.Item position='right'>
                <Button as='a' inverted={!fixed}>Log in</Button>
                <Button as='a' inverted={!fixed} primary={fixed} style={{ marginLeft: '0.5em' }}>Sign Up</Button>
              </Menu.Item>
            </Container>
          </Menu>
          <HomepageHeading />
        </Segment>
      </Visibility>
    </Responsive>

export default MenuBar
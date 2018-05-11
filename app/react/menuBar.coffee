import React,{ Component }      from 'react'
import { connect } from 'react-redux'
import HomepageHeading                      from './homePageHeading'
import LayoutComponent                      from './layoutComponent'
import PortfolioHome                      from './portfolio/index'
import Home                      from './home/index'
import BlogHome                      from './blog/index'
import ActivityHome                      from './activity/index'
import logo                            from "/home/krongkan/Works/resberry/app/assets/img/logo.png"
import { BrowserRouter as Router, Route, Switch, Link } from 'react-router-dom'
import { 
  Responsive, 
  Visibility, 
  Segment, 
  Menu , 
  Container,
  Image,

  Button }  from 'semantic-ui-react'


class MenuBar extends Component

  constructor: (props) ->
    super(props)
    @state = {
      activeItem: 'Home'
      fixed: false
      minHeight: 0
    }
  handleItemClick: (e) =>
    console.log e,"-=-="
    me =@ 
    me.setState
      activeItem: e

  color:(color)->
    if color
      'green'
    else
      'black'

 
  render:(children) ->
    me = @
    { fixed } = me.state
    activeItem = (_.get me, 'state.activeItem')
    <Router>
      <Visibility once={false} onBottomPassed={()->
        me.setState 
          fixed:true }  onBottomPassedReverse={()->
            me.setState
              fixed: false
            }>
        <Segment inverted  textAlign='center' style={{ minHeight: me.state.minHeight, padding: '1em 0em' }} vertical>
          <Menu 
            fixed={if me.state.fixed then  'top'}
            inverted={!me.state.fixed}
            pointing={!me.state.fixed}
            secondary={!me.state.fixed}
            size='small'
            >
            <Container>
              {
                menus = ['Home','Portfolio','Activity', 'Blog']
                arr = []
                _.each menus ,(value, key) ->
                  arr.push(
                    <Menu.Item name={value}  key={key}
                      active={activeItem is value} 
                      as={Link} to="/#{value}"
                      onClick={()->
                        me.setState 
                          activeItem: value
                        if value is 'Home'
                          me.setState
                            minHeight: 700
                        else
                          me.setState
                            minHeight: 0}
                    />
                  )
                arr
              }
              <Menu.Item position='right'>
                <Button as='a' inverted={!me.state.fixed}>Log in</Button>
                <Button as='a' inverted={!me.state.fixed} primary={me.state.fixed} style={{ marginLeft: '0.5em' }}>Sign Up</Button>
              </Menu.Item>
            </Container>
          </Menu>
          <Route exact path="/Home" component={Home}/>
          <Route exact path="/" component={Home}/>
        </Segment>
        <Route exact path="/Activity" component={ActivityHome}/>
        <Route exact path="/Portfolio" component={PortfolioHome}/>
        <Route exact path="/Blog" component={BlogHome}/>
      </Visibility>
    </Router>

export default MenuBar
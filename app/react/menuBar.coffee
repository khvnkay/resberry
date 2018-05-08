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
        <Segment  textAlign='center' style={{ minHeight: 700, padding: '1em 0em' }} vertical>
          <Menu 
            fixed={if me.state.fixed then  'top'}
            inverted={!me.state.fixed}
            pointing={!me.state.fixed}
            secondary={!me.state.fixed}
            size='large'
            >
            <Container>
              {
                menus = ['Home','Portfolio','Activity', 'Blog']
                arr = []

                _.each menus ,(value, key) ->
                  arr.push(
                    <Menu.Item name={value}  
                      active={activeItem is {value}} 
                      style={backgroundColor: me.color(activeItem is {value})} 
                      as={Link} to="/#{value}"
                      onClick={()->
                          me.setState 
                            activeItem: {value}}/>
                  )
                arr
              
              }
              
            </Container>
          </Menu>
          <Route exact path="/home" component={Home}/>
          <Route exact path="/portfolio" component={PortfolioHome}/>
          <Route exact path="/blog" component={BlogHome}/>
        </Segment>
      </Visibility>
    </Router>

export default MenuBar
import React from "react";
import { Responsive, WidthProvider } from "react-grid-layout";
import _ from 'lodash'
require '/app/node_modules/react-grid-layout/css/styles.css'
require '/app/node_modules/react-resizable/css/styles.css'
import { ResponsiveContainer, Segment, Grid, Header , Image, Button }  from 'semantic-ui-react'
import homepic  from '/app/assets/img/home1.png'
require '/app/assets/css/style.css'
require '/app/assets/css/example-styles.css'

ResponsiveReactGridLayout = WidthProvider(Responsive);

class GridPhoto extends React.Component
  constructor:(props) -> 
    super(props)
    @state = 
      items:  [
        {i: "0", x: 0, y: 0,w: 2,h: 2},
        {i: "1", x: 2, y: 0,w: 2,h: 2}, 
        {i: "2", x: 4, y: 0,w: 2,h: 2}, 
        {i: "3", x: 0, y: 2,w: 2,h: 2},
        {i: "4", x: 2, y: 2,w: 2,h: 2},
        {i: "5", x: 4, y: 2,w: 2,h: 2},
        {i: "6", x: 0, y: 4,w: 2,h: 2},
        {i: "7", x: 2, y: 4,w: 2,h: 2},
        {i: "8", x: 4, y: 4,w: 2,h: 2} ]

  @defaultProps = 
    className: "layout"
    rowHeight: 50
    onLayoutChange: () => {}
    cols: 
      lg: 12 
      md: 10 
      sm: 6
      xs: 4
      xxs: 2
  
  
  
 
  createElement:(el) ->
    removeStyle = 
      position: "absolute"
      right: "2px"
      top: 0
      cursor: "pointer"
    i = if el.add then "+" else el.i
    <div key={i} data-grid={el}>
      dd
    
    </div>
    
  onBreakpointChange= (breakpoint, cols) =>
    @setState
      currentBreakpoint: breakpoint
      cols: cols
  
  onLayoutChange= (layout, layouts) =>
    @props.onLayoutChange(layout, layouts)
 

  render: () ->
    me =@ 
    console.log @props
    <div>
      <ResponsiveReactGridLayout
        onLayoutChange={this.onLayoutChange}
        onBreakpointChange={this.onBreakpointChange}
        {...this.props}
      >
        {_.map(me.state.items, (el) => me.createElement(el))}
      </ResponsiveReactGridLayout>
    </div>
      
module.exports = GridPhoto


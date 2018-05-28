import React from "react";
import { Responsive, WidthProvider } from "react-grid-layout";
import _ from 'lodash'
require '/home/krongkan/Works/resberry/node_modules/react-grid-layout/css/styles.css'
require '/home/krongkan/Works/resberry/node_modules/react-resizable/css/styles.css'
import { ResponsiveContainer, Segment, Grid, Header , Image, Button }  from 'semantic-ui-react'
import homepic  from '/home/krongkan/Works/resberry/app/assets/img/home1.png'
require '/home/krongkan/Works/resberry/app/assets/css/style.css'
require '/home/krongkan/Works/resberry/app/assets/css/example-styles.css'

ResponsiveReactGridLayout = WidthProvider(Responsive);

generateLayout= ()=> 
  return _.map _.range(0, 5), (item, i) -> 
    y = Math.ceil(Math.random() * 4) + 1
    return{
      x: (_.random(0, 5) * 2) % 12,
      y: Math.floor(i / 6) * y,
      w: 2,
      h: y,
      i: i.toString(),
      static: Math.random() < 0.05
    }
class GridPhoto extends React.Component
  constructor:(props) -> 
    super(props)
    @state = 
      currentBreakpoint: "lg"
      compactType: "vertical"
      mounted: false
      layouts: 
        lg: _.get @, 'props.initialLayout'

  
  @defaultProps = 
    className: "layout"
    rowHeight: 30
    onLayoutChange: () => {}
    cols: 
      lg: 12 
      md: 10 
      sm: 6
      xs: 4
      xxs: 2
    initialLayout: generateLayout()
  
  
  
  componentDidMount:() ->
    @setState
      mounted: true
  generateDOM:() ->
    _.map (_.get @, 'state.layouts.lg'), (l, i) ->
      console.log "layout",i,l.static
      <div key={i} className={if l.static then  "static" else  ""}>
        {
          if l.static 
            <span
              className="text"
              title="This item is static and cannot be removed or resized."
            >
              Static - {i}
            </span>
          else
            <Image src={homepic } />
        }
      </div>
  onBreakpointChange= (breakpoint) =>
    @setState
      currentBreakpoint: breakpoint
  onCompactTypeChange: ()=>
    { compactType: oldCompactType } = @state
    
    compactType =
      if oldCompactType is "horizontal"
        {compactType: "vertical"}
      else if oldCompactType is "vertical" 
        {compactType: null} 
      else 
        {compactType: "horizontal"}
    @setState compactType 
  onLayoutChange= (layout, layouts) =>
    @props.onLayoutChange(layout, layouts)
  onNewLayout: () ->
    @setState
      layouts: 
        lg: generateLayout()
    

  render: () ->
    me =@ 
    console.log this.props
    
    <div>
      testttt
      <div>
        Current Breakpoint: {_.get me , 'state.currentBreakpoint'} ({
          this.props.cols[_.get me , 'state.currentBreakpoint']
        }{" "}
        columns)
      </div>
      <div>
        Compaction type:{" "}
        {_.capitalize(_.get me ,'state.compactType') || "No Compaction"}
      </div>
      <button onClick={()-> me.onNewLayout()}>Generate New Layout</button>
      <button onClick={()-> me.onCompactTypeChange()}>
        Change Compaction Type
      </button>
      <ResponsiveReactGridLayout
        {...this.props}
        layouts={_.get me, 'state.layouts'}
        onBreakpointChange={()=>onBreakpointChange}
        onLayoutChange={=> onLayoutChange}
        measureBeforeMount={false}
        useCSSTransforms={_.get me ,'state.mounted'}
        compactType={_.get me , 'state.compactType'}
        preventCollision={! _.get me, 'state.compactType'}
      >
        {@generateDOM()}
      </ResponsiveReactGridLayout>
    </div>
      
module.exports = GridPhoto


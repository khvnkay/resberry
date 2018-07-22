import React,{ Component }      from 'react'
import moment                 from 'moment'
import { connect } from 'react-redux'
import {  Image, Button, Grid, Header }  from 'semantic-ui-react'
import Gallery from 'react-photo-gallery';
import docker from '/app/assets/img/skill_docker.png'
import js from '/app/assets/img/skill_js.png'
import aws from '/app/assets/img/skill_aws.png'
import node from '/app/assets/img/skill_node.png'
import react from '/app/assets/img/skill_react.png'
import { SortableContainer, SortableElement, arrayMove } from 'react-sortable-hoc'
import Photo from './photo';
photos = [
  { src: 'https://source.unsplash.com/2ShvY8Lf6l0/800x599', width: 4, height: 3 },
  { src: 'https://source.unsplash.com/Dm-qxdynoEc/800x799', width: 1, height: 1 },
  { src: 'https://source.unsplash.com/qDkso9nvCg0/600x799', width: 3, height: 4 },
  { src: 'https://source.unsplash.com/iecJiKe_RNg/600x799', width: 3, height: 4 },
  { src: 'https://source.unsplash.com/epcsn8Ed8kY/600x799', width: 3, height: 4 },
  { src: 'https://source.unsplash.com/NQSWvyVRIJk/800x599', width: 4, height: 3 },
  { src: 'https://source.unsplash.com/zh7GEuORbUw/600x799', width: 3, height: 4 },
  { src: 'https://source.unsplash.com/PpOHJezOalU/800x599', width: 4, height: 3 },
  { src: 'https://source.unsplash.com/I1ASdgphUH4/800x599', width: 4, height: 3 }
]

SortablePhoto = SortableElement(Photo)
SortableGallery = SortableContainer(({photos}) =>
  <Gallery photos={photos} ImageComponent={SortablePhoto}/>)
class GalleryCard extends Component
  constructor: (props) ->
    super(props)
    @state = 
      photos: photos
  onSortEnd: ({ oldIndex, newIndex }) => 
    @setState
      photos: arrayMove(this.state.photos, oldIndex, newIndex) 
  render: ->
    me = @
    <div>
      <SortableGallery axis={"xy"} photos={me.state.photos} onSortEnd={this.onSortEnd} />
    </div>
export default connect()(GalleryCard)
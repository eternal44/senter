import React, {Component} from 'react'
import {connect} from 'react-redux'
import {upvote, downvote} from '../actions/index'
import {bindActionCreators} from 'redux'

class VotableCard extends Component {
  constructor(props) {
    super(props)

    // play with this later
    // this.state = this.props.votables[0]

    // should it be a reference to a fetchVotable function?
    // this.fetchNextVotable = this.fetchNextVotable.bind(this)
  }
  render() {
    const currentVotable = this.props.votables[0]
    if(!this.props.votables) {
      return <div>Keep trying</div>
    }

    document.onkeydown = function(e){
      if(e.which === 37) {
        this.props.downvote(currentVotable, true)()
      } else if(e.which === 39) {
        this.props.upvote(currentVotable, true)()
      }
    };

    return (
      <div>
        <div>Name: {currentVotable.name}</div>
        <button onClick = {() => this.props.upvote(currentVotable, true)}>Upvote</button>
        <button onClick = {() => this.props.downvote(currentVotable, false)}>Downvote</button>
      </div>
    )
  }
}

function mapStateToProps(state) {
  return {
    votables: state.votables
  }
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators({
    upvote: upvote,
    downvote: downvote
  }, dispatch)
}

export default connect(mapStateToProps, mapDispatchToProps)(VotableCard)

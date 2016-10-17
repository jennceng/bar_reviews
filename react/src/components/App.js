import React, { Component }  from 'react';
import Bar from './Bar';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      chosenBarId: null,
      bars: []
    }
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(id) {
    this.setState({ chosenBarId: id });
  }

  componentDidMount() {
    $.ajax({
      url: '/api/v1/bars.json'
    })
    .done(data=> {
      debugger;
      this.setState({ bars: data.bars })
    })
  }

  render() {
    let bars = this.state.bars.map(bar => {
      let active;
      let reviews;
      let onClick = () => this.handleClick(bar.id);

      if(this.state.chosenBarId === bar.id) {
        active = true;
      }

      return(
        <Bar
          key={bar.id}
          id={bar.id}
          active={active}
          name={bar.name}
          reviews={bar.reviews}
          url={bar.url}
          onClick={onClick}
        />
      )
    })
    return(
      <div>
        <h1> Bars </h1>
        {bars}
      </div>
    )
  }
}

export default App;

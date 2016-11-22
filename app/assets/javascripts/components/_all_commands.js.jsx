var AllCommands = React.createClass({
  getInitialState() {
    return { commands: [] }
  },

  componentDidMount() {
    $.getJSON('/commands', (response) => { this.setState({ commands: response }) });
  },

  render(){
    var commands= this.state.commands.map((command) => {
    return (
        <div key={command.id}>
          <h1>{command.name}</h1>
          <img src={command.img_url} />
        </div>
        )
  }
);

    return(
      <div>
        {commands}
      </div>
      )
    }
});

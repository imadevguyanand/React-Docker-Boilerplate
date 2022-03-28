import logo from "./logo.svg";
import "./App.css";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          React application deployed on Heroku using Docker image through Github
          actions
        </p>
      </header>
    </div>
  );
}

export default App;

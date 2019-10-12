import React, { Component } from 'react';
import ReactDOM from 'react-dom';

class PhoneHome extends Component {

    constructor(props){
        super(props);

        this.state = {
        }
    }

    componentDidMount(){
    }

    render() {
        return (
            <div className="container">
                <h1>Phone App</h1>
                <h4>Authorization Interface</h4>
            </div>
        )
    }
}

export default PhoneHome;

if (document.getElementById('app_phone')) {
    ReactDOM.render(<PhoneHome />, document.getElementById('app_phone'));
}

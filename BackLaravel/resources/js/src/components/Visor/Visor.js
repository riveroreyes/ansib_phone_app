import React from 'react';

const Visor = (props) =>{
	return(
        <div className="row justify-content-center">
            <p className="display-3 text-primary"> $ {props.money} </p>
        </div>
	);
}

export default Visor;
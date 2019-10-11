import React from 'react';

const transferTable = (props) =>{
	const classAmountPlus = ["text-right","text-success"];
	const classAmountMinus = ["text-right","text-danger"];
	
	return(
        <div className="row justify-content-center">
            <div className="col col-md-6 m-t-md ">
				<table className="table table-striped table-bordered">
				  <thead className="thead-light">
				    <tr>
				      <th scope="col" className="text-center">#</th>
				      <th scope="col">Description</th>
				      <th scope="col" className="text-right">Amount</th>
				    </tr>
				  </thead>
				  <tbody>
				  {
				  	props.transfers != null 
				  	? props.transfers.map( (el,i) => (
				  		<tr key={el.id}>
				  			<td className="text-center">
				  				{(i+1)}
				  			</td>
				  			<td>
				  				{el.description}
				  			</td>
				  			<td className={ el.amount > 0 ? classAmountPlus.join(' ') : classAmountMinus.join(' ')}>
				  				{el.amount}
				  			</td>
				  		 </tr> 
				  		)
				  	)
				  	: null
				  }
				  </tbody>
				</table>
            </div>
        </div>
     );
}

export default transferTable;
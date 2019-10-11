import React from 'react';

const transferForm = (props) =>(
<div className="row justify-content-center">
	<form className="form-inline justify-content-center">
		<div className="form-group mb-2">
			<input 
				type={props.form.description.type}
				className="form-control"
				placeholder={props.form.description.placeholder}
				name={props.form.description.name}
				value={props.form.description.value}
				onChange={props.changed}
				/>
		</div>
		<div className="input-group mx-sm-2 mb-2">
			<div className="input-group-text">$</div>
			<input
				type={props.form.amount.type}
				className="form-control"
				placeholder={props.form.amount.placeholder}
				name={props.form.amount.name}
				value={props.form.amount.value}
				onChange={props.changed}
			 />
		</div>
		<button 
			type="submit"
			className="btn btn-primary mb-2"
			onClick={props.clickAddMoney}
			>
			Add
		</button>		 
	</form>
</div>
);

export default transferForm;
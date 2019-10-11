import React, { Component } from 'react';
import ReactDOM from 'react-dom';
import Carrusel from '../../components/Carrusel/Carrusel';
import TransferForm from '../../components/TransferForm/TransferForm';
import TransferList from '../../components/TransferList/TransferList';
import Visor from '../../components/Visor/Visor';
import Api from '../../config/api';
import Aux from '../../hoc/Aux/Aux';

class WalletHome extends Component {

    constructor(props){
        super(props);

        this.state = {
            money:0.0,
            transfers:[],
            error:false,
            form: {
                 description: { control: "input", type: "text", name: "description", placeholder: "Description", value: "" } ,
                 amount: { control: "input", type: "text", name: "amount", placeholder: "Amount", value: "" },
            },
            wallet_id:null       
        }

        //this.handlerChange.bind(this);

    }

    componentDidMount(){
        this.getListado();
    }

    getListado(){
        Api.get('wallet')
        .then(res => {
            this.setState({
                money:res.data.money,
                transfers:res.data.transfers,
                wallet_id: res.data.id
            });
        })
        .catch( error => this.setState({
            error:true
        }));
    }

    handlerAddMoney(event){
        event.preventDefault();
        Api.post('transfer',{
            'wallet_id':this.state.wallet_id,
            'description':this.state.form.description.value,
            'amount':this.state.form.amount.value
        }).then(res=>this.getListado())
        .catch(error=>console.log(error));
    }

    handlerChange(event){
        let forma = {...this.state.form}
        forma[event.target.name].value = event.target.value;
        this.setState({form:forma});
    }

    render() {
        return (
            <Aux>
                <div className="container">
                    <Carrusel />
                    <Visor money={this.state.money} />
                    <TransferForm
                        form = {this.state.form}
                        clickAddMoney = {(event) => this.handlerAddMoney(event)} 
                        changed={this.handlerChange.bind(this)}
                    />
                    <TransferList transfers={this.state.transfers}/>
                </div>
            </Aux>
        )
    }
}

export default WalletHome;

if (document.getElementById('app_wallet')) {
    ReactDOM.render(<WalletHome />, document.getElementById('app_wallet'));
}

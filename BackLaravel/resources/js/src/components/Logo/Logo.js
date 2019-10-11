import React from 'react';
import ImagenLogo from '../../assets/images/Money_Closeup_Dollars_567069_1280x839.jpg';
import classes from './Logo.module.scss';

const logo = (props) =>(
    <div className={classes.Logo}>
        <img src={ImagenLogo} alt="Money" className="d-block w-100" />
    </div>
);

export default logo;
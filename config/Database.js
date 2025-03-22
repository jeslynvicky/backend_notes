import {Sequelize} from "sequelize";

const db = new Sequelize('notes','root','inipasswordtugas3',{
    host: '34.135.185.104',
    dialect: 'mysql'
})

export default db;

import {Sequelize} from "sequelize";

const db = new Sequelize('notes','root','inipasswordtugas3',{
    host: '35.232.218.92',
    dialect: 'mysql'
})

export default db;
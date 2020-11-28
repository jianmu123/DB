/*
服务器端Node.js代码，实现：
动态Web服务器功能，可以接收客户端HTTP请求，查询数据库，返回HTTP响应数据
*/
//导入必需的第三方模块
const express = require('express')		//express模块用于创建Web服务器
const mysql = require('mysql')			//mysql模块用于连接MySQL数据库
//创建Web服务器并启动它
let port = 5050
//动态服务器监听的端口，可以是任意空闲端口；
//新浪云服务器默认要求Node.js程序监听5050端口
let app = express() //Web应用程序,即Web服务器
app.listen(port, ()=>{
	console.log('Backend Server started! Listening on Port: ', port)
})
/*
 * 创建数据库连接池（Connection Pool）—— 提前把若干个连接对象先创建好，可以及时供请求使用
 */
let pool = mysql.createPool({
	host: '127.0.0.1',		//数据库服务器的主机地址
	port: '3306',			//数据库服务器的监听端口
	user: 'root',			//数据库服务器的管理员用户名
	password: '',			//数据库服务器的管理员密码
	database: 'douban1',		//待访问的数据库名
	connectionLimit: 10		//数据库连接池的最大可以保持的连接数量
})

/*拦截所有的POST请求，解析其中的请求主体数据，保存入req.body中 
 */
 let bodyParser=require('body-parser')//body-parser不加./ 因为是第三方的
 app.use(bodyParser.urlencoded({  //在所有的接口执行之前，使用一个请求处理函数
	 extended:false   //是否使用其他扩展模块来解析请求信息（false为：否）
 }))


/**
 * 修改所有响应消息的头部，添加允许客户端跨域请求的相关头部
 * **/
app.use((req, res, next)=>{
	//在所有的请求之前“使用”当前函数来预处理请求消息和响应消息
	res.header('Access-Control-Allow-Origin',  '*') //添加一个响应消息头部
	next()  //将请求和响应消息继续交给“下一个”对象来处理
}) 
 
 // 电影接口
app.get('/main', (req, res)=>{ //服务器接收到特定的GET请求，加以处理
	//向数据库中发送查询语句，获取所有的轮播广告数据
	let sql = 'SELECT  *  FROM  douban_movie_main'
	pool.query(sql, (err, result)=>{
		//pool.query()用于向数据库发送一条SQL语句，得到结果后调用回调函数
		//err：如果SQL语句执行失败，则此对象中有失败的原因；否则err为undefined
		//result：如果SQL语句执行失败，则result为undefined；否则result中有执行结果
		if(err) throw err		//如果存在SQL执行错误，则抛出该错误，程序终止执行
		//向客户端输出响应数据——send()方法会自动将JS数组/对象转换为JSON数据
		res.send(result)		//查询语句的结果是[{},...{}]形式的，可以直接发送给客户端
	})
})

app.get('/leftm',(req,res)=>{
	let sql = 'SELECT  *  FROM  douban_movie_leftm'
	pool.query(sql, (err, result)=>{
		if(err) throw err
		res.send(result)
	})
})

app.get('/rightm',(req,res)=>{
	let sql = 'SELECT  *  FROM  douban_movie_rightm'
	pool.query(sql, (err, result)=>{
		if(err) throw err
		res.send(result)
	})
})

app.get('/movie',(req,res)=>{
	let sql = 'SELECT  *  FROM  douban_movie_movie'
	pool.query(sql, (err, result)=>{
		if(err) throw err
		res.send(result)
	})
})

// 热点内容接口
app.get('/hotspot/img',(req,res)=>{
	let sql = 'SELECT  *  FROM  douban_hotspot_img'
	pool.query(sql, (err, result)=>{
		if(err) throw err
		res.send(result)
	})
})

app.get('/hotspot/centerWord',(req,res)=>{
	let sql = 'SELECT  *  FROM  douban_hotspot_centerword'
	pool.query(sql, (err, result)=>{
		if(err) throw err
		res.send(result)
	})
})

app.get('/hotspot/rightWord',(req,res)=>{
	let sql = 'SELECT  *  FROM  douban_hotspot_rightword'
	pool.query(sql, (err, result)=>{
		if(err) throw err
		res.send(result)
	})
})

// 时间接口
app.get('/time',(req,res)=>{
	let sql = 'SELECT  *  FROM  douban_time'
	pool.query(sql, (err, result)=>{
		if(err) throw err
		res.send(result)
	})
})
// 注册数据
app.post('/user/register',(req,res)=>{
	// 读取客户端提交的数据（都放在请求主体：req.body中）
	// console.log(req.body);
	// 提示：Express框架中的请求消息对象req对象中默认没有body属性，因此导入第三方的 body-parser 使用命令：npm i  body-parser 
	let em=req.body.email
	let ph=req.body.phone
	let pw=req.body.pwd
	//将客户端提交的数据插入到数据库服务器(即在数据库服务器中执行INSERT语句)
	let sql='INSERT INTO douban_user VALUES(NULL,?,?,password(?))' //使用?占位 占了变量的位置
	pool.query(sql,[em,ph,pw],(err,result)=>{ //提交SQL时需要为三个问好占位符提供对应的数据值
		if(err)throw err
		// 向客户端发送执行结果,result.insertId就是刚刚插入的新数据所在数据库中的自增编号
		res.send({code:200,msg:'提交成功',userID:result.insertId})
	})
})
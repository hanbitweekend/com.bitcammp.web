var app = app || {};
app.path=(()=>{
	var init = x=>{
		alert('컨텍스트 패스: '+x);
		app.login_page.onCreate();
		sessionStorage.setItem('x',x);
	};
	var ctx = ()=>{
		return sessionStorage.getItem('x');
	}
	return {init:init,ctx:ctx};
})();

app.login_page=(()=>{
	return{
		onCreate : ()=>{
			$('#content').empty();
			alert('PPP'+$('#content').text());
			$('#content').html(app.login_page.setContentView());
			$('#pass_div').append();
			// +'<button type="submit" class="btn btn-primary" style="width: 40%;margin-left: 30px;margin-right: 20px">로 그 인</button>'
			//  +'<button id="cancel" type="reset" class="btn btn-warning" style="width: 40%;">취 소</button>'
			app.compo.button('login_btn')
			.css({'width':'40%','margin-left':'30px','margin-right':'20px'})
			.text('로 그 인')
			.appendTo($('#pass_div'))
			.click(e=>{
				
				$.ajax({
					url : app.path.ctx()+'/get/login',
					method : 'post',
					data : JSON.stringify({
						id : $('#userid').val(),
						pass : $('#password').val()
					}),
					contentType : 'application/json',
					success : d =>{
						alert('ID:'+d.id+',ID2:'+$('#userid').val());
						alert('PASS:'+d.pass+',PASS2:'+$('#password').val());
						
						if(d.id === $('#userid').val() &&
								d.pass === $('#password').val()){
							alert("SUCCESS");
						}else{
							alert("FAIL");
						}
						
					},
					error : (x,s,m)=>{
						alert('오류발생: '+m);
					}
				});
			});
		},
		setContentView : ()=>{
			return '<table id="login_table" style="width: 100%;height: 600px">'
			+'<tr style="width: 100%;height: 30%">'
				+'<td style="width: 33%;"></td>'
				+'<td style="width: 33%;"><h1 style="text-align: center;">로그인 화면</h1></td>'
				+'<td style="width: 33%;"></td>'
			+'</tr>'
			+'<tr style="width: 100%;height: 30%">'
				+'<td></td>'
				+'<td>'
					
					  +'<div class="form-group">'
					    +'<label for="exampleInputEmail1">ID</label>'
					    +'<input id="userid" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">'
					    +'<small id="emailHelp" class="form-text text-muted">We will never share your email with anyone else.</small>'
					  +'</div>'
					  +'<div id="pass_div" class="form-group">'
					    +'<label for="exampleInputPassword1">Password</label>'
					    +'<input id="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">'
					  +'</div>'
					  
					
				+'</td>'
				+'<td></td>'
			+'</tr>'
			+'<tr style="width: 100%;height: 30%">' 
				+'<td></td>'
				+'<td></td>'
				+'<td></td>'
			+'</tr>'
		+'</table>';
		}
	};
})();
app.compo={
	button : x =>{
		return $('<button/>',{id: x, class:'btn btn-primary' });
	}	
}






<?php
defined('FIR') OR exit();
/**
 * The template for displaying Example Create page
 */
?>


<style type="text/css">
	#chat_window{
		min-height: 50vh;
	}
</style>

	 
	 <!-- ==============================================
	 Dashboard Section
	 =============================================== -->
     <section class="dashboard">
      <div class="container">
	   <div class="row">
		<div class="col-lg-12">
		
         <div class="headline">
		  <h3><?=e($data['user']['name'])?> <?php foreach ($data['jobs'] as $key => $JbosVAL) { ?>
		  		Chat For Job # : <?php echo $JbosVAL['job_id'];?>
		  	<?php } ?>
		  	<?php if(count($data['jobs'])==0){ ?>
		  		Direct Chat
		  	<?php } ?></h3>
		 </div>	





		  <div class="prop-info text-center">
		  	
		  	<div class="chat_window" id="chat_window">


		  		
		  		

		  	</div>
		  	<?=$this->token()?>
		  	<table style="width: 100%;">
		  		<tr>
		  			<td>
		  				<textarea  id="message" class="form-control" onchange="refine(this)" rows="3" required></textarea>
		  			</td>
		  		</tr>
		  		<tr>
		  			<td>
		  				<button  onclick="add_chat()" class="kafe-btn kafe-btn-mint full-width"> <i class="fa fa-paper-plane"></i> Send</button>
		  			</td>
		  		</tr>
		  	</table>
          </div><!-- /.prop-info -->	
		 		
			  
		

		
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->
		
	  </div><!--/ .container -->
     </section>	  


     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>



     <script type="text/javascript">


     	var chat_master = [];

     	function get_chat(argument) {

     		 $.post("<?=$this->siteUrl()?>/<?=$this->client_url()?>/ajax_get_chat",
			    {
			      token_id: $('[name=token_id]').val(),
			      job_id: '<?php echo $_GET['job_id']; ?>'
			    },
			    function(data,status){
			      try {
						  var obj = JSON.parse(data);
						  console.log(obj.chat.length);
						  console.log(chat_master.length);
						  if (obj.chat.length!=chat_master.length){
						  	chat_master = obj.chat;
						    draw_chat(obj.chat);
						    $("#chat_window").animate({ scrollTop: '3000px' }, 1000);
						    
						  }
						  
						}
						catch(err) {
						  document.getElementById("demo").innerHTML = err.message;
						}
			    });

     	}

     	function draw_chat(data){

     		var chat_box = '';

     		$.each(data, function( ChatKEY, CHATVAL ) {

     			if (CHATVAL.by_from==0) {
     				chat_box += '<div class="flex text-left">'+
			  			'<div class="chat_box chat_left">'+
			  				'<p>'+CHATVAL.message+'</p>'+
			  				'<hr/>'+
			  				'<span>Admin : '+CHATVAL.created_at+'</span>'+
			  			'</div>'+
			  		'</div>';
     			}

     			if (CHATVAL.by_from==2) {
     				chat_box += '<div class="flex text-right">'+
			  			'<div class="chat_box chat_right">'+
			  				'<p>'+CHATVAL.message+'</p>'+
			  				'<hr/>'+
			  				'<span>You : '+CHATVAL.created_at+'</span>'+
			  			'</div>'+
			  		'</div>';
     			}

			});

			$('#chat_window').html(chat_box);


     	}


     	function add_chat(argument) {

     		var message = $('#message').val();

     		$('#message').val('');

     		if (message=="") {
     			return false;
     		}

     		 $.post("<?=$this->siteUrl()?>/<?=$this->client_url()?>/ajax_set_chat",
			    {
			      token_id: $('[name=token_id]').val(),
			      job_id: '<?php echo $_GET['job_id']; ?>',
			      message:message
			    },
			    function(data,status){
			      console.log(data);
			      get_chat();
			    });

     	}


     	get_chat();

     	setInterval(function(){ get_chat(); }, 3000);
     </script>





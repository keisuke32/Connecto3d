<?php
defined('FIR') OR exit();
/**
 * The template for displaying Example Create page
 */
?>
<link rel="stylesheet" href="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/css/job.css">
<script src="<?=$this->siteUrl()?>/forum/sites/default/assets/js/popper.min.js"></script>


<style type="text/css">
  #dropzone{
    min-height: 200px;
    background-color: #F9F9F9;
    display: flex;
    border: 3px dashed #00C4CF;
    padding: 10px;
    border-radius: 10px;
    align-items: center;
  }
  .dz-upload{
    background-color: blue;
  }
  .dz-error-message{
    display: none;
  }
  .dz-message{
    display: none;
  }

  .dz-image{
    border: 3px dashed silver;
    border-radius: 10px;
  }
  .dz-success-mark{
display: none;
  }
  .dz-error-mark{
display: none;
  }
  .dz-preview{
    padding: 10px;
    display: none;
  }

  .p_item{
  	border: 2px silver;
  	padding: 10px;
  	margin: 10px;
  	width: 33%;
  	align-items: center;
  }


   @media print {
         .dashboard{
         	display: none;
         }
         header{
         	display: none;
         }
         footer{
         	display: none;
         }
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
		  <h3><?=$this->lang('send_job_details')?></h3>
		  <!-- <a href="<?=$this->siteUrl()?>/<?=$this->client_url()?>/invites"><?=$this->lang('go_back')?></a> -->
		 </div>	
		 
		</div><!--/ .col-lg-12 -->
	   </div><!--/ .row -->
	   
	   <div class="row">
		 
	       <?=$this->validation()?>
		
		<div class="col-lg-12">

         <div class="add-box">
           <form method="post" action="<?=$this->siteUrl()?>/<?=$this->client_url()?>/process_add_jobs_duo" enctype="multipart/form-data"   onsubmit="validate(event)">

           	<input type="hidden" name="service_id" id="service_id">
           	<input type="hidden" name="nda" id="nda">
				 



			  <div class="form-group">
			  	<label><?=$this->lang('service_category')?></label>
			  	<div class="dropdown">
				    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
				    <span id="dropdown_name"><?=$this->lang('service_category')?></span>
				    <span class="caret"></span></button>
				    <ul class="dropdown-menu">
				    <?php foreach ($data['services'] as $servicesVAL) { 
			    		if($servicesVAL['freelancer']!=0){ ?>
				      <li>
				      	<a  onclick="reflect(this)"  data-id="<?php echo $servicesVAL['id'];?>"  data-name="<?php echo $servicesVAL['name'];?>"  >
				      	<?php echo $servicesVAL['name'];?>
				      	</a>
				      </li>
				      <li role="presentation" class="divider"></li>
				      <?php } } ?>
				    </ul>
				  </div>
			  </div>



			  


			  <div class="form-group" id="show_zone">	
			    
			  </div> 

			  <div class="row" id="form_zone">	
			    
			  </div> 
			  <br>
			  <br>

			  <div class="form-group">	
			    <label><?=$this->lang('subject')?></label>
			    <input type="text" name="subject" onchange="refine(this)" class="form-control" required>
			  </div> 

			  <div class="form-group">	
			    <label><?=$this->lang('description')?></label>
                 <textarea Xid="summernote" name="description" class="form-control" rows="5" placeholder="<?=$this->lang('description')?>" onchange="refine(this)" required ></textarea>	
              </div>

              <div class="form-group">	
			    <label><?=$this->lang('name')?></label>
			    <input type="text" name="name" value="<?=e($data['user']['name'])?>" onchange="refine(this)" class="form-control" required>
			  </div>

			  <div class="form-group">	
			    <label><?=$this->lang('shipping')?></label>
			    <input type="text" id="shipping_address" name="shipping" onchange="refine(this)" value="<?php echo decrypt_text($data['user']['shipping_address']); ?>" class="form-control" required>
			  </div>

			  <!-- <div class="form-group">	
			    <label><?=$this->lang('post_shipping')?></label>
			    
			  </div> -->

			  <div class="form-group">	
			  	<input type="hidden" id="shipping_address2" name="post_shipping" onchange="refine(this)" class="form-control" required>
			    <label><?=$this->lang('shipping_type')?></label>
			    <br>
			    <label class="checkbox-inline"><input type="checkbox" name="shipping_type[]" value="Express Shipping">&nbsp;&nbsp; Express Shipping</label>
			    <br/>
				<label class="checkbox-inline"><input type="checkbox" name="shipping_type[]" value="Slow Boat Shipping">&nbsp;&nbsp; Slow Boat Shipping</label>
			  </div>

			  <div class="form-group">	
			    <label><?=$this->lang('quantity')?></label>
			    <input type="text" name="quantity" onchange="refine(this)" class="form-control" required>
			  </div>

			  <div class="form-group">	
			    <label><?=$this->lang('attachments')?></label>
			    <!-- <input class="form-control" name="userfile[]" type="file" multiple="multiple" /> -->
			  </div>

			  <div id="preview_zone" class="row" ></div>
			  <br>

			  <div id="dropzone" class="text-center">
			  	

			  		<button class="btn btn-info" onclick="$(this).parent().click()" type="button" style="margin-top: 30px;"><i class="fa fa-upload fa-2x"></i> Preview Supported <br/> .obj .stl and images</button>
			  	
			  	
			  </div>
			  <br>
			  <br>
			  <div class="text-center">
			  	<button type="button" data-toggle="modal" data-target="#ndaModal" class="btn btn-primary"><i class="fa fa-handshake-o"></i> <?=$this->lang('nda')?></button>
			  </div>
			  <br>
			  <br>

			  

			  
			  
		   
			  
              <?=$this->token()?>
              <button type="submit" name="invite_freelancer" class="kafe-btn kafe-btn-mint full-width"><?=$this->lang('submit')?></button>
			  
           </form>		 
		 </div><!--/ .add-box -->	
		

		
		</div><!--/ .col-lg-8 -->
	   </div><!--/ .row -->
		
	  </div><!--/ .container -->
     </section>	  


<!-- Modal -->
<div id="ndaModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title"><?=$this->lang('nda')?></h4>
      </div>
      <div class="modal-body">

      	

      	<p>This Nondisclosure Agreement (the "Agreement") is entered into by and between
"<?php echo $data['auth']['name'];?>" with its principal offices at "<?php echo $data['auth']['email'];?>/<?php echo decrypt_text($data['auth']['shipping_address']);?>", ("Disclosing Party") and CONNECTO3D , located at http://connecto3d.com ("Receiving Party") for the purpose of
preventing the unauthorized disclosure of Confidential Information as defined below. The parties
agree to enter into a confidential relationship concerning the disclosure of certain proprietary
and confidential information ("Confidential Information"). </p>
        <p>
        	1. Definition of Confidential Information. For purposes of this Agreement, "Confidential
Information" shall include all information or material that has or could have commercial value or
other utility in the business in which Disclosing Party is engaged. If Confidential Information is in
written form, the Disclosing Party shall label or stamp the materials with the word "Confidential"
or some similar warning. If Confidential Information is transmitted orally, the Disclosing Party
shall promptly provide writing indicating that such oral communication constituted Confidential
Information.
        </p>

        <p>2. Exclusions from Confidential Information. Receiving Party's obligations under this
Agreement do not extend to information that is: (a) publicly known at the time of disclosure or
subsequently becomes publicly known through no fault of the Receiving Party; (b) discovered or
created by the Receiving Party before disclosure by Disclosing Party; (c) learned by the
Receiving Party through legitimate means other than from the Disclosing Party or Disclosing
Party's representatives; or (d) is disclosed by Receiving Party with Disclosing Party's prior
written approval.</p>

<p>3. Obligations of Receiving Party. Receiving Party shall hold and maintain the Confidential
Information in strictest confidence for the sole and exclusive benefit of the Disclosing Party.
Receiving Party shall carefully restrict access to Confidential Information to employees,
contractors and third parties as is reasonably required and shall require those persons to sign
nondisclosure restrictions at least as protective as those in this Agreement. Receiving Party
shall not, without the prior written approval of Disclosing Party, use for Receiving Party's benefit,
publish, copy, or otherwise disclose to others, or permit the use by others for their benefit or to
the detriment of Disclosing Party, any Confidential Information. Receiving Party shall return to
Disclosing Party any and all records, notes, and other written, printed, or tangible materials in its
possession pertaining to Confidential Information immediately if Disclosing Party requests it in
writing.</p>


<p>4. Time Periods. The nondisclosure provisions of this Agreement shall survive the termination
of this Agreement and Receiving Party's duty to hold Confidential Information in confidence
shall remain in effect until the Confidential Information no longer qualifies as a trade secret or
until Disclosing Party sends Receiving Party written notice releasing Receiving Party from this
Agreement, whichever occurs first.</p>

<p>5. Relationships. Nothing contained in this Agreement shall be deemed to constitute either
party a partner, joint venture or employee of the other party for any purpose.</p>

<p>6. Severability. If a court finds any provision of this Agreement invalid or unenforceable, the
remainder of this Agreement shall be interpreted so as best to affect the intent of the parties.</p>

<p>
	7. Integration. This Agreement expresses the complete understanding of the parties with
respect to the subject matter and supersedes all prior proposals, agreements, representations,
and understandings. This Agreement may not be amended except in writing signed by both
parties.
</p>

<p>
	8. Waiver. The failure to exercise any right provided in this Agreement shall not be a waiver of
prior or subsequent rights.
</p>

<p>
	9. Notice of Immunity. Employee is provided notice that an individual shall not be held
criminally or civilly liable under any federal or state trade secret law for the disclosure of a trade
</p>

<p>secret that is made (i) in confidence to a federal, state, or local government official, either
directly or indirectly, or to an attorney; and (ii) solely for the purpose of reporting or investigating
a suspected violation of law; or is made in a complaint or other document filed in a lawsuit or
other proceeding, if such filing is made under seal. An individual who files a lawsuit for
retaliation by an employer for reporting a suspected violation of law may disclose the trade
secret to the attorney of the individual and use the trade secret information in the court
proceeding, if the individual (i) files any document containing the trade secret under seal; and (ii)
does not disclose the trade secret, except pursuant to court order.
This Agreement and each party's obligations shall be binding on the representatives, assigns
and successors of such party. Each party has signed this Agreement through its authorized
representative.</p>

<div class="text-center">
	<p>Date : <?php echo date('Y-m-d');?></p>
</div>

<br>
<br>
<div class="text-center">
	<p><?=$this->lang('sing_hare')?></p>
	<canvas style="border:1px solid black;"></canvas>
	<br>
	<button type="button" onclick="nda_result()" class="btn btn-info"><i class="fa fa-check"></i><?=$this->lang('accept')?></button>
	<button type="button" onclick="nda_print()" class="btn btn-info"><i class="fa fa-print"></i> <?=$this->lang('print')?></button>

</div>




      </div>
      <div class="modal-footer text-center">
        
      </div>
    </div>

  </div>
</div>


<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA4t0H-v4nvmCqAsiRIVIE2ezt9WO64CeQ&libraries=places&callback=initAutocomplete" async defer></script>
<script src="https://cdn.jsdelivr.net/npm/signature_pad@2.3.2/dist/signature_pad.min.js"></script>


<script type="text/javascript">


	function initAutocomplete(){

	}
	
</script>

 <script type="text/javascript">
  Dropzone.autoDiscover = false;

  var myDropzone = new Dropzone("div#dropzone", { url: "<?=$this->siteUrl()?>/<?=$this->client_url()?>/process_tmp_file_upload"});

  myDropzone.on("success", function(file,response) {
   console.log(response);
   preview_file(response);
  });



  function preview_file(response){

  	try {
  		var obj = JSON.parse(response);
	}
	catch(err) {
	 alert('Fail To Upload !');
	 return false;
	}



	if (obj.status==1){

		swal("success !", "File Added !", "success");

		var btn_string = '<button class="btn btn-danger" type="button" onclick="remove(this)"  ><i class="fa fa-times"></i></button><input type="hidden" name="files[]" value="'+obj.file+'">';

		var explode = obj.file.toLowerCase().split(".");

		var ext = "";

		$.each(explode, function( index, value ) {
		  ext = value;
		});


		if (ext=='obj' || ext=='stl'){

			var string = '<div class="col-md-4">'+btn_string+'<iframe  height="300" src="<?=$this->siteUrl()?>/<?=$this->themePath()?>/<?=$this->theme()?>/assets/plugins/STL/draw.php?file='+obj.file+'"></iframe></div>';

			$('#preview_zone').append(string);

		}

		if (ext=='jpg' || ext=='png'){

			var string = '<div class="col-md-4">'+btn_string+'<image  style="width:100%" src="<?php echo $this->siteUrl()."/uploads/jobs/";?>'+obj.file+'"></div>';

			$('#preview_zone').append(string);

		}


		if (ext!='obj' && ext!='stl' && ext!='jpg' && ext!='png'){

			var string = '<div class="col-md-4">'+btn_string+'<br/><br/><h3>'+obj.file+'</h3></div>';

			$('#preview_zone').append(string);

		}

	}



  }



  function remove(ele){

  	$(ele).parent().remove();


  }



  
</script>



<script type="text/javascript">


	


	function validate(eve){

		var  service_id = $('#service_id').val();

		if (service_id=="") {
			eve.preventDefault();

			swal("Invalid <?=$this->lang('service_category')?>", "Please Select One", "error");

  			return false;
		}

	}

	var serviceOBJ = {};
	var Service_subs = [];
	var temp_obj;
	var tryJSOBJ;

	<?php foreach ($data["services"] as $valSERVICE) { ?>
		temp_obj = {};
		try {
			  tryJSOBJ = JSON.parse('<?php echo $valSERVICE['material'];?>');
			  temp_obj.material = tryJSOBJ;
			}
		catch(err) {
			console.log(err);
		}

		try {
			  tryJSOBJ = JSON.parse('<?php echo $valSERVICE['type'];?>');
			  temp_obj.type = tryJSOBJ;
			}
		catch(err) {
			console.log(err);
		}

		try {
			  tryJSOBJ = JSON.parse('<?php echo $valSERVICE['layer_height'];?>');
			  temp_obj.layer_height = tryJSOBJ;
			}
		catch(err) {
			console.log(err);
		}

		try {
			  tryJSOBJ = JSON.parse('<?php echo $valSERVICE['infil'];?>');
			  temp_obj.infil = tryJSOBJ;
			}
		catch(err) {
			console.log(err);
		}

		try {
			  tryJSOBJ = JSON.parse('<?php echo $valSERVICE['fininshings'];?>');
			  temp_obj.fininshings = tryJSOBJ;
			}
		catch(err) {
			console.log(err);
		}

		try {
			  tryJSOBJ = JSON.parse('<?php echo $valSERVICE['color'];?>');
			  temp_obj.color = tryJSOBJ;
			}
		catch(err) {
			console.log(err);
		}

		try {
			  tryJSOBJ = JSON.parse('<?php echo $valSERVICE['postage'];?>');
			  temp_obj.postage = tryJSOBJ;
			}
		catch(err) {
			console.log(err);
		}

		serviceOBJ["<?php echo $valSERVICE['id']?>"] = temp_obj;



		
	<?php } ?>

	//console.log(serviceOBJ);


	


	function reflect(ele){
		$('#dropdown_name').html($(ele).data('name'));
		$('#service_id').val($(ele).data('id'));

		var FormString = "";

		$.each(serviceOBJ, function( srvKey, srvVAL ) {
			if (srvKey==$(ele).data('id')){

			  $.each(srvVAL, function( intKey, intVAL ) {
			  	var sub_OPS = '<option value="" >select</option>';
			  	
			 
			  		$.each(intVAL, function( opsKey, opsVAL ) {
					  	var neme = intKey.replace("_", " ");
						  sub_OPS += '<option>'+opsVAL+'</option>';
					   });

			  	var neme = intKey.replace("_", " ");
				  FormString += '<div class="col-sm-3 col-md-3 form-group"><label>'+neme+'</label>'+
				  '<select class="form-control" name="'+intKey+'">'+
				  ''+sub_OPS+''+
				  '</select></div>';
			   });
		  	}

		});

		$('#form_zone').html(FormString);

	}



	// function show_details(){

	// 	var service_id = $('#service_id').val();

	// 	$.each(objServices, function( index, objVAL ) {
	// 	  if (objVAL.id==service_id) {

	// 	  	var show_string = '';

	// 	  	var table_header = "";
	// 	  	var table_body = "";


	// 	  	if (objVAL.material!="") {
	// 	  		table_header +="<th>Material</th>";
	// 	  		table_body +='<td>'+objVAL.material+'</td>';
	// 	  	}

	// 	  	if (objVAL.type!="") {
	// 	  		table_header +="<th>Type</th>";
	// 	  		table_body +='<td>'+objVAL.type+'</td>';
	// 	  	}

	// 	  	if (objVAL.layer_height!="") {
	// 	  		table_header +="<th>Layer Height</th>";
	// 	  		table_body +='<td>'+objVAL.layer_height+'</td>';
	// 	  	}

	// 	  	if (objVAL.infil!="") {
	// 	  		table_header +="<th>Infil</th>";
	// 	  		table_body +='<td>'+objVAL.infil+'</td>';
	// 	  	}

	// 	  	if (objVAL.fininshings!="") {
	// 	  		table_header +="<th>Fininshings</th>";
	// 	  		table_body +='<td>'+objVAL.fininshings+'</td>';
	// 	  	}

	// 	  	if (objVAL.color!="") {
	// 	  		table_header +="<th>Color</th>";
	// 	  		table_body +='<td>'+objVAL.color+'</td>';
	// 	  	}

	// 	  	if (objVAL.description!="") {
	// 	  		table_header +="<th>Description</th>";
	// 	  		table_body +='<td>'+objVAL.description+'</td>';
	// 	  	}

	// 	  	var tbl = '<label>Details</label><table class="table table-bordered"><thead><tr>'+table_header+'</tr></thead><tbody><tr>'+table_body+'</tr></tbody></table>';

	// 	  	$('#show_zone').html(tbl);


	// 	  }
	// 	});


	// }




</script>


<script type="text/javascript">
	var canvas = document.querySelector("canvas");

	var signaturePad = new SignaturePad(canvas);
	signaturePad.penColor = "rgb(66, 133, 244)";
	signaturePad.backgroundColor = "rgb(66, 133, 244)";

	signaturePad.on();

	function nda_result(){

		if (signaturePad.isEmpty()==true){
			swal("error !", "<?=$this->lang('please_sign_nda')?>!", "error");
			return false;
		}

		$('#ndaModal').modal('hide');

		$('#nda').val(signaturePad.toDataURL("image/jpeg"));
		
	}


	function nda_print(){

		if (signaturePad.isEmpty()==true){
			swal("error !", "<?=$this->lang('please_sign_nda')?>!", "error");
			return false;
		}

		window.print();

		
	}


	

	// Returns signature image as data URL (see https://mdn.io/todataurl for the list of possible parameters)
//	signaturePad.toDataURL(); // save image as PNG
//	signaturePad.toDataURL("image/jpeg"); // save image as JPEG
//	signaturePad.toDataURL("image/svg+xml"); // save image as SVG

	// Draws signature image from data URL.
	// NOTE: This method does not populate internal data structure that represents drawn signature. Thus, after using #fromDataURL, #toData won't work properly.
//	signaturePad.fromDataURL("data:image/png;base64,iVBORw0K...");

	// Returns signature image as an array of point groups
//	const data = signaturePad.toData();

	// Draws signature image from an array of point groups
//	signaturePad.fromData(data);

	// Clears the canvas
//	signaturePad.clear();

	// Returns true if canvas is empty, otherwise returns false
//	signaturePad.isEmpty();

	// Unbinds all event handlers
//	signaturePad.off();

	// Rebinds all event handlers
//	signaturePad.on();
</script>




<script src="https://maps.googleapis.com/maps/api/js?key=<?php echo GOOGLE_MAP_API;?>&libraries=places&callback=initAutocomplete"
        async defer></script>


<script type="text/javascript">
	var placeSearch, autocomplete;
	var placeSearch2, autocomplete2;

var componentForm = {
  street_number: 'short_name',
  route: 'long_name',
  locality: 'long_name',
  administrative_area_level_1: 'short_name',
  country: 'long_name',
  postal_code: 'short_name'
};

function initAutocomplete() {

  autocomplete = new google.maps.places.Autocomplete(
      document.getElementById('shipping_address'), {types: ['geocode']});
  autocomplete.setFields(['address_component']);
  autocomplete.addListener('place_changed', fillInAddress);

}
</script>
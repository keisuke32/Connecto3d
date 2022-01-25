
	 	
	 	  <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
 
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h2><?=$this->lang('nda')?></h2>
        </section>

        <!-- Main content -->
        <section class="content">	 	
		 <div class="row">	
          
		 <div class="col-lg-12">	 		


		 		<div class="box box-info">
                <div class="box-header">
                </div><!-- /.box-header -->
                <div class="box-body">

                	<div class="text-center">
                		<h1><?=$this->lang('nda')?></h1>
   
             	</div>

 $CLIENT = array();

<?php 

foreach ($data['users'] as $user) {
	if($data['job'][0]['user_id']==$user['id']){
		$CLIENT =  $user;
	}
}



?>


                		<p>This Nondisclosure Agreement (the "Agreement") is entered into by and between
"<?php echo $CLIENT['name']; ?>" with its principal offices at "<?php echo $CLIENT['email'];?>/<?php echo decrypt_text($CLIENT['shipping_address']);?>", ("Disclosing Party") and CONNECTO3D , located at http://connecto3d.com ("Receiving Party") for the purpose of
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
	<p>Date : <?php echo $data['job'][0]['created_at'];?></p>
</div>

<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-4">
		<img style="width: 100%;" src="<?=$this->siteUrl()?>/uploads/nda/<?php echo $data['job'][0]['nda']; ?>">
	</div>
</div>


              

		<br/>



				<br/>
		
			 
	    </div><!-- /.row -->		  		  
	   </section><!-- /.content -->
      </div><!-- /.content-wrapper -->


<?php

namespace Fir\Models;

class Theme extends Model {
			
    /**
     * Get the theme details requested
     *
     */
    public function get($name) {

		$query = $this->db->select("theme", "*", ["name" => $name]);	
        foreach($query as $row){}		
		  
		return $row;  
    }
	
    /**
     * Update the Theme(Boxplace)
     *
     */
    public function update($title, $sub_title, $project_search, $freelancer_search, $id) {

		$Update = $this->db->update('theme',[
		   'title' => $title,
		   'sub_title' => $sub_title,
		   'project_search' => $project_search,
		   'freelancer_search' => $freelancer_search,
		],[
		    'id' => $id
		  ]);
		  
		return $Update->rowCount();  
    }
	
    /**
     * Update the Bg Image One
     *
     */
    public function changeImage($filename, $id) {

		$Update = $this->db->update('theme',[
		   'bg_image_one' => $filename
		],[
		    'id' => $id
		  ]);
		  
		return $Update->rowCount();  
    }
	
    /**
     * Update the Bg Image Two
     *
     */
    public function changeImageTwo($filename, $id) {

		$Update = $this->db->update('theme',[
		   'bg_image_two' => $filename
		],[
		    'id' => $id
		  ]);
		  
		return $Update->rowCount();  
    }
	

	
	
}
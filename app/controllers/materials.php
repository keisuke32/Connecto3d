<?php

namespace Fir\Controllers;

class Materials extends Controller
{
    /**
     * This would be your http://localhost/project-name/ index page
     *
     * @return array
     */
    protected $admin;
	
    public function index()
    {
        /**
         * The $data array stores all the data that is passed to the views
         */
        $data = [];
		
		/* Use Settings Model */
		$settingsModel = $this->model('Settings');
        $data['settings'] = $settingsModel->get();
        $data['materials'] = json_encode($this->model('Common_model')->get('service_material'));

        return ['content' => $this->view->render($data, 'home/materials')];
    }
	
}
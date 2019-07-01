<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require(APPPATH.'../libraries/REST_Controller.php');
class Api extends REST_Controller

{
	class Employees extends Persons{

    public function __construct() {
            parent::__construct();
            $this->load->model('Employee');

    }

    public function save($employee_id = -1)
	{
		$first_name = $this->xss_clean($this->input->post('first_name'));
		$last_name = $this->xss_clean($this->input->post('last_name'));
		$email = $this->xss_clean(strtolower($this->input->post('email')));

		// format first and last name properly
		$first_name = $this->nameize($first_name);
		$last_name = $this->nameize($last_name);

		$person_data = array(
			'first_name' => $first_name,
			'last_name' => $last_name,
			'gender' => $this->input->post('gender'),
			'email' => $email,
			'phone_number' => $this->input->post('phone_number'),
			'address_1' => $this->input->post('address_1'),
			'address_2' => $this->input->post('address_2'),
			'city' => $this->input->post('city'),
			'state' => $this->input->post('state'),
			'zip' => $this->input->post('zip'),
			'country' => $this->input->post('country'),
			'comments' => $this->input->post('comments'),
		);

		$grants_array = array();
		foreach($this->Module->get_all_permissions()->result() as $permission)
		{
			$grants = array();
			$grant = $this->input->post('grant_'.$permission->permission_id) != NULL ? $this->input->post('grant_'.$permission->permission_id) : '';
			if($grant == $permission->permission_id)
			{
				$grants['permission_id'] = $permission->permission_id;
				$grants['menu_group'] = $this->input->post('menu_group_'.$permission->permission_id) != NULL ? $this->input->post('menu_group_'.$permission->permission_id) : '--';
				$grants_array[] = $grants;
			}
		}

		//Password has been changed OR first time password set
		if($this->input->post('password') != '')
		{
			$exploded = explode(":", $this->input->post('language'));
			$employee_data = array(
				'username' 	=> $this->input->post('username'),
				'password' 	=> password_hash($this->input->post('password'), PASSWORD_DEFAULT),
				'hash_version' 	=> 2,
				'language_code' => $exploded[0],
				'language' 	=> $exploded[1]
			);
		}
		else //Password not changed
		{
			$exploded = explode(":", $this->input->post('language'));
			$employee_data = array(
				'username' 	=> $this->input->post('username'),
				'language_code'	=> $exploded[0],
				'language' 	=> $exploded[1]
			);
		}

		if($this->Employee->save_employee($person_data, $employee_data, $grants_array, $employee_id))
		{
			// New employee
			if($employee_id == -1)
			{
				echo json_encode(array('success' => TRUE,
								'message' => $this->lang->line('employees_successful_adding') . ' ' . $first_name . ' ' . $last_name,
								'id' => $this->xss_clean($employee_data['person_id'])));
			}
			else // Existing employee
			{
				echo json_encode(array('success' => TRUE,
								'message' => $this->lang->line('employees_successful_updating') . ' ' . $first_name . ' ' . $last_name,
								'id' => $employee_id));
			}
		}
		else // Failure
		{
			echo json_encode(array('success' => FALSE,
							'message' => $this->lang->line('employees_error_adding_updating') . ' ' . $first_name . ' ' . $last_name,
							'id' => -1));
		}
	}

}
}
?>
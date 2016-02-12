package net.javabeat.springdata.repo;

import net.javabeat.springdata.jpa.data.Employee;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends CrudRepository<Employee, Integer>{
	public Employee findByEmployeeId(Integer id);
}

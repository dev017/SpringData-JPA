package net.javabeat.springdata.executable;

import net.javabeat.springdata.beans.RegistrationBean;
import net.javabeat.springdata.jpa.data.Address;
import net.javabeat.springdata.jpa.data.Employee;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Executable {
	public static void main(String [] args){
		// Acquire Context
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("SpringContext.xml");
		// Get RegistrationBean That Defined
		RegistrationBean registrationBean = (RegistrationBean)context.getBean("registrationBean");
		// Create Employee
		Employee employee = new Employee();
		employee.setEmployeeId(1);
		employee.setEmployeeName("Susa Hurbert");
		// Create Address
		Address address = new Address();
		address.setAddressId(1);
		address.setAddressCountry("United Kingdom");
		address.setAddressCity("London");
		address.setEmployee(employee);
		employee.setAddress(address);
		// Persist Using EmployeeRepository
		registrationBean.getEmployeeReposigtory().save(employee);
		// Find By Employee Id
		Employee emp = registrationBean.getEmployeeReposigtory().findByEmployeeId(1);	
		// Close context
		context.close();
	}
}

package dwz.persistence.beans;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * SysUser generated by MyEclipse Persistence Tools
 */

public class SysUser implements java.io.Serializable {

	// Fields

	private String	id;
	private String	title;
	private String	userName;
	private String	password;
	private String	userType;
	private String	firstName;
	private String	lastName;
	private String  postcode;
	private String	email;
	private String	phone;
	private String	status;
	private Date	birthDate;
	private Date	insertDate;
	private Date	updateDate;
	private String	insertBy;
	private Set		sysUserRoles	= new HashSet(0);

	// Constructors

	/** default constructor */
	public SysUser() {
	}

	/** minimal constructor */
	public SysUser(String userName, String userType, String status,
			Date insertDate, Date updateDate, String insertBy) {
		this.userName = userName;
		this.userType = userType;
		this.status = status;
		this.insertDate = insertDate;
		this.updateDate = updateDate;
		this.insertBy = insertBy;
	}

	/** full constructor */
	public SysUser(String title, String userName, String password,
			String userType, String firstName, String lastName, String email,
			String phone, String status, Date birthDate, Date insertDate,
			Date updateDate, String insertBy, Set sysUserRoles) {
		this.title = title;
		this.userName = userName;
		this.password = password;
		this.userType = userType;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.status = status;
		this.birthDate = birthDate;
		this.insertDate = insertDate;
		this.updateDate = updateDate;
		this.insertBy = insertBy;
		this.sysUserRoles = sysUserRoles;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserType() {
		return this.userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getBirthDate() {
		return this.birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public Date getInsertDate() {
		return this.insertDate;
	}

	public void setInsertDate(Date insertDate) {
		this.insertDate = insertDate;
	}

	public Date getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public Set getSysUserRoles() {
		return this.sysUserRoles;
	}

	public void setSysUserRoles(Set sysUserRoles) {
		this.sysUserRoles = sysUserRoles;
	}

	public String getInsertBy() {
		return insertBy;
	}

	public void setInsertBy(String insertBy) {
		this.insertBy = insertBy;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

}
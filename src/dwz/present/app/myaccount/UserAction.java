package dwz.present.app.myaccount;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;

//import org.apache.commons.mail.EmailException;

import dwz.constants.BeanManagerKey;
import dwz.constants.MailTemplateKey;
import dwz.framework.context.AppContextHolder;
import dwz.framework.core.exception.ValidateFieldsException;
import dwz.framework.core.factory.BusinessFactory;
//import dwz.framework.mail.Mail;
//import dwz.framework.mail.MailManager;
import dwz.framework.user.User;
import dwz.framework.user.UserManager;
import dwz.present.BaseAction;

public class UserAction extends BaseAction {
	private String uid = null;

	private String oldPassword;
	private String password;
	private String userName;
	private String email;
	private String postcode;
	private String phone;
	private String title;
	private String firstName;
	private String lastName;
	private Date birthDate;

	public String changePwd() throws IOException, ServletException {

		if (getOldPassword() == null || "".equals(getOldPassword().trim())) {
			return ajaxForwardError("msg.oldpassword.invalid");
		}

		User user = AppContextHolder.getContext().getUser();

		try {
			UserManager uManager = bf.getManager(BeanManagerKey.userManager);
			uManager.changePassword(user, getOldPassword(), getPassword());

		} catch (ValidateFieldsException e) {
			return ajaxForwardError(e.getLocalizedMessage());
		}

		return ajaxForwardSuccess("msg.operation.success");
	}

	public String updUser() {
		try {

			UserManager manager = bf.getManager(BeanManagerKey.userManager);
			User user = AppContextHolder.getContext().getUser();

			user.setFirstName(getFirstName());
			user.setLastName(getLastName());
			user.setTitle(getTitle());
			user.setEmail(getEmail());
			user.setPostcode(postcode);
			user.setPhone(getPhone());

			user.setBirthDate(birthDate);

			manager.updateUser(user);
			getAppContext().setUser(user);

		} catch (ValidateFieldsException e) {
			return ajaxForwardError(e.getLocalizedMessage());
		}

		return ajaxForwardSuccess("msg.operation.success");
	}

	public String forgetPassword() {
		if (!this.verifyValidationCode(this.getValidationCode())) {
			return ajaxForwardError("msg.validation.code.match");
		}
		UserManager manager = bf.getManager(BeanManagerKey.userManager);
		User user = null;
		try {
			user = manager.getUserByName(this.getUserName());
			//sendMailForgetPassword(user);
		} catch (Exception e) {
			e.printStackTrace();
			return ajaxForwardError("msg.operation.failure");
		}

		return ajaxForwardSuccess("msg.operation.success");
	}

	

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

}

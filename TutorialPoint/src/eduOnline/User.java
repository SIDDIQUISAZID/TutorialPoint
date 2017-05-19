package eduOnline;

public class User {
		
		String username, fname,lname,email,password,gender,dob,country,city,mobile,course1,course2,course3,course4,course5;
			
			
			public User(String username, String fname,String lname,String email, String password, String gender,String dob,String country, String city, String mobile){
				
				this.username=username;
				this.fname=fname;
				this.lname=lname;
				this.email=email;
				this.password=password;
				this.gender=gender;
				this.dob=dob;
				this.country=country;
				this.city=city;
				this.mobile=mobile;
			}

			public String getUsername() {
				return username;
			}

			public void setUname(String username) {
				this.username = username;
			}

			public String getFname() {
				return fname;
			}

			public void setFname(String fname) {
				this.fname = fname;
			}

			public String getLname() {
				return lname;
			}

			public void setLname(String lname) {
				this.lname = lname;
			}

			public String getEmail() {
				return email;
			}

			public void setEmail(String email) {
				this.email = email;
			}

			public String getPassword() {
				return password;
			}

			public void setPassword(String password) {
				this.password = password;
			}

			public String getGender() {
				return gender;
			}

			public void setGender(String gender) {
				this.gender = gender;
			}

			public String getDob() {
				return dob;
			}

			public void setDob(String dob) {
				this.dob = dob;
			}

			public String getCountry() {
				return country;
			}

			public void setCountry(String country) {
				this.country = country;
			}

			public String getCity() {
				return city;
			}

			public void setCity(String city) {
				this.city = city;
			}

			public String getMobile() {
				return mobile;
			}

			public void setMobile(String mobile) {
				this.mobile = mobile;
			}
			
			public String getCourse1() {
				return course1;
			}

			public void setCourse1(String course1) {
				this.course1 = course1;
			}

			public String getCourse2() {
				return course2;
			}

			public void setCourse2(String course2) {
				this.course2 = course2;
			}

			public String getCourse3() {
				return course3;
			}

			public void setCourse3(String course3) {
				this.course3 = course3;
			}

			public String getCourse4() {
				return course4;
			}

			public void setCourse4(String course4) {
				this.course4 = course4;
			}

			public String getCourse5() {
				return course5;
			}

			public void setCourse5(String course5) {
				this.course5 = course5;
			}

}

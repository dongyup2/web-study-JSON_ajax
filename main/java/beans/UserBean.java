package beans;

public class UserBean {
    private String name;
    private int age;
    private String tel;

    public UserBean() {}

    public UserBean(String name, int age, String tel) {
		super();
		this.name = name;
		this.age = age;
		this.tel = tel;
	}


	public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getAge() {
        return age;
    }
    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    @Override
    public String toString() {
        return "{\"name\":\"" + name + "\",\"age\":" + age + ", \"tel\": \"" + tel + "\"}";
    }
}

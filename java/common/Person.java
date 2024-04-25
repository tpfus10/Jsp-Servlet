package common;//기본 패키지 이외의 패키지(규약 1번)

public class Person {
	//private 멤버 변수(규약 2번)
	private String name;
	private int age;
	private String job;
	
	//기본 생성자(규약 3번)
	public Person() {}
	
	public Person(String name, int age, String job) {
		super();
		this.name = name;
		this.age = age;
		this.job = job;
	}

	//public 게터/세터 메서드들(규약 4번, 5번)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}
}

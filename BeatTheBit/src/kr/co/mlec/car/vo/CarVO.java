package kr.co.mlec.car.vo;

public class CarVO {

	private int 	no;		// 차량 고유번호(DB에 기재된 기준)
	private String 	name;	// 모델명
	private int		price;	// 가격
	private int 	displ;	// 배기량
	private int		year;	// 제작연도
	private String 	type;	// 구동방식(전륜, 후륜, 4륜)
	private int		spec;	// 능력치(승패 결정)
	private String 	grade;	// 등급(경차 ~ 대형)
	private String	property;// 소유여부(Y, N)
	
	
	public CarVO() {
		super();
	}


	public CarVO(int no, String name, int price, int displ, int year, String type, int spec, String grade,
			String property) {
		super();
		this.no = no;
		this.name = name;
		this.price = price;
		this.displ = displ;
		this.year = year;
		this.type = type;
		this.spec = spec;
		this.grade = grade;
		this.property = property;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public int getDispl() {
		return displ;
	}


	public void setDispl(int displ) {
		this.displ = displ;
	}


	public int getYear() {
		return year;
	}


	public void setYear(int year) {
		this.year = year;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public int getSpec() {
		return spec;
	}


	public void setSpec(int spec) {
		this.spec = spec;
	}


	public String getGrade() {
		return grade;
	}


	public void setGrade(String grade) {
		this.grade = grade;
	}


	public String getProperty() {
		return property;
	}


	public void setProperty(String property) {
		this.property = property;
	}


	@Override
	public String toString() {
		return "CarVO [no=" + no + ", name=" + name + ", price=" + price + ", displ=" + displ + ", year=" + year
				+ ", type=" + type + ", spec=" + spec + ", grade=" + grade + ", property=" + property + "]";
	}

	
	

}

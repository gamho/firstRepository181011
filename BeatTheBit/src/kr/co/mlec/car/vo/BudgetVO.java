package kr.co.mlec.car.vo;

public class BudgetVO {

	private int money;	// ¿‹∞Ì

	public BudgetVO() {
		super();
	}

	@Override
	public String toString() {
		return "BudgetVO [money=" + money + "]";
	}

	public BudgetVO(int money) {
		super();
		this.money = money;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}
	
	
	
}

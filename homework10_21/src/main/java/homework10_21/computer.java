package homework10_21;

public class computer {
	double numberOne, numberTwo, result;
	String operator = "+";

	public double getNumberOne() {
		return numberOne;
	}

	public void setNumberOne(double numberOne) {
		this.numberOne = numberOne;
	}

	public double getNumberTwo() {
		return numberTwo;
	}

	public void setNumberTwo(double numberTwo) {
		this.numberTwo = numberTwo;
	}

	public double getResult() {
		if (operator.equals("+"))
			result = numberOne + numberTwo;
		else if (operator.equals("-"))
			result = numberOne - numberTwo;
		else if (operator.equals("*"))
			result = numberOne * numberTwo;
		else if (operator.equals("/"))
			result = numberOne / numberTwo;
		return result;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

}

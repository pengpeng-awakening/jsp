package homework10_21;

public class Triangle {
	double sideA, sideB, sideC, area = -1;
	boolean triangle;

	public double getSideA() {
		return sideA;
	}

	public void setSideA(double sideA) {
		this.sideA = sideA;
	}

	public double getSideB() {
		return sideB;
	}

	public void setSideB(double sideB) {
		this.sideB = sideB;
	}

	public double getSideC() {
		return sideC;
	}

	public void setSideC(double sideC) {
		this.sideC = sideC;
	}

	public double getArea() {
		double p = (sideA + sideB + sideC) / 2;
		if (isTriangle()) {
			area = Math.sqrt(p * (p - sideA) * (p - sideB) * (p - sideC));
			return area;
		}
		return area;
	}

	public void setArea(double area) {
		this.area = area;
	}

	public boolean isTriangle() {
		if (sideA + sideB > sideC && sideB + sideC > sideA && sideA + sideC > sideB)
			return true;
		else
			return false;
	}

}

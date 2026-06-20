package DataStructures_Algorithms.FinancialForecasting;

public class ForecastTest {
    public static void main(String[] args){
        double currentValue = 10000;
        double growthRate = 0.10;
        int years = 5;

        double futureValue = FinancialForecast.calculateFutureValue(currentValue, growthRate, years);

        System.out.println("Future value = " + futureValue);
    }
}

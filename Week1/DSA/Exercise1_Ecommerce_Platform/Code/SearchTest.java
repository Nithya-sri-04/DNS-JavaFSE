public class SearchTest {
    public static void main(String[] args){
        Product[] products = {
                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Mobile", "Electronics"),
                new Product(103, "Shoes", "Fashion"),
                new Product(104, "Watch", "Accessories"),
                new Product(105, "Book", "Education")
        };
        Product result1 = SearchAlgorithms.linearsearch(products, 103);

        if(result1 != null){
            System.out.println("Linear Search Found: " + result1.productName);
        } else {
            System.out.println("Product Not Found");
        }
        Product result2 = SearchAlgorithms.binarysearch(products, 104);

        if(result2 != null){
            System.out.println("Binary Search Found: " + result2.productName);
        } else {
            System.out.println("Product Not Found");
        }
    }
}

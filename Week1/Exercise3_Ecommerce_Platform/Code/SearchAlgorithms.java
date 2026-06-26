public class SearchAlgorithms {
    public static Product linearsearch(Product[] products, int id){
        for(Product product : products){
            if(product.productId == id){
                return product;
            }
        }
        return null;
    }
    public static Product binarysearch(Product[] products, int id){
        int left = 0;
        int right = products.length - 1;

        while(left <= right){
            int mid = (left + right) / 2;
            if(products[mid].productId == id){
                return products[mid];
            }
            if(products[mid].productId < id){
                left = mid + 1;
            } else{
                right = mid - 1;
            }
        }
        return null;
    }
}

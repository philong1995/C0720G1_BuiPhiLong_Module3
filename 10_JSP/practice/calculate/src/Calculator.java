public class Calculator {
    public static float calculate(float soThuNhat, float soThuHai, char phepTinh ){
        switch (phepTinh){
            case '+':
                return soThuNhat + soThuHai;
            case '-':
                return soThuNhat - soThuHai;
            case '*':
                return soThuNhat * soThuHai;
            case '/':
                if(soThuHai != 0)
                    return soThuNhat / soThuHai;

                else
                    throw new RuntimeException("Không thể chia cho 0");
            default:
                throw new RuntimeException("Không hợp lệ");
        }
    }
}
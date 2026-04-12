import java.util.Arrays;

class ReverseString {

    String reverse(String inputString) {
        var builder = new StringBuilder();

        return builder
                .append(inputString)
                .reverse()
                .toString();
    }
}

class SqueakyClean {
    static String clean(String identifier) {

        if (identifier.isEmpty()) return "";

        StringBuilder builder = new StringBuilder();
        String processed = identifier.replace(' ', '_');

        int j = processed.indexOf('-');
        char c = processed.charAt(j + 1);
        String replaced = processed.replaceAll("-" + c, String.valueOf(Character.toUpperCase(c)));

        for (int i = 0; i < replaced.length(); i++) {
            char character = replaced.charAt(i);

            if (Character.isISOControl(character)) {
                builder.append("CTRL");
                continue;
            }

            if (!Character.isLetter(character) && character != '_') {
                continue;
            }

            if (character >= 'α' && character <= 'ω') {
                continue;
            }

            builder.append(character);
        }

        return builder.toString();
    }
}

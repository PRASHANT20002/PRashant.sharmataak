package be.ucll.domain.model;

public class Entertainment {

    private String naam, type ;
    private String genre;
    private int seizoenen;

    public Entertainment(String naam, String type, String genre, int seizoenen) {
        setNaam(naam);
        setType(type);
        setGenre(genre);
        setSeizoenen(seizoenen);
    }

    public Entertainment() {

    }

    public static boolean isValidString(String input) {
        return (input != null) && !(input.trim().isEmpty());
    }

    public String getNaam() {
        return naam;
    }

    public void setNaam(String naam) {
        if (isValidString(naam))
            this.naam = naam;
        else throw new IllegalArgumentException("No valid name");
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        if (isValidString(type))
            this.type = type;
        else throw new IllegalArgumentException("No valid type");
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        if (isValidString(genre))
            this.genre = genre;
        else throw new IllegalArgumentException("No valid genre");
    }

    public int getSeizoenen() {
        return seizoenen;
    }

    public static boolean isValidSeizoen(int seizoenen) {
        return seizoenen > 0;
    }

    public void setSeizoenen(int seizoenen) {
        if (isValidSeizoen(seizoenen))
            this.seizoenen = seizoenen;
        else throw new IllegalArgumentException("No valid seizoenen");
    }
}




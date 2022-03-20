package be.ucll.domain.db;

import be.ucll.domain.model.Entertainment;

import java.util.ArrayList;

public class EntertainmentDB {
    private final ArrayList<Entertainment> entertainments = new ArrayList<Entertainment>();

    public EntertainmentDB() {


        this.voegToe(new Entertainment("Naruto", "anime", "actie", 2));
        this.voegToe(new Entertainment("Lord of the rings", "film", "avontuur", 1));
        this.voegToe(new Entertainment("Game of thrones", "series", "drama", 8));

    }
    public void voegToe(Entertainment dier) {
        entertainments.add(dier);
    }


    public Entertainment getMeesteSeizoenen() {
        if (entertainments.size() == 0)
            return null;
        Entertainment meesteSeizoenen = entertainments.get(0);
        for (Entertainment student : entertainments) {
            if (student.getSeizoenen() > meesteSeizoenen.getSeizoenen())
                meesteSeizoenen = student;
        }
        return meesteSeizoenen;
    }


    public ArrayList<Entertainment> getStudents() {
        return entertainments;
    }


    public Object getAll() {
        return entertainments;
    }
    public Entertainment vind(String naam) {
        if (naam == null || naam.isEmpty())
            throw new IllegalArgumentException("Naam mag niet leeg zijn");
        for (Entertainment entertainment : entertainments) {
            if (entertainment.getNaam().contains(naam))
                return entertainment;
        }
        return null;
    }


}
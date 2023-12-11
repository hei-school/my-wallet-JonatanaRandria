package src.model;

import java.util.ArrayList;
import java.util.List;
import model.common.WalletObject;

public class Pocket {
    private final List<WalletObject> objects;
    private final int number;

    public Pocket(int number) {
        this.objects = new ArrayList<>();
        this.number = number;
    }

    public List<WalletObject> getObjects() {
        return objects;
    }

    public int getNumber() {
        return number;
    }

    public void empty() {
        objects.clear();
    }

    public void putObject(WalletObject object) {
        objects.add(object);
    }

    public void retrieveObject(WalletObject object) {
        objects.remove(object);
    }


    @Override
    public String toString() {
        return "Pocket{" +
                "objects=" + objects +
                ", number=" + number +
                '}';
    }
}
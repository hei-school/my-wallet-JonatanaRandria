package model.common;

public class WalletObject {
    private final int id;
    private boolean isLost;

    public WalletObject(int id) {
        this.id = id;
    }

    public boolean isLost() {
        return isLost;
    }

    public void setLost(boolean lost) {
        isLost = lost;
    }

    public int getId() {
        return id;
    }
}

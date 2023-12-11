package utils;
import java.util.Scanner;
import model.Card;
import model.Money;
import model.Wallet;

import static model.common.CardType.CREDIT_CARD;
import static model.common.CardType.DRIVING_CARD;
import static model.common.CardType.NI_CARD;
import static model.common.CardType.VISIT_CARD;
public class InputUtils {
    public static void consoleUtils(){
        String menu=  "\n" +
                "                                __           __                 \n" +
                "  ____           ______   ____ |  | __ _____/  |_____________   \n" +
                "_/ __ \\   ______ \\____ \\ /  _ \\|  |/ // __ \\   __\\_  __ \\__  \\  \n" +
                "\\  ___/  /_____/ |  |_> >  <_> )    <\\  ___/|  |  |  | \\// __ \\_\n" +
                " \\___  >         |   __/ \\____/|__|_ \\\\___  >__|  |__|  (____  /\n" +
                "     \\/          |__|               \\/    \\/                 \\/ \n";

        System.out.println(menu);
    }

    public static void menu() {
        System.out.println("Welcome to e-poketra!");
        consoleUtils();
        System.out.println("1 - Put object in");
        System.out.println("2 - Put object out");
        System.out.println("3 - Get my balance");
        System.out.println("4 - give my identifier");
        System.out.println("5 - Count object [Credit card, visit card, driving card, National Identtity Card]");
    }

    public static void objectTypeMenu(Wallet wallet,
                                      int objectId,
                                      int pocketNumber,
                                      int type, Scanner scanner) {
        switch (type) {
            case 1:
                System.out.print("Money amount : ");
                double amount = scanner.nextDouble();
                wallet.putObjectIn(pocketNumber, new Money(objectId, amount));
                break;
            case 2:

                break;
            case 3:
                wallet.putObjectIn(pocketNumber, new Card(objectId, CREDIT_CARD));
                break;
            case 4:
                wallet.putObjectIn(pocketNumber, new Card(objectId, VISIT_CARD));
                break;
            case 5:
                wallet.putObjectIn(pocketNumber, new Card(objectId, DRIVING_CARD));
                break;
            case 6:
                wallet.putObjectIn(pocketNumber, new Card(objectId, NI_CARD));
                break;
            default:
                System.out.println("Unrecognized object type ");
        }
    }

    public static void objectCountMenu(Wallet wallet,
                                       int type) {
        switch (type) {
            case 1:
                System.out.printf("Credit card count : %s %n", wallet.countObject(CREDIT_CARD));
                break;
            case 2:
                System.out.printf("Credit card count : %s %n", wallet.countObject(VISIT_CARD));
                break;
            case 3:
                System.out.printf("Credit card count : %s %n", wallet.countObject(DRIVING_CARD));
                break;
            case 4:
                System.out.printf("Credit card count : %s %n", wallet.countObject(NI_CARD));
                break;
            default:
                System.out.println("Unrecognized object type ");
        }
    }
}

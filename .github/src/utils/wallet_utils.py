from model import Card, Money, Wallet
from model.common import CardType

def console_utils():
    menu = (
        "\n"
        "                                __           __                 \n"
        "  ____           ______   ____ |  | __ _____/  |_____________   \n"
        "_/ __ \\   ______ \\____ \\ /  _ \\|  |/ // __ \\   __\\_  __ \\__  \\  \n"
        "\\  ___/  /_____/ |  |_> >  <_> )    <\\  ___/|  |  |  | \\// __ \\_\n"
        " \\___  >         |   __/ \\____/|__|_ \\\\___  >__|  |__|  (____  /\n"
        "     \\/          |__|               \\/    \\/                 \\/ \n"
    )

    print(menu)

def menu():
    print("Welcome to e-poketra!")
    console_utils()
    print("1 - Put object in")
    print("2 - Put object out")
    print("3 - Get my balance")
    print("4 - Give my identifier")
    print("5 - Count object [Credit card, visit card, driving card, National Identity Card]")

def object_type_menu(wallet, object_id, pocket_number, obj_type):
    if obj_type == 1:
        amount = float(input("Money amount: "))
        wallet.put_object_in(pocket_number, Money(object_id, amount))
    elif obj_type == 3:
        wallet.put_object_in(pocket_number, Card(object_id, CardType.CREDIT_CARD))
    elif obj_type == 4:
        wallet.put_object_in(pocket_number, Card(object_id, CardType.VISIT_CARD))
    elif obj_type == 5:
        wallet.put_object_in(pocket_number, Card(object_id, CardType.DRIVING_CARD))
    elif obj_type == 6:
        wallet.put_object_in(pocket_number, Card(object_id, CardType.NI_CARD))
    else:
        print("Unrecognized object type")

def object_count_menu(wallet, obj_type):
    if obj_type == 1:
        print(f"Credit card count: {wallet.count_object(CardType.CREDIT_CARD)}")
    elif obj_type == 2:
        print(f"Visit card count: {wallet.count_object(CardType.VISIT_CARD)}")
    elif obj_type == 3:
        print(f"Driving card count: {wallet.count_object(CardType.DRIVING_CARD)}")
    elif obj_type == 4:
        print(f"NI card count: {wallet.count_object(CardType.NI_CARD)}")
    else:
        print("Unrecognized object type")

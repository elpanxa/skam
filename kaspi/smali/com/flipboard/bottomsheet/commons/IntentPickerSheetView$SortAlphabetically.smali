.class Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$SortAlphabetically;
.super Ljava/lang/Object;
.source "IntentPickerSheetView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortAlphabetically"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;


# direct methods
.method private constructor <init>(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$SortAlphabetically;->this$0:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$1;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$SortAlphabetically;-><init>(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;)I
    .locals 2

    .prologue
    .line 48
    iget-object v0, p1, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 45
    check-cast p1, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;

    check-cast p2, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;

    invoke-virtual {p0, p1, p2}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$SortAlphabetically;->compare(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;)I

    move-result v0

    return v0
.end method

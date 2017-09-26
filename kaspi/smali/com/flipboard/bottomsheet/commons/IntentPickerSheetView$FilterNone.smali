.class Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$FilterNone;
.super Ljava/lang/Object;
.source "IntentPickerSheetView.java"

# interfaces
.implements Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterNone"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;


# direct methods
.method private constructor <init>(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$FilterNone;->this$0:Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$1;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$FilterNone;-><init>(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView;)V

    return-void
.end method


# virtual methods
.method public include(Lcom/flipboard/bottomsheet/commons/IntentPickerSheetView$ActivityInfo;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

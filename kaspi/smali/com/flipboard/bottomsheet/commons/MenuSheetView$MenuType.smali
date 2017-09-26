.class public final enum Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;
.super Ljava/lang/Enum;
.source "MenuSheetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flipboard/bottomsheet/commons/MenuSheetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

.field public static final enum GRID:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

.field public static final enum LIST:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v2}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->LIST:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    new-instance v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    const-string v1, "GRID"

    invoke-direct {v0, v1, v3}, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->GRID:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    sget-object v1, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->LIST:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->GRID:Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->$VALUES:[Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    return-object v0
.end method

.method public static values()[Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->$VALUES:[Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    invoke-virtual {v0}, [Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flipboard/bottomsheet/commons/MenuSheetView$MenuType;

    return-object v0
.end method

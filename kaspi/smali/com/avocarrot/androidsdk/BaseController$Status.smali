.class final enum Lcom/avocarrot/androidsdk/BaseController$Status;
.super Ljava/lang/Enum;
.source "BaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/BaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avocarrot/androidsdk/BaseController$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avocarrot/androidsdk/BaseController$Status;

.field public static final enum FAIL:Lcom/avocarrot/androidsdk/BaseController$Status;

.field public static final enum IDLE:Lcom/avocarrot/androidsdk/BaseController$Status;

.field public static final enum LOADING:Lcom/avocarrot/androidsdk/BaseController$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    new-instance v0, Lcom/avocarrot/androidsdk/BaseController$Status;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/avocarrot/androidsdk/BaseController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/androidsdk/BaseController$Status;->LOADING:Lcom/avocarrot/androidsdk/BaseController$Status;

    .line 333
    new-instance v0, Lcom/avocarrot/androidsdk/BaseController$Status;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/avocarrot/androidsdk/BaseController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/androidsdk/BaseController$Status;->IDLE:Lcom/avocarrot/androidsdk/BaseController$Status;

    .line 334
    new-instance v0, Lcom/avocarrot/androidsdk/BaseController$Status;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v4}, Lcom/avocarrot/androidsdk/BaseController$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/androidsdk/BaseController$Status;->FAIL:Lcom/avocarrot/androidsdk/BaseController$Status;

    .line 331
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avocarrot/androidsdk/BaseController$Status;

    sget-object v1, Lcom/avocarrot/androidsdk/BaseController$Status;->LOADING:Lcom/avocarrot/androidsdk/BaseController$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avocarrot/androidsdk/BaseController$Status;->IDLE:Lcom/avocarrot/androidsdk/BaseController$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avocarrot/androidsdk/BaseController$Status;->FAIL:Lcom/avocarrot/androidsdk/BaseController$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avocarrot/androidsdk/BaseController$Status;->$VALUES:[Lcom/avocarrot/androidsdk/BaseController$Status;

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
    .line 331
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avocarrot/androidsdk/BaseController$Status;
    .locals 1

    .prologue
    .line 331
    const-class v0, Lcom/avocarrot/androidsdk/BaseController$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/BaseController$Status;

    return-object v0
.end method

.method public static values()[Lcom/avocarrot/androidsdk/BaseController$Status;
    .locals 1

    .prologue
    .line 331
    sget-object v0, Lcom/avocarrot/androidsdk/BaseController$Status;->$VALUES:[Lcom/avocarrot/androidsdk/BaseController$Status;

    invoke-virtual {v0}, [Lcom/avocarrot/androidsdk/BaseController$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avocarrot/androidsdk/BaseController$Status;

    return-object v0
.end method

.class public final enum Lcom/revmob/RevMobTestingMode;
.super Ljava/lang/Enum;
.source "RevMobTestingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/revmob/RevMobTestingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/revmob/RevMobTestingMode;

.field public static final enum DISABLED:Lcom/revmob/RevMobTestingMode;

.field public static final enum WITHOUT_ADS:Lcom/revmob/RevMobTestingMode;

.field public static final enum WITH_ADS:Lcom/revmob/RevMobTestingMode;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/revmob/RevMobTestingMode;

    const-string v1, "WITH_ADS"

    const-string v2, "with_ads"

    invoke-direct {v0, v1, v3, v2}, Lcom/revmob/RevMobTestingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/revmob/RevMobTestingMode;->WITH_ADS:Lcom/revmob/RevMobTestingMode;

    .line 12
    new-instance v0, Lcom/revmob/RevMobTestingMode;

    const-string v1, "WITHOUT_ADS"

    const-string v2, "without_ads"

    invoke-direct {v0, v1, v4, v2}, Lcom/revmob/RevMobTestingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/revmob/RevMobTestingMode;->WITHOUT_ADS:Lcom/revmob/RevMobTestingMode;

    .line 17
    new-instance v0, Lcom/revmob/RevMobTestingMode;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v5, v2}, Lcom/revmob/RevMobTestingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/revmob/RevMobTestingMode;->DISABLED:Lcom/revmob/RevMobTestingMode;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/revmob/RevMobTestingMode;

    sget-object v1, Lcom/revmob/RevMobTestingMode;->WITH_ADS:Lcom/revmob/RevMobTestingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/revmob/RevMobTestingMode;->WITHOUT_ADS:Lcom/revmob/RevMobTestingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/revmob/RevMobTestingMode;->DISABLED:Lcom/revmob/RevMobTestingMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/revmob/RevMobTestingMode;->$VALUES:[Lcom/revmob/RevMobTestingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/revmob/RevMobTestingMode;->value:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/revmob/RevMobTestingMode;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/revmob/RevMobTestingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/revmob/RevMobTestingMode;

    return-object v0
.end method

.method public static values()[Lcom/revmob/RevMobTestingMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/revmob/RevMobTestingMode;->$VALUES:[Lcom/revmob/RevMobTestingMode;

    invoke-virtual {v0}, [Lcom/revmob/RevMobTestingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/revmob/RevMobTestingMode;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/revmob/RevMobTestingMode;->value:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lcom/revmob/RevMobParallaxMode;
.super Ljava/lang/Enum;
.source "RevMobParallaxMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/revmob/RevMobParallaxMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/revmob/RevMobParallaxMode;

.field public static final enum DEFAULT:Lcom/revmob/RevMobParallaxMode;

.field public static final enum DISABLED:Lcom/revmob/RevMobParallaxMode;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/revmob/RevMobParallaxMode;

    const-string v1, "DEFAULT"

    const-string v2, "enabled"

    invoke-direct {v0, v1, v3, v2}, Lcom/revmob/RevMobParallaxMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/revmob/RevMobParallaxMode;->DEFAULT:Lcom/revmob/RevMobParallaxMode;

    .line 12
    new-instance v0, Lcom/revmob/RevMobParallaxMode;

    const-string v1, "DISABLED"

    const-string v2, "disabled"

    invoke-direct {v0, v1, v4, v2}, Lcom/revmob/RevMobParallaxMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/revmob/RevMobParallaxMode;->DISABLED:Lcom/revmob/RevMobParallaxMode;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/revmob/RevMobParallaxMode;

    sget-object v1, Lcom/revmob/RevMobParallaxMode;->DEFAULT:Lcom/revmob/RevMobParallaxMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/revmob/RevMobParallaxMode;->DISABLED:Lcom/revmob/RevMobParallaxMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/revmob/RevMobParallaxMode;->$VALUES:[Lcom/revmob/RevMobParallaxMode;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/revmob/RevMobParallaxMode;->value:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/revmob/RevMobParallaxMode;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/revmob/RevMobParallaxMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/revmob/RevMobParallaxMode;

    return-object v0
.end method

.method public static values()[Lcom/revmob/RevMobParallaxMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/revmob/RevMobParallaxMode;->$VALUES:[Lcom/revmob/RevMobParallaxMode;

    invoke-virtual {v0}, [Lcom/revmob/RevMobParallaxMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/revmob/RevMobParallaxMode;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/revmob/RevMobParallaxMode;->value:Ljava/lang/String;

    return-object v0
.end method

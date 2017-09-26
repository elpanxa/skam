.class public final enum Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/splash/SplashConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MinSplashTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

.field public static final enum LONG:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

.field public static final enum REGULAR:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

.field public static final enum SHORT:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;


# instance fields
.field private index:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    new-instance v0, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    const-string v1, "REGULAR"

    const/16 v2, 0xbb8

    invoke-direct {v0, v1, v3, v2}, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->REGULAR:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    new-instance v0, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    const-string v1, "SHORT"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v4, v2}, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->SHORT:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    new-instance v0, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    const-string v1, "LONG"

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v5, v2}, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->LONG:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    sget-object v1, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->REGULAR:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    aput-object v1, v0, v3

    sget-object v1, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->SHORT:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    aput-object v1, v0, v4

    sget-object v1, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->LONG:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    aput-object v1, v0, v5

    sput-object v0, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->$VALUES:[Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->index:J

    .line 79
    return-void
.end method

.method public static getByIndex(J)Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;
    .locals 6

    .prologue
    .line 86
    sget-object v1, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->SHORT:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    .line 87
    invoke-static {}, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->values()[Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    move-result-object v2

    .line 88
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 89
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->getIndex()J

    move-result-wide v4

    cmp-long v3, v4, p0

    if-nez v3, :cond_0

    .line 90
    aget-object v1, v2, v0

    .line 88
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    return-object v1
.end method

.method public static getByName(Ljava/lang/String;)Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;
    .locals 5

    .prologue
    .line 97
    sget-object v1, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->LONG:Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    .line 98
    invoke-static {}, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->values()[Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    move-result-object v2

    .line 99
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 100
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 101
    aget-object v1, v2, v0

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    return-object v0
.end method

.method public static values()[Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->$VALUES:[Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;

    return-object v0
.end method


# virtual methods
.method public getIndex()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/startapp/android/publish/splash/SplashConfig$MinSplashTime;->index:J

    return-wide v0
.end method

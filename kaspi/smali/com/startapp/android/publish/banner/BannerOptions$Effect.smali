.class public final enum Lcom/startapp/android/publish/banner/BannerOptions$Effect;
.super Ljava/lang/Enum;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/banner/BannerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Effect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/startapp/android/publish/banner/BannerOptions$Effect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/startapp/android/publish/banner/BannerOptions$Effect;

.field public static final enum EXCHANGE:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

.field public static final enum FLY_IN:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

.field public static final enum ROTATE_3D:Lcom/startapp/android/publish/banner/BannerOptions$Effect;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 11
    new-instance v0, Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    const-string v1, "ROTATE_3D"

    invoke-direct {v0, v1, v4, v2}, Lcom/startapp/android/publish/banner/BannerOptions$Effect;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->ROTATE_3D:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    new-instance v0, Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    const-string v1, "EXCHANGE"

    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/android/publish/banner/BannerOptions$Effect;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->EXCHANGE:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    new-instance v0, Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    const-string v1, "FLY_IN"

    invoke-direct {v0, v1, v3, v5}, Lcom/startapp/android/publish/banner/BannerOptions$Effect;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->FLY_IN:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    .line 10
    new-array v0, v5, [Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    sget-object v1, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->ROTATE_3D:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    aput-object v1, v0, v4

    sget-object v1, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->EXCHANGE:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    aput-object v1, v0, v2

    sget-object v1, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->FLY_IN:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    aput-object v1, v0, v3

    sput-object v0, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->$VALUES:[Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->index:I

    .line 16
    return-void
.end method

.method public static getByIndex(I)Lcom/startapp/android/publish/banner/BannerOptions$Effect;
    .locals 4

    .prologue
    .line 27
    sget-object v1, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->ROTATE_3D:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    .line 28
    invoke-static {}, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->values()[Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    move-result-object v2

    .line 29
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 30
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->getIndex()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 31
    aget-object v1, v2, v0

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_1
    return-object v1
.end method

.method public static getByName(Ljava/lang/String;)Lcom/startapp/android/publish/banner/BannerOptions$Effect;
    .locals 5

    .prologue
    .line 38
    sget-object v1, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->ROTATE_3D:Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    .line 39
    invoke-static {}, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->values()[Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    move-result-object v2

    .line 40
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 41
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 42
    aget-object v1, v2, v0

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/android/publish/banner/BannerOptions$Effect;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    return-object v0
.end method

.method public static values()[Lcom/startapp/android/publish/banner/BannerOptions$Effect;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->$VALUES:[Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    invoke-virtual {v0}, [Lcom/startapp/android/publish/banner/BannerOptions$Effect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/android/publish/banner/BannerOptions$Effect;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->index:I

    return v0
.end method

.method public getRotationMultiplier()I
    .locals 4

    .prologue
    .line 23
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget v2, p0, Lcom/startapp/android/publish/banner/BannerOptions$Effect;->index:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

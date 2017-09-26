.class public final enum Lcom/adsdk/sdk/mraid/VersionCode;
.super Ljava/lang/Enum;
.source "VersionCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adsdk/sdk/mraid/VersionCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BASE:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum BASE_1_1:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum CUPCAKE:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum CUR_DEVELOPMENT:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum DONUT:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum ECLAIR:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum ECLAIR_0_1:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum ECLAIR_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

.field private static final synthetic ENUM$VALUES:[Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum FROYO:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum GINGERBREAD:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum GINGERBREAD_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum HONEYCOMB:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum HONEYCOMB_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum HONEYCOMB_MR2:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum ICE_CREAM_SANDWICH:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum ICE_CREAM_SANDWICH_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum JELLY_BEAN:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum JELLY_BEAN_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

.field public static final enum JELLY_BEAN_MR2:Lcom/adsdk/sdk/mraid/VersionCode;


# instance fields
.field private mApiLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 38
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "BASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->BASE:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 39
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "BASE_1_1"

    invoke-direct {v0, v1, v4, v5}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->BASE_1_1:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 40
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "CUPCAKE"

    invoke-direct {v0, v1, v5, v6}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->CUPCAKE:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 41
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "DONUT"

    invoke-direct {v0, v1, v6, v7}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->DONUT:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 42
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "ECLAIR"

    invoke-direct {v0, v1, v7, v8}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->ECLAIR:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 43
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "ECLAIR_0_1"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->ECLAIR_0_1:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 44
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "ECLAIR_MR1"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->ECLAIR_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 45
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "FROYO"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->FROYO:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 46
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "GINGERBREAD"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->GINGERBREAD:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 47
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "GINGERBREAD_MR1"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->GINGERBREAD_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 48
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "HONEYCOMB"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->HONEYCOMB:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 49
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "HONEYCOMB_MR1"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->HONEYCOMB_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 50
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "HONEYCOMB_MR2"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->HONEYCOMB_MR2:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 51
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "ICE_CREAM_SANDWICH"

    const/16 v2, 0xd

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->ICE_CREAM_SANDWICH:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 52
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "ICE_CREAM_SANDWICH_MR1"

    const/16 v2, 0xe

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->ICE_CREAM_SANDWICH_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 53
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "JELLY_BEAN"

    const/16 v2, 0xf

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->JELLY_BEAN:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 54
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "JELLY_BEAN_MR1"

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->JELLY_BEAN_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 55
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "JELLY_BEAN_MR2"

    const/16 v2, 0x11

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->JELLY_BEAN_MR2:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 56
    new-instance v0, Lcom/adsdk/sdk/mraid/VersionCode;

    const-string v1, "CUR_DEVELOPMENT"

    const/16 v2, 0x12

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3}, Lcom/adsdk/sdk/mraid/VersionCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->CUR_DEVELOPMENT:Lcom/adsdk/sdk/mraid/VersionCode;

    .line 37
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/adsdk/sdk/mraid/VersionCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/adsdk/sdk/mraid/VersionCode;->BASE:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/adsdk/sdk/mraid/VersionCode;->BASE_1_1:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adsdk/sdk/mraid/VersionCode;->CUPCAKE:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adsdk/sdk/mraid/VersionCode;->DONUT:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adsdk/sdk/mraid/VersionCode;->ECLAIR:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adsdk/sdk/mraid/VersionCode;->ECLAIR_0_1:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/adsdk/sdk/mraid/VersionCode;->ECLAIR_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adsdk/sdk/mraid/VersionCode;->FROYO:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adsdk/sdk/mraid/VersionCode;->GINGERBREAD:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adsdk/sdk/mraid/VersionCode;->GINGERBREAD_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/adsdk/sdk/mraid/VersionCode;->HONEYCOMB:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/adsdk/sdk/mraid/VersionCode;->HONEYCOMB_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/adsdk/sdk/mraid/VersionCode;->HONEYCOMB_MR2:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/adsdk/sdk/mraid/VersionCode;->ICE_CREAM_SANDWICH:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/adsdk/sdk/mraid/VersionCode;->ICE_CREAM_SANDWICH_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/adsdk/sdk/mraid/VersionCode;->JELLY_BEAN:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/adsdk/sdk/mraid/VersionCode;->JELLY_BEAN_MR1:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/adsdk/sdk/mraid/VersionCode;->JELLY_BEAN_MR2:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/adsdk/sdk/mraid/VersionCode;->CUR_DEVELOPMENT:Lcom/adsdk/sdk/mraid/VersionCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/VersionCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/adsdk/sdk/mraid/VersionCode;->mApiLevel:I

    .line 75
    return-void
.end method

.method public static currentApiLevel()Lcom/adsdk/sdk/mraid/VersionCode;
    .locals 1

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/adsdk/sdk/mraid/VersionCode;->forApiLevel(I)Lcom/adsdk/sdk/mraid/VersionCode;

    move-result-object v0

    return-object v0
.end method

.method private static forApiLevel(I)Lcom/adsdk/sdk/mraid/VersionCode;
    .locals 5

    .prologue
    .line 65
    invoke-static {}, Lcom/adsdk/sdk/mraid/VersionCode;->values()[Lcom/adsdk/sdk/mraid/VersionCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 70
    sget-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->CUR_DEVELOPMENT:Lcom/adsdk/sdk/mraid/VersionCode;

    :cond_0
    return-object v0

    .line 65
    :cond_1
    aget-object v0, v2, v1

    .line 66
    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/VersionCode;->getApiLevel()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 65
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adsdk/sdk/mraid/VersionCode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/adsdk/sdk/mraid/VersionCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/mraid/VersionCode;

    return-object v0
.end method

.method public static values()[Lcom/adsdk/sdk/mraid/VersionCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/adsdk/sdk/mraid/VersionCode;->ENUM$VALUES:[Lcom/adsdk/sdk/mraid/VersionCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/adsdk/sdk/mraid/VersionCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getApiLevel()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/adsdk/sdk/mraid/VersionCode;->mApiLevel:I

    return v0
.end method

.method public isAtLeast(Lcom/adsdk/sdk/mraid/VersionCode;)Z
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/VersionCode;->getApiLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/adsdk/sdk/mraid/VersionCode;->getApiLevel()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAtMost(Lcom/adsdk/sdk/mraid/VersionCode;)Z
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/VersionCode;->getApiLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/adsdk/sdk/mraid/VersionCode;->getApiLevel()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBelow(Lcom/adsdk/sdk/mraid/VersionCode;)Z
    .locals 2

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/VersionCode;->getApiLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/adsdk/sdk/mraid/VersionCode;->getApiLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

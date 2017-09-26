.class public final enum Lcom/revmob/ads/internal/AdState;
.super Ljava/lang/Enum;
.source "AdState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/revmob/ads/internal/AdState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/revmob/ads/internal/AdState;

.field public static final enum CLICKED:Lcom/revmob/ads/internal/AdState;

.field public static final enum CLOSED:Lcom/revmob/ads/internal/AdState;

.field public static final enum CREATED:Lcom/revmob/ads/internal/AdState;

.field public static final enum DISPLAYED:Lcom/revmob/ads/internal/AdState;

.field public static final enum HIDDEN:Lcom/revmob/ads/internal/AdState;

.field public static final enum LOADED:Lcom/revmob/ads/internal/AdState;

.field public static final enum LOADING:Lcom/revmob/ads/internal/AdState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/revmob/ads/internal/AdState;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v3}, Lcom/revmob/ads/internal/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    .line 5
    new-instance v0, Lcom/revmob/ads/internal/AdState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcom/revmob/ads/internal/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/ads/internal/AdState;->LOADING:Lcom/revmob/ads/internal/AdState;

    .line 6
    new-instance v0, Lcom/revmob/ads/internal/AdState;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v5}, Lcom/revmob/ads/internal/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/ads/internal/AdState;->LOADED:Lcom/revmob/ads/internal/AdState;

    .line 7
    new-instance v0, Lcom/revmob/ads/internal/AdState;

    const-string v1, "DISPLAYED"

    invoke-direct {v0, v1, v6}, Lcom/revmob/ads/internal/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/ads/internal/AdState;->DISPLAYED:Lcom/revmob/ads/internal/AdState;

    .line 8
    new-instance v0, Lcom/revmob/ads/internal/AdState;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v7}, Lcom/revmob/ads/internal/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/ads/internal/AdState;->HIDDEN:Lcom/revmob/ads/internal/AdState;

    .line 9
    new-instance v0, Lcom/revmob/ads/internal/AdState;

    const-string v1, "CLOSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/revmob/ads/internal/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/ads/internal/AdState;->CLOSED:Lcom/revmob/ads/internal/AdState;

    .line 10
    new-instance v0, Lcom/revmob/ads/internal/AdState;

    const-string v1, "CLICKED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/revmob/ads/internal/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/revmob/ads/internal/AdState;->CLICKED:Lcom/revmob/ads/internal/AdState;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/revmob/ads/internal/AdState;

    sget-object v1, Lcom/revmob/ads/internal/AdState;->CREATED:Lcom/revmob/ads/internal/AdState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/revmob/ads/internal/AdState;->LOADING:Lcom/revmob/ads/internal/AdState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/revmob/ads/internal/AdState;->LOADED:Lcom/revmob/ads/internal/AdState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/revmob/ads/internal/AdState;->DISPLAYED:Lcom/revmob/ads/internal/AdState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/revmob/ads/internal/AdState;->HIDDEN:Lcom/revmob/ads/internal/AdState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/revmob/ads/internal/AdState;->CLOSED:Lcom/revmob/ads/internal/AdState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/revmob/ads/internal/AdState;->CLICKED:Lcom/revmob/ads/internal/AdState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/revmob/ads/internal/AdState;->$VALUES:[Lcom/revmob/ads/internal/AdState;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/revmob/ads/internal/AdState;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/revmob/ads/internal/AdState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/revmob/ads/internal/AdState;

    return-object v0
.end method

.method public static values()[Lcom/revmob/ads/internal/AdState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/revmob/ads/internal/AdState;->$VALUES:[Lcom/revmob/ads/internal/AdState;

    invoke-virtual {v0}, [Lcom/revmob/ads/internal/AdState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/revmob/ads/internal/AdState;

    return-object v0
.end method

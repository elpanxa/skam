.class public final enum Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
.super Ljava/lang/Enum;
.source "SupersonicLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonic/mediationsdk/logger/SupersonicLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupersonicTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

.field public static final enum ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

.field public static final enum ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

.field public static final enum API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

.field public static final enum CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

.field public static final enum INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

.field public static final enum NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

.field public static final enum NETWORK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "API"

    invoke-direct {v0, v1, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    .line 106
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "ADAPTER_API"

    invoke-direct {v0, v1, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    .line 107
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "CALLBACK"

    invoke-direct {v0, v1, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    .line 108
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "ADAPTER_CALLBACK"

    invoke-direct {v0, v1, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    .line 109
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NETWORK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    .line 110
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "INTERNAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    .line 111
    new-instance v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "NATIVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    .line 104
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NETWORK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->$VALUES:[Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    return-object v0
.end method

.method public static values()[Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->$VALUES:[Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v0}, [Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    return-object v0
.end method

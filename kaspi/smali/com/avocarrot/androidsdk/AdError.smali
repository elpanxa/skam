.class public final enum Lcom/avocarrot/androidsdk/AdError;
.super Ljava/lang/Enum;
.source "AdError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avocarrot/androidsdk/AdError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avocarrot/androidsdk/AdError;

.field public static final enum GENERIC:Lcom/avocarrot/androidsdk/AdError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/avocarrot/androidsdk/AdError;

    const-string v1, "GENERIC"

    invoke-direct {v0, v1, v2}, Lcom/avocarrot/androidsdk/AdError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avocarrot/androidsdk/AdError;->GENERIC:Lcom/avocarrot/androidsdk/AdError;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/avocarrot/androidsdk/AdError;

    sget-object v1, Lcom/avocarrot/androidsdk/AdError;->GENERIC:Lcom/avocarrot/androidsdk/AdError;

    aput-object v1, v0, v2

    sput-object v0, Lcom/avocarrot/androidsdk/AdError;->$VALUES:[Lcom/avocarrot/androidsdk/AdError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/avocarrot/androidsdk/AdError;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/avocarrot/androidsdk/AdError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/AdError;

    return-object v0
.end method

.method public static values()[Lcom/avocarrot/androidsdk/AdError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/avocarrot/androidsdk/AdError;->$VALUES:[Lcom/avocarrot/androidsdk/AdError;

    invoke-virtual {v0}, [Lcom/avocarrot/androidsdk/AdError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avocarrot/androidsdk/AdError;

    return-object v0
.end method

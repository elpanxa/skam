.class public final enum Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;
.super Ljava/lang/Enum;
.source "AvocarrotLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Levels"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

.field public static final enum ALL:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

.field public static final enum DEBUG:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

.field public static final enum ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

.field public static final enum INFO:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

.field public static final enum WARN:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    new-instance v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "DEBUG"

    const-string v2, "DEBUG"

    invoke-direct {v0, v1, v3, v2}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->DEBUG:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    .line 243
    new-instance v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "ALL"

    const-string v2, "ALL"

    invoke-direct {v0, v1, v4, v2}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ALL:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    .line 244
    new-instance v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "INFO"

    const-string v2, "INFO"

    invoke-direct {v0, v1, v5, v2}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->INFO:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    .line 245
    new-instance v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "WARN"

    const-string v2, "WARN"

    invoke-direct {v0, v1, v6, v2}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->WARN:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    .line 246
    new-instance v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "ERROR"

    const-string v2, "ERROR"

    invoke-direct {v0, v1, v7, v2}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    .line 241
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->DEBUG:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ALL:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->INFO:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->WARN:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    aput-object v1, v0, v7

    sput-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->$VALUES:[Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

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
    .line 248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 249
    iput-object p3, p0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->text:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;
    .locals 1

    .prologue
    .line 241
    const-class v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    return-object v0
.end method

.method public static values()[Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->$VALUES:[Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    invoke-virtual {v0}, [Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    return-object v0
.end method

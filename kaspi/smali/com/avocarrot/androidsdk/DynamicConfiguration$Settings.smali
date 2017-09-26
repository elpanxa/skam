.class public final enum Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;
.super Ljava/lang/Enum;
.source "DynamicConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/DynamicConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Settings"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum adReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum bufferMin:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum bufferTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum carouselLength:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum imageReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum logger:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum loggerBatchTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum loggerReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum positionFreq:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum positionStart:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum slotsDecrease:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum slotsMax:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum slotsMin:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum trackerReqRetries:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum trackerReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum visibilityMinTime:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

.field public static final enum visibilityPercentage:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "logger"

    sget-object v2, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    invoke-virtual {v2}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->logger:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 164
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "adReqTimeout"

    const-string v2, "10000"

    invoke-direct {v0, v1, v5, v2}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->adReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 165
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "trackerReqTimeout"

    const-string v2, "10000"

    invoke-direct {v0, v1, v6, v2}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->trackerReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 166
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "trackerReqRetries"

    const-string v2, "2"

    invoke-direct {v0, v1, v7, v2}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->trackerReqRetries:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 167
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "imageReqTimeout"

    const-string v2, "10000"

    invoke-direct {v0, v1, v8, v2}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->imageReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 168
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "loggerReqTimeout"

    const/4 v2, 0x5

    const-string v3, "10000"

    invoke-direct {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->loggerReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 169
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "loggerBatchTimeout"

    const/4 v2, 0x6

    const-string v3, "1000"

    invoke-direct {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->loggerBatchTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 172
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "visibilityPercentage"

    const/4 v2, 0x7

    const-string v3, "100"

    invoke-direct {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->visibilityPercentage:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 173
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "visibilityMinTime"

    const/16 v2, 0x8

    const-string v3, "1000"

    invoke-direct {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->visibilityMinTime:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 174
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "bufferMin"

    const/16 v2, 0x9

    const-string v3, "0"

    invoke-direct {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->bufferMin:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 175
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "bufferTimeout"

    const/16 v2, 0xa

    const-string v3, "1800000"

    invoke-direct {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->bufferTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 178
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "slotsMax"

    const/16 v2, 0xb

    const-string v3, "4"

    invoke-direct {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->slotsMax:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 179
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "slotsMin"

    const/16 v2, 0xc

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->slotsMin:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 180
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "slotsDecrease"

    const/16 v2, 0xd

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->slotsDecrease:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 181
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "positionStart"

    const/16 v2, 0xe

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->positionStart:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 182
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "positionFreq"

    const/16 v2, 0xf

    const-string v3, "5"

    invoke-direct {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->positionFreq:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 185
    new-instance v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    const-string v1, "carouselLength"

    const/16 v2, 0x10

    const-string v3, "1"

    invoke-direct {v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->carouselLength:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    .line 160
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->logger:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->adReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->trackerReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->trackerReqRetries:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->imageReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->loggerReqTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->loggerBatchTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->visibilityPercentage:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->visibilityMinTime:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->bufferMin:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->bufferTimeout:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->slotsMax:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->slotsMin:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->slotsDecrease:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->positionStart:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->positionFreq:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->carouselLength:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->$VALUES:[Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

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
    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 190
    iput-object p3, p0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->value:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;
    .locals 1

    .prologue
    .line 160
    const-class v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    return-object v0
.end method

.method public static values()[Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->$VALUES:[Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-virtual {v0}, [Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->value:Ljava/lang/String;

    return-object v0
.end method

.class Lcom/supersonic/mediationsdk/logger/ServerLogger$SendingCalc;
.super Ljava/lang/Object;
.source "ServerLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonic/mediationsdk/logger/ServerLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendingCalc"
.end annotation


# instance fields
.field private DEFAULT_DEBUG_LEVEL:I

.field private DEFAULT_SIZE:I

.field private DEFAULT_TIME:I

.field final synthetic this$0:Lcom/supersonic/mediationsdk/logger/ServerLogger;


# direct methods
.method public constructor <init>(Lcom/supersonic/mediationsdk/logger/ServerLogger;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 136
    iput-object p1, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger$SendingCalc;->this$0:Lcom/supersonic/mediationsdk/logger/ServerLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger$SendingCalc;->DEFAULT_SIZE:I

    .line 133
    iput v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger$SendingCalc;->DEFAULT_TIME:I

    .line 134
    const/4 v0, 0x3

    iput v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger$SendingCalc;->DEFAULT_DEBUG_LEVEL:I

    .line 137
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/logger/ServerLogger$SendingCalc;->initDefaults()V

    .line 138
    return-void
.end method

.method private calc(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 154
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/logger/ServerLogger$SendingCalc;->error(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/logger/ServerLogger$SendingCalc;->size()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/logger/ServerLogger$SendingCalc;->time()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private error(I)Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDefaults()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method private size()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method private time()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public notifyEvent(I)V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/logger/ServerLogger$SendingCalc;->calc(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/supersonic/mediationsdk/logger/ServerLogger$SendingCalc;->this$0:Lcom/supersonic/mediationsdk/logger/ServerLogger;

    # invokes: Lcom/supersonic/mediationsdk/logger/ServerLogger;->send()V
    invoke-static {v0}, Lcom/supersonic/mediationsdk/logger/ServerLogger;->access$000(Lcom/supersonic/mediationsdk/logger/ServerLogger;)V

    .line 151
    :cond_0
    return-void
.end method

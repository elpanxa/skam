.class abstract Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;
.super Ljava/lang/Object;
.source "ImojiApiImpl.java"

# interfaces
.implements Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/imojiapp/imoji/sdk/ImojiApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Command"
.end annotation


# instance fields
.field mErrCallback:Lcom/imojiapp/imoji/sdk/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mExecutionDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;",
            ">;"
        }
    .end annotation
.end field

.field mExpiration:J

.field private mRetries:I


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/imojiapp/imoji/sdk/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;",
            ">;",
            "Lcom/imojiapp/imoji/sdk/Callback",
            "<*",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;->mRetries:I

    .line 514
    iput-object p1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;->mExecutionDependencies:Ljava/util/List;

    .line 515
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;->mExpiration:J

    .line 516
    iput-object p2, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;->mErrCallback:Lcom/imojiapp/imoji/sdk/Callback;

    .line 517
    return-void
.end method


# virtual methods
.method public isDependencySatisfied(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)Z
    .locals 3

    .prologue
    .line 521
    const/4 v0, 0x1

    .line 522
    iget-object v1, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;->mExecutionDependencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;

    .line 523
    invoke-interface {v0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;->isDependencySatisfied(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)Z

    move-result v0

    and-int/2addr v0, v1

    move v1, v0

    .line 524
    goto :goto_0

    .line 525
    :cond_0
    return v1
.end method

.method public satisfyDependencies(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)V
    .locals 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$Command;->mExecutionDependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;

    .line 532
    invoke-interface {v0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;->isDependencySatisfied(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 533
    invoke-interface {v0, p1}, Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionDependency;->satisfyDependencies(Lcom/imojiapp/imoji/sdk/ImojiApiImpl$ExecutionManager;)V

    .line 537
    :cond_1
    return-void
.end method

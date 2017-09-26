.class final Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$2;
.super Ljava/lang/Object;
.source "AvocarrotLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 197
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->pendingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    sget-object v2, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->pendingEvents:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->pendingEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 200
    # getter for: Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->SERVER_LOGGER:Ljava/lang/String;
    invoke-static {}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    # getter for: Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->access$100()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->batchEvents:Ljava/lang/Runnable;

    sget-object v2, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->timeout:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    :cond_0
    return-void
.end method

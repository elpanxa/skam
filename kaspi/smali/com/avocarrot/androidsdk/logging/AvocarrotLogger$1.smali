.class final Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$1;
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
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->executorService:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->sendEvents:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 191
    return-void
.end method

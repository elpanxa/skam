.class Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;
.super Landroid/os/HandlerThread;
.source "SuperLooper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonic/mediationsdk/events/SuperLooper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupersonicSdkThread"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/supersonic/mediationsdk/events/SuperLooper;


# direct methods
.method public constructor <init>(Lcom/supersonic/mediationsdk/events/SuperLooper;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;->this$0:Lcom/supersonic/mediationsdk/events/SuperLooper;

    .line 54
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/supersonic/mediationsdk/logger/ThreadExceptionHandler;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/logger/ThreadExceptionHandler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getCallbackHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public prepareHandler()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/SuperLooper$SupersonicSdkThread;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.class Lcom/adsdk/sdk/video/TrackerService$2;
.super Ljava/lang/Object;
.source "TrackerService.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsdk/sdk/video/TrackerService;->startTracking()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->access$7(Z)V

    .line 153
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->access$8(Ljava/lang/Thread;)V

    .line 154
    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->startTracking()V

    .line 155
    return-void
.end method

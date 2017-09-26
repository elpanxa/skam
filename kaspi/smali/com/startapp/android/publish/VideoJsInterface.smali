.class public Lcom/startapp/android/publish/VideoJsInterface;
.super Lcom/startapp/android/publish/JsInterface;
.source "StartAppSDK"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoJsInterface"


# instance fields
.field private replayCallback:Ljava/lang/Runnable;

.field private skipCallback:Ljava/lang/Runnable;

.field private toggleSoundCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/startapp/android/publish/h/s;)V
    .locals 8

    .prologue
    .line 25
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/startapp/android/publish/VideoJsInterface;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/startapp/android/publish/h/s;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/startapp/android/publish/h/s;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/startapp/android/publish/JsInterface;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/startapp/android/publish/h/s;)V

    .line 15
    iput-object v0, p0, Lcom/startapp/android/publish/VideoJsInterface;->replayCallback:Ljava/lang/Runnable;

    .line 16
    iput-object v0, p0, Lcom/startapp/android/publish/VideoJsInterface;->skipCallback:Ljava/lang/Runnable;

    .line 17
    iput-object v0, p0, Lcom/startapp/android/publish/VideoJsInterface;->toggleSoundCallback:Ljava/lang/Runnable;

    .line 36
    iput-object p4, p0, Lcom/startapp/android/publish/VideoJsInterface;->replayCallback:Ljava/lang/Runnable;

    .line 37
    iput-object p5, p0, Lcom/startapp/android/publish/VideoJsInterface;->skipCallback:Ljava/lang/Runnable;

    .line 38
    iput-object p6, p0, Lcom/startapp/android/publish/VideoJsInterface;->toggleSoundCallback:Ljava/lang/Runnable;

    .line 39
    return-void
.end method


# virtual methods
.method public replayVideo()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 43
    const-string v0, "VideoJsInterface"

    const/4 v1, 0x3

    const-string v2, "replayVideo called"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/startapp/android/publish/VideoJsInterface;->replayCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/startapp/android/publish/VideoJsInterface;->replayCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    :cond_0
    return-void
.end method

.method public skipVideo()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 51
    const-string v0, "VideoJsInterface"

    const/4 v1, 0x3

    const-string v2, "skipVideo called"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/startapp/android/publish/VideoJsInterface;->skipCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/startapp/android/publish/VideoJsInterface;->skipCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    :cond_0
    return-void
.end method

.method public toggleSound()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 59
    const-string v0, "VideoJsInterface"

    const/4 v1, 0x3

    const-string v2, "toggleSound called"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/startapp/android/publish/VideoJsInterface;->toggleSoundCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/startapp/android/publish/VideoJsInterface;->toggleSoundCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    :cond_0
    return-void
.end method

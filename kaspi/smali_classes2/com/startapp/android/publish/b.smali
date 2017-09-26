.class public Lcom/startapp/android/publish/b;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/AdEventListener;


# instance fields
.field private a:Lcom/startapp/android/publish/AdEventListener;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/AdEventListener;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/startapp/android/publish/b;->a:Lcom/startapp/android/publish/AdEventListener;

    .line 11
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/b;)Lcom/startapp/android/publish/AdEventListener;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/startapp/android/publish/b;->a:Lcom/startapp/android/publish/AdEventListener;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/startapp/android/publish/b;->a:Lcom/startapp/android/publish/AdEventListener;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/startapp/android/publish/b;->a()Landroid/os/Handler;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    new-instance v1, Lcom/startapp/android/publish/b$2;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/b$2;-><init>(Lcom/startapp/android/publish/b;Lcom/startapp/android/publish/Ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/b;->a:Lcom/startapp/android/publish/AdEventListener;

    invoke-interface {v0, p1}, Lcom/startapp/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V

    goto :goto_0
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/startapp/android/publish/b;->a:Lcom/startapp/android/publish/AdEventListener;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/startapp/android/publish/b;->a()Landroid/os/Handler;

    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    new-instance v1, Lcom/startapp/android/publish/b$1;

    invoke-direct {v1, p0, p1}, Lcom/startapp/android/publish/b$1;-><init>(Lcom/startapp/android/publish/b;Lcom/startapp/android/publish/Ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/b;->a:Lcom/startapp/android/publish/AdEventListener;

    invoke-interface {v0, p1}, Lcom/startapp/android/publish/AdEventListener;->onReceiveAd(Lcom/startapp/android/publish/Ad;)V

    goto :goto_0
.end method

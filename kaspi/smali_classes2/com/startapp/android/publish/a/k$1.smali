.class Lcom/startapp/android/publish/a/k$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/a/k;->load(Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/AdEventListener;

.field final synthetic b:Lcom/startapp/android/publish/a/k;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/a/k;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/startapp/android/publish/a/k$1;->b:Lcom/startapp/android/publish/a/k;

    iput-object p2, p0, Lcom/startapp/android/publish/a/k$1;->a:Lcom/startapp/android/publish/AdEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 3

    .prologue
    .line 59
    const-string v0, "ReturnAd"

    const/4 v1, 0x3

    const-string v2, "Return Ad Failed to Load"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/startapp/android/publish/a/k$1;->a:Lcom/startapp/android/publish/AdEventListener;

    invoke-interface {v0, p1}, Lcom/startapp/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 61
    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/startapp/android/publish/a/k$1;->b:Lcom/startapp/android/publish/a/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/startapp/android/publish/a/k;->a(Lcom/startapp/android/publish/a/k;J)J

    .line 54
    const-string v0, "ReturnAd"

    const/4 v1, 0x3

    const-string v2, "Return Ad Loaded"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/startapp/android/publish/a/k$1;->a:Lcom/startapp/android/publish/AdEventListener;

    invoke-interface {v0, p1}, Lcom/startapp/android/publish/AdEventListener;->onReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 56
    return-void
.end method

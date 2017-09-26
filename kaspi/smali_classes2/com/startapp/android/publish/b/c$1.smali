.class Lcom/startapp/android/publish/b/c$1;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/android/publish/b/c;->a(Lcom/startapp/android/publish/StartAppAd;Lcom/startapp/android/publish/AdEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/StartAppAd;

.field final synthetic b:Lcom/startapp/android/publish/AdEventListener;

.field final synthetic c:Lcom/startapp/android/publish/b/c;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/b/c;Lcom/startapp/android/publish/StartAppAd;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/startapp/android/publish/b/c$1;->c:Lcom/startapp/android/publish/b/c;

    iput-object p2, p0, Lcom/startapp/android/publish/b/c$1;->a:Lcom/startapp/android/publish/StartAppAd;

    iput-object p3, p0, Lcom/startapp/android/publish/b/c$1;->b:Lcom/startapp/android/publish/AdEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/startapp/android/publish/b/c$1;->b:Lcom/startapp/android/publish/AdEventListener;

    invoke-interface {v0, p1}, Lcom/startapp/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 121
    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/startapp/android/publish/b/c$1;->c:Lcom/startapp/android/publish/b/c;

    invoke-static {v0}, Lcom/startapp/android/publish/b/c;->b(Lcom/startapp/android/publish/b/c;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/b/c$1;->a:Lcom/startapp/android/publish/StartAppAd;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/startapp/android/publish/b/c$1;->b:Lcom/startapp/android/publish/AdEventListener;

    invoke-interface {v0, p1}, Lcom/startapp/android/publish/AdEventListener;->onReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 117
    return-void
.end method

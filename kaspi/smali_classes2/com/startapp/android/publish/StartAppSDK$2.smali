.class Lcom/startapp/android/publish/StartAppSDK$2;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/StartAppSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/StartAppSDK;


# direct methods
.method constructor <init>(Lcom/startapp/android/publish/StartAppSDK;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/startapp/android/publish/StartAppSDK$2;->a:Lcom/startapp/android/publish/StartAppSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK$2;->a:Lcom/startapp/android/publish/StartAppSDK;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/startapp/android/publish/StartAppSDK;->a(Lcom/startapp/android/publish/StartAppSDK;Z)Z

    .line 441
    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/startapp/android/publish/StartAppSDK$2;->a:Lcom/startapp/android/publish/StartAppSDK;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/startapp/android/publish/StartAppSDK;->a(Lcom/startapp/android/publish/StartAppSDK;Z)Z

    .line 436
    return-void
.end method

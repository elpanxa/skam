.class Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Lcom/startapp/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/nativead/StartAppNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/nativead/StartAppNativeAd;

.field private b:Lcom/startapp/android/publish/AdEventListener;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/nativead/StartAppNativeAd;Lcom/startapp/android/publish/AdEventListener;)V
    .locals 1

    .prologue
    .line 214
    iput-object p1, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;->a:Lcom/startapp/android/publish/nativead/StartAppNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;->b:Lcom/startapp/android/publish/AdEventListener;

    .line 215
    new-instance v0, Lcom/startapp/android/publish/b;

    invoke-direct {v0, p2}, Lcom/startapp/android/publish/b;-><init>(Lcom/startapp/android/publish/AdEventListener;)V

    iput-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;->b:Lcom/startapp/android/publish/AdEventListener;

    .line 216
    return-void
.end method


# virtual methods
.method public a()Lcom/startapp/android/publish/AdEventListener;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;->b:Lcom/startapp/android/publish/AdEventListener;

    return-object v0
.end method

.method public onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 3

    .prologue
    .line 227
    const-string v0, "StartAppNativeAd"

    const/4 v1, 0x3

    const-string v2, "NativeAd Failed to load"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;->b:Lcom/startapp/android/publish/AdEventListener;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;->b:Lcom/startapp/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;->a:Lcom/startapp/android/publish/nativead/StartAppNativeAd;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/AdEventListener;->onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;->b:Lcom/startapp/android/publish/AdEventListener;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;->a:Lcom/startapp/android/publish/nativead/StartAppNativeAd;

    # invokes: Lcom/startapp/android/publish/nativead/StartAppNativeAd;->initNativeAdList()V
    invoke-static {v0}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->access$000(Lcom/startapp/android/publish/nativead/StartAppNativeAd;)V

    .line 234
    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 3

    .prologue
    .line 220
    const-string v0, "StartAppNativeAd"

    const/4 v1, 0x3

    const-string v2, "NativeAd Received"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/startapp/android/publish/nativead/StartAppNativeAd$a;->a:Lcom/startapp/android/publish/nativead/StartAppNativeAd;

    # invokes: Lcom/startapp/android/publish/nativead/StartAppNativeAd;->initNativeAdList()V
    invoke-static {v0}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->access$000(Lcom/startapp/android/publish/nativead/StartAppNativeAd;)V

    .line 223
    return-void
.end method

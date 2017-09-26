.class Lio/casper/android/i/p$7$1;
.super Ljava/lang/Object;
.source "SnapsFragment.java"

# interfaces
.implements Lcom/startapp/android/publish/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/p$7;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/i/p$7;

.field final synthetic val$startAppNativeAd:Lcom/startapp/android/publish/nativead/StartAppNativeAd;


# direct methods
.method constructor <init>(Lio/casper/android/i/p$7;Lcom/startapp/android/publish/nativead/StartAppNativeAd;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lio/casper/android/i/p$7$1;->this$1:Lio/casper/android/i/p$7;

    iput-object p2, p0, Lio/casper/android/i/p$7$1;->val$startAppNativeAd:Lcom/startapp/android/publish/nativead/StartAppNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public onReceiveAd(Lcom/startapp/android/publish/Ad;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    iget-object v0, p0, Lio/casper/android/i/p$7$1;->val$startAppNativeAd:Lcom/startapp/android/publish/nativead/StartAppNativeAd;

    invoke-virtual {v0}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->getNativeAds()Ljava/util/ArrayList;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 253
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/nativead/NativeAdDetails;

    .line 254
    iget-object v1, p0, Lio/casper/android/i/p$7$1;->this$1:Lio/casper/android/i/p$7;

    iget-object v1, v1, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-static {v1}, Lio/casper/android/i/p;->g(Lio/casper/android/i/p;)Lio/casper/android/a/a/g;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lio/casper/android/a/a/g;->a(Ljava/lang/Object;I)V

    .line 255
    iget-object v1, p0, Lio/casper/android/i/p$7$1;->this$1:Lio/casper/android/i/p$7;

    iget-object v1, v1, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-static {v1}, Lio/casper/android/i/p;->b(Lio/casper/android/i/p;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->sendImpression(Landroid/content/Context;)V

    .line 257
    :cond_0
    return-void
.end method

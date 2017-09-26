.class Lio/casper/android/l/a$7;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/a;->a(Ljava/lang/String;Lio/casper/android/l/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/a;

.field final synthetic val$adListener:Lio/casper/android/l/a$a;

.field final synthetic val$interstitial:Lcom/mopub/mobileads/MoPubInterstitial;


# direct methods
.method constructor <init>(Lio/casper/android/l/a;Lcom/mopub/mobileads/MoPubInterstitial;Lio/casper/android/l/a$a;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lio/casper/android/l/a$7;->this$0:Lio/casper/android/l/a;

    iput-object p2, p0, Lio/casper/android/l/a$7;->val$interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    iput-object p3, p0, Lio/casper/android/l/a$7;->val$adListener:Lio/casper/android/l/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    .prologue
    .line 787
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lio/casper/android/l/a$7;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lio/casper/android/l/a$7;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->a()V

    .line 794
    :cond_0
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lio/casper/android/l/a$7;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lio/casper/android/l/a$7;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->c()V

    .line 775
    :cond_0
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lio/casper/android/l/a$7;->val$interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lio/casper/android/l/a$7;->val$interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 768
    :cond_0
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lio/casper/android/l/a$7;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lio/casper/android/l/a$7;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->b()V

    .line 782
    :cond_0
    return-void
.end method

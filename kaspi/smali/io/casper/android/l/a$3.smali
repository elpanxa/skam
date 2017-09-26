.class Lio/casper/android/l/a$3;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdManager.java"


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

.field final synthetic val$interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method constructor <init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;Lcom/google/android/gms/ads/InterstitialAd;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lio/casper/android/l/a$3;->this$0:Lio/casper/android/l/a;

    iput-object p2, p0, Lio/casper/android/l/a$3;->val$adListener:Lio/casper/android/l/a$a;

    iput-object p3, p0, Lio/casper/android/l/a$3;->val$interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 1

    .prologue
    .line 609
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    .line 610
    iget-object v0, p0, Lio/casper/android/l/a$3;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lio/casper/android/l/a$3;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->a()V

    .line 613
    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 5

    .prologue
    .line 617
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 618
    const-string v0, "AdManager"

    const-string v1, "Interstitial onAdFailedToLoad(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    iget-object v0, p0, Lio/casper/android/l/a$3;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lio/casper/android/l/a$3;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->c()V

    .line 622
    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    .prologue
    .line 599
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 600
    const-string v0, "AdManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Interstitial onAdLoaded"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    iget-object v0, p0, Lio/casper/android/l/a$3;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lio/casper/android/l/a$3;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->b()V

    .line 604
    :cond_0
    iget-object v0, p0, Lio/casper/android/l/a$3;->val$interstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 605
    return-void
.end method

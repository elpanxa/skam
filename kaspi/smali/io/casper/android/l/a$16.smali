.class Lio/casper/android/l/a$16;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubView$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/a;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Lio/casper/android/l/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/a;

.field final synthetic val$adListener:Lio/casper/android/l/a$a;


# direct methods
.method constructor <init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lio/casper/android/l/a$16;->this$0:Lio/casper/android/l/a;

    iput-object p2, p0, Lio/casper/android/l/a$16;->val$adListener:Lio/casper/android/l/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

.method public onBannerCollapsed(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public onBannerExpanded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    .prologue
    .line 480
    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 5

    .prologue
    .line 466
    const-string v0, "AdManager"

    const-string v1, "onAdFailed network=%s type=banner"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "MOPUB"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lio/casper/android/l/a$16;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lio/casper/android/l/a$16;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->c()V

    .line 470
    :cond_0
    return-void
.end method

.method public onBannerLoaded(Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

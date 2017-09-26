.class Lio/casper/android/l/a$8;
.super Ljava/lang/Object;
.source "AdManager.java"

# interfaces
.implements Lio/casper/android/activity/a/a$a;


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

.field final synthetic val$interstitial:Lcom/mopub/mobileads/MoPubInterstitial;


# direct methods
.method constructor <init>(Lio/casper/android/l/a;Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    .prologue
    .line 802
    iput-object p1, p0, Lio/casper/android/l/a$8;->this$0:Lio/casper/android/l/a;

    iput-object p2, p0, Lio/casper/android/l/a$8;->val$interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 805
    const-string v0, "AdManager"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "activityListener onDestroy"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    iget-object v0, p0, Lio/casper/android/l/a$8;->val$interstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 807
    return-void
.end method

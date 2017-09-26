.class Lio/casper/android/l/a$6;
.super Lcom/avocarrot/androidsdk/AvocarrotInterstitialListener;
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


# direct methods
.method constructor <init>(Lio/casper/android/l/a;Lio/casper/android/l/a$a;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lio/casper/android/l/a$6;->this$0:Lio/casper/android/l/a;

    iput-object p2, p0, Lio/casper/android/l/a$6;->val$adListener:Lio/casper/android/l/a$a;

    invoke-direct {p0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitialListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDisplayed()V
    .locals 1

    .prologue
    .line 722
    invoke-super {p0}, Lcom/avocarrot/androidsdk/AvocarrotInterstitialListener;->onAdDisplayed()V

    .line 724
    iget-object v0, p0, Lio/casper/android/l/a$6;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lio/casper/android/l/a$6;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->b()V

    .line 728
    :cond_0
    return-void
.end method

.method public onAdError(Lcom/avocarrot/androidsdk/AdError;)V
    .locals 1

    .prologue
    .line 733
    invoke-super {p0, p1}, Lcom/avocarrot/androidsdk/AvocarrotInterstitialListener;->onAdError(Lcom/avocarrot/androidsdk/AdError;)V

    .line 735
    iget-object v0, p0, Lio/casper/android/l/a$6;->val$adListener:Lio/casper/android/l/a$a;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lio/casper/android/l/a$6;->val$adListener:Lio/casper/android/l/a$a;

    invoke-interface {v0}, Lio/casper/android/l/a$a;->c()V

    .line 739
    :cond_0
    return-void
.end method

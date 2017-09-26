.class Lio/casper/android/l/a$15;
.super Lcom/revmob/RevMobAdsListener;
.source "AdManager.java"


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
    .line 433
    iput-object p1, p0, Lio/casper/android/l/a$15;->this$0:Lio/casper/android/l/a;

    iput-object p2, p0, Lio/casper/android/l/a$15;->val$adListener:Lio/casper/android/l/a$a;

    invoke-direct {p0}, Lcom/revmob/RevMobAdsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRevMobAdNotReceived(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 436
    invoke-super {p0, p1}, Lcom/revmob/RevMobAdsListener;->onRevMobAdNotReceived(Ljava/lang/String;)V

    .line 437
    const-string v0, "AdManager"

    const-string v1, "onAdFailed network=%s type=banner"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "REVMOB"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/casper/android/l/a$15$1;

    invoke-direct {v1, p0}, Lio/casper/android/l/a$15$1;-><init>(Lio/casper/android/l/a$15;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    return-void
.end method

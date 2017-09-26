.class Lio/casper/android/l/a$5;
.super Lcom/revmob/RevMobAdsListener;
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
    .line 678
    iput-object p1, p0, Lio/casper/android/l/a$5;->this$0:Lio/casper/android/l/a;

    iput-object p2, p0, Lio/casper/android/l/a$5;->val$adListener:Lio/casper/android/l/a$a;

    invoke-direct {p0}, Lcom/revmob/RevMobAdsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRevMobAdNotReceived(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 697
    invoke-super {p0, p1}, Lcom/revmob/RevMobAdsListener;->onRevMobAdNotReceived(Ljava/lang/String;)V

    .line 698
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/casper/android/l/a$5$2;

    invoke-direct {v1, p0}, Lio/casper/android/l/a$5$2;-><init>(Lio/casper/android/l/a$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 706
    return-void
.end method

.method public onRevMobAdReceived()V
    .locals 2

    .prologue
    .line 682
    invoke-super {p0}, Lcom/revmob/RevMobAdsListener;->onRevMobAdReceived()V

    .line 683
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lio/casper/android/l/a$5$1;

    invoke-direct {v1, p0}, Lio/casper/android/l/a$5$1;-><init>(Lio/casper/android/l/a$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 692
    return-void
.end method

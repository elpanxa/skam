.class Lio/casper/android/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/OfferwallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/MainActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lio/casper/android/activity/MainActivity$1;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetOfferwallCreditsFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public onOfferwallAdCredited(IIZ)Z
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lio/casper/android/activity/MainActivity$1;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v0}, Lio/casper/android/activity/MainActivity;->a(Lio/casper/android/activity/MainActivity;)Lio/casper/android/l/w;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/w;->c()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 120
    iget-object v2, p0, Lio/casper/android/activity/MainActivity$1;->this$0:Lio/casper/android/activity/MainActivity;

    invoke-static {v2}, Lio/casper/android/activity/MainActivity;->a(Lio/casper/android/activity/MainActivity;)Lio/casper/android/l/w;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lio/casper/android/l/w;->a(J)V

    .line 122
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lio/casper/android/activity/MainActivity$1$1;

    invoke-direct {v3, p0, v0, v1}, Lio/casper/android/activity/MainActivity$1$1;-><init>(Lio/casper/android/activity/MainActivity$1;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public onOfferwallClosed()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onOfferwallInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onOfferwallInitSuccess()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onOfferwallOpened()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onOfferwallShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

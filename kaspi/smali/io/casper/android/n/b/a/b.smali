.class public Lio/casper/android/n/b/a/b;
.super Lio/casper/android/n/b/a/c;
.source "PacketHandler.java"


# instance fields
.field private mPacketListener:Lio/casper/android/n/b/c/b;


# direct methods
.method static synthetic a(Lio/casper/android/n/b/a/b;)Lio/casper/android/n/b/c/b;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lio/casper/android/n/b/a/b;->mPacketListener:Lio/casper/android/n/b/c/b;

    return-object v0
.end method


# virtual methods
.method public a(Lio/casper/android/n/b/d/n;)V
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lio/casper/android/n/b/a/b;->mPacketListener:Lio/casper/android/n/b/c/b;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lio/casper/android/n/b/a/b;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/casper/android/n/b/a/b$1;

    invoke-direct {v1, p0, p1}, Lio/casper/android/n/b/a/b$1;-><init>(Lio/casper/android/n/b/a/b;Lio/casper/android/n/b/d/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :cond_0
    return-void
.end method

.method public b(Lio/casper/android/n/b/d/n;)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lio/casper/android/n/b/a/b;->mPacketListener:Lio/casper/android/n/b/c/b;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lio/casper/android/n/b/a/b;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/casper/android/n/b/a/b$2;

    invoke-direct {v1, p0, p1}, Lio/casper/android/n/b/a/b$2;-><init>(Lio/casper/android/n/b/a/b;Lio/casper/android/n/b/d/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    :cond_0
    return-void
.end method

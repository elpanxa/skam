.class public Lio/casper/android/n/b/a/a;
.super Lio/casper/android/n/b/a/c;
.source "ConnectionStateHandler.java"


# instance fields
.field private mConnectionStateListener:Lio/casper/android/n/b/c/a;


# direct methods
.method static synthetic a(Lio/casper/android/n/b/a/a;)Lio/casper/android/n/b/c/a;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lio/casper/android/n/b/a/a;->mConnectionStateListener:Lio/casper/android/n/b/c/a;

    return-object v0
.end method


# virtual methods
.method public a(Lio/casper/android/n/b/a$a;)V
    .locals 2

    .prologue
    .line 15
    iget-object v0, p0, Lio/casper/android/n/b/a/a;->mConnectionStateListener:Lio/casper/android/n/b/c/a;

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lio/casper/android/n/b/a/a;->mHandler:Landroid/os/Handler;

    new-instance v1, Lio/casper/android/n/b/a/a$1;

    invoke-direct {v1, p0, p1}, Lio/casper/android/n/b/a/a$1;-><init>(Lio/casper/android/n/b/a/a;Lio/casper/android/n/b/a$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :cond_0
    return-void
.end method

.class Lio/casper/android/i/g$1;
.super Landroid/content/BroadcastReceiver;
.source "FriendsRequestsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/g;


# direct methods
.method constructor <init>(Lio/casper/android/i/g;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lio/casper/android/i/g$1;->this$0:Lio/casper/android/i/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lio/casper/android/i/g$1;->this$0:Lio/casper/android/i/g;

    iget-object v1, v1, Lio/casper/android/i/g;->refresh:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    return-void
.end method

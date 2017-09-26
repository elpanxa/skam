.class Lio/casper/android/i/p$1;
.super Landroid/content/BroadcastReceiver;
.source "SnapsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/i/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/p;


# direct methods
.method constructor <init>(Lio/casper/android/i/p;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lio/casper/android/i/p$1;->this$0:Lio/casper/android/i/p;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.casper.android.INTENT_BACKGROUND_UPLOAD_STATE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lio/casper/android/i/p$1;->this$0:Lio/casper/android/i/p;

    invoke-virtual {v0}, Lio/casper/android/i/p;->b()V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.casper.android.INTENT_REFRESH_SNAPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lio/casper/android/i/p$1;->this$0:Lio/casper/android/i/p;

    invoke-virtual {v0}, Lio/casper/android/i/p;->a()V

    goto :goto_0
.end method

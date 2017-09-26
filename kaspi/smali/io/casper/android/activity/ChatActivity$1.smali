.class Lio/casper/android/activity/ChatActivity$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/ChatActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/ChatActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/ChatActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lio/casper/android/activity/ChatActivity$1;->this$0:Lio/casper/android/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lio/casper/android/activity/ChatActivity$1;->this$0:Lio/casper/android/activity/ChatActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/ChatActivity;->finish()V

    .line 70
    return-void
.end method

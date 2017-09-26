.class Lio/casper/android/activity/FriendChooserActivity$2;
.super Ljava/lang/Object;
.source "FriendChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/FriendChooserActivity;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/FriendChooserActivity;

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/casper/android/activity/FriendChooserActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lio/casper/android/activity/FriendChooserActivity$2;->this$0:Lio/casper/android/activity/FriendChooserActivity;

    iput-object p2, p0, Lio/casper/android/activity/FriendChooserActivity$2;->val$objects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity$2;->this$0:Lio/casper/android/activity/FriendChooserActivity;

    invoke-static {v0}, Lio/casper/android/activity/FriendChooserActivity;->b(Lio/casper/android/activity/FriendChooserActivity;)Lio/casper/android/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/a/a/c;->d()V

    .line 240
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity$2;->val$objects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lio/casper/android/activity/FriendChooserActivity$2;->this$0:Lio/casper/android/activity/FriendChooserActivity;

    invoke-static {v2}, Lio/casper/android/activity/FriendChooserActivity;->b(Lio/casper/android/activity/FriendChooserActivity;)Lio/casper/android/a/a/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/casper/android/a/a/c;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.class Lio/casper/android/activity/FriendChooserActivity$1;
.super Ljava/lang/Object;
.source "FriendChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/activity/FriendChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/FriendChooserActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/FriendChooserActivity;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lio/casper/android/activity/FriendChooserActivity$1;->this$0:Lio/casper/android/activity/FriendChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity$1;->this$0:Lio/casper/android/activity/FriendChooserActivity;

    invoke-static {v0}, Lio/casper/android/activity/FriendChooserActivity;->a(Lio/casper/android/activity/FriendChooserActivity;)Lio/casper/android/n/c/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/n/c/a/d;->e()Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i;

    .line 131
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->j()Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->i()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 141
    :sswitch_0
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->d()Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    iget-object v3, p0, Lio/casper/android/activity/FriendChooserActivity$1;->this$0:Lio/casper/android/activity/FriendChooserActivity;

    invoke-static {v3}, Lio/casper/android/activity/FriendChooserActivity;->b(Lio/casper/android/activity/FriendChooserActivity;)Lio/casper/android/a/a/c;

    move-result-object v3

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/casper/android/a/a/c;->a(Ljava/lang/String;)V

    .line 145
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lio/casper/android/activity/FriendChooserActivity$1;->this$0:Lio/casper/android/activity/FriendChooserActivity;

    invoke-static {v0, v1}, Lio/casper/android/activity/FriendChooserActivity;->a(Lio/casper/android/activity/FriendChooserActivity;Ljava/util/List;)V

    .line 157
    return-void

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

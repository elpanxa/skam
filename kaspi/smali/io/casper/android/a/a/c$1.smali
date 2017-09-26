.class Lio/casper/android/a/a/c$1;
.super Ljava/lang/Object;
.source "FriendChooserAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/c;

.field final synthetic val$friend:Lio/casper/android/n/a/c/b/i;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/c;Lio/casper/android/n/a/c/b/i;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lio/casper/android/a/a/c$1;->this$0:Lio/casper/android/a/a/c;

    iput-object p2, p0, Lio/casper/android/a/a/c$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 98
    if-eqz p2, :cond_1

    .line 99
    iget-object v0, p0, Lio/casper/android/a/a/c$1;->this$0:Lio/casper/android/a/a/c;

    invoke-static {v0}, Lio/casper/android/a/a/c;->a(Lio/casper/android/a/a/c;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/c$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lio/casper/android/a/a/c$1;->this$0:Lio/casper/android/a/a/c;

    invoke-static {v0}, Lio/casper/android/a/a/c;->a(Lio/casper/android/a/a/c;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/c$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/casper/android/a/a/c$1;->this$0:Lio/casper/android/a/a/c;

    invoke-virtual {v0}, Lio/casper/android/a/a/c;->notifyDataSetChanged()V

    .line 110
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lio/casper/android/a/a/c$1;->this$0:Lio/casper/android/a/a/c;

    invoke-static {v0}, Lio/casper/android/a/a/c;->a(Lio/casper/android/a/a/c;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/c$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lio/casper/android/a/a/c$1;->this$0:Lio/casper/android/a/a/c;

    invoke-static {v0}, Lio/casper/android/a/a/c;->a(Lio/casper/android/a/a/c;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/c$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

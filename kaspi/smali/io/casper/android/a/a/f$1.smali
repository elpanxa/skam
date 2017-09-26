.class Lio/casper/android/a/a/f$1;
.super Ljava/lang/Object;
.source "SendAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/f;

.field final synthetic val$friend:Lio/casper/android/n/a/c/b/i;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/f;Lio/casper/android/n/a/c/b/i;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lio/casper/android/a/a/f$1;->this$0:Lio/casper/android/a/a/f;

    iput-object p2, p0, Lio/casper/android/a/a/f$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 135
    if-eqz p2, :cond_1

    .line 136
    iget-object v0, p0, Lio/casper/android/a/a/f$1;->this$0:Lio/casper/android/a/a/f;

    invoke-static {v0}, Lio/casper/android/a/a/f;->a(Lio/casper/android/a/a/f;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/f$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lio/casper/android/a/a/f$1;->this$0:Lio/casper/android/a/a/f;

    invoke-static {v0}, Lio/casper/android/a/a/f;->a(Lio/casper/android/a/a/f;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/f$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/casper/android/a/a/f$1;->this$0:Lio/casper/android/a/a/f;

    invoke-virtual {v0}, Lio/casper/android/a/a/f;->notifyDataSetChanged()V

    .line 147
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lio/casper/android/a/a/f$1;->this$0:Lio/casper/android/a/a/f;

    invoke-static {v0}, Lio/casper/android/a/a/f;->a(Lio/casper/android/a/a/f;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/f$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lio/casper/android/a/a/f$1;->this$0:Lio/casper/android/a/a/f;

    invoke-static {v0}, Lio/casper/android/a/a/f;->a(Lio/casper/android/a/a/f;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/f$1;->val$friend:Lio/casper/android/n/a/c/b/i;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

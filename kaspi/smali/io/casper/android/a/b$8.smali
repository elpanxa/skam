.class Lio/casper/android/a/b$8;
.super Ljava/lang/Object;
.source "ConversationSnapsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/b;->a(Lio/casper/android/a/b$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/b;

.field final synthetic val$snap:Lio/casper/android/n/a/c/b/w;


# direct methods
.method constructor <init>(Lio/casper/android/a/b;Lio/casper/android/n/a/c/b/w;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lio/casper/android/a/b$8;->this$0:Lio/casper/android/a/b;

    iput-object p2, p0, Lio/casper/android/a/b$8;->val$snap:Lio/casper/android/n/a/c/b/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 246
    const-string v0, ""

    .line 247
    iget-object v1, p0, Lio/casper/android/a/b$8;->val$snap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/w;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v0, p0, Lio/casper/android/a/b$8;->val$snap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->b()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/casper/android/a/b$8;->this$0:Lio/casper/android/a/b;

    invoke-static {v1}, Lio/casper/android/a/b;->c(Lio/casper/android/a/b;)Lio/casper/android/l/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/casper/android/l/s;->f(Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x1

    return v0

    .line 249
    :cond_1
    iget-object v1, p0, Lio/casper/android/a/b$8;->val$snap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/w;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget-object v0, p0, Lio/casper/android/a/b$8;->val$snap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

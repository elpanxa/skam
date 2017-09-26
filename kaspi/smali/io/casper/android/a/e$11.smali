.class Lio/casper/android/a/e$11;
.super Ljava/lang/Object;
.source "FriendStoriesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/e;->a(Lio/casper/android/a/e$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/e;

.field final synthetic val$story:Lio/casper/android/n/a/c/b/x;


# direct methods
.method constructor <init>(Lio/casper/android/a/e;Lio/casper/android/n/a/c/b/x;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lio/casper/android/a/e$11;->this$0:Lio/casper/android/a/e;

    iput-object p2, p0, Lio/casper/android/a/e$11;->val$story:Lio/casper/android/n/a/c/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 311
    iget-object v0, p0, Lio/casper/android/a/e$11;->this$0:Lio/casper/android/a/e;

    invoke-static {v0}, Lio/casper/android/a/e;->d(Lio/casper/android/a/e;)Lio/casper/android/l/r;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/r;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/a/e$11;->this$0:Lio/casper/android/a/e;

    invoke-static {v1}, Lio/casper/android/a/e;->b(Lio/casper/android/a/e;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/casper/android/activity/SwipeStoriesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    const-string v1, "username"

    iget-object v2, p0, Lio/casper/android/a/e$11;->val$story:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v2}, Lio/casper/android/n/a/c/b/x;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v1, "id"

    iget-object v2, p0, Lio/casper/android/a/e$11;->val$story:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v2}, Lio/casper/android/n/a/c/b/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lio/casper/android/a/e$11;->this$0:Lio/casper/android/a/e;

    invoke-static {v1}, Lio/casper/android/a/e;->b(Lio/casper/android/a/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 327
    :goto_0
    return-void

    .line 320
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/a/e$11;->this$0:Lio/casper/android/a/e;

    invoke-static {v1}, Lio/casper/android/a/e;->b(Lio/casper/android/a/e;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/casper/android/activity/ViewerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 321
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const-string v1, "data"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lio/casper/android/a/e$11;->val$story:Lio/casper/android/n/a/c/b/x;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lio/casper/android/a/e$11;->this$0:Lio/casper/android/a/e;

    invoke-static {v1}, Lio/casper/android/a/e;->b(Lio/casper/android/a/e;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

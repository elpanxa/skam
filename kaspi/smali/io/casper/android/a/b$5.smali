.class Lio/casper/android/a/b$5;
.super Ljava/lang/Object;
.source "ConversationSnapsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 191
    iput-object p1, p0, Lio/casper/android/a/b$5;->this$0:Lio/casper/android/a/b;

    iput-object p2, p0, Lio/casper/android/a/b$5;->val$snap:Lio/casper/android/n/a/c/b/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 195
    iget-object v0, p0, Lio/casper/android/a/b$5;->this$0:Lio/casper/android/a/b;

    invoke-static {v0}, Lio/casper/android/a/b;->b(Lio/casper/android/a/b;)Lio/casper/android/l/k;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/b$5;->val$snap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0, v1}, Lio/casper/android/l/k;->c(Lio/casper/android/n/a/c/b/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/a/b$5;->val$snap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lio/casper/android/a/b$5;->this$0:Lio/casper/android/a/b;

    invoke-static {v0}, Lio/casper/android/a/b;->a(Lio/casper/android/a/b;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700f2

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 198
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/a/b$5;->this$0:Lio/casper/android/a/b;

    invoke-static {v1}, Lio/casper/android/a/b;->a(Lio/casper/android/a/b;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/casper/android/activity/ViewerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v1, "data"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lio/casper/android/a/b$5;->val$snap:Lio/casper/android/n/a/c/b/w;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v1, p0, Lio/casper/android/a/b$5;->this$0:Lio/casper/android/a/b;

    invoke-static {v1}, Lio/casper/android/a/b;->a(Lio/casper/android/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 203
    return-void
.end method

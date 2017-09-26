.class Lio/casper/android/a/c$7;
.super Ljava/lang/Object;
.source "FontsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/c;->a(Lio/casper/android/a/c$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/c;

.field final synthetic val$font:Lio/casper/android/c/b/b/a/b;

.field final synthetic val$saveFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lio/casper/android/a/c;Ljava/io/File;Lio/casper/android/c/b/b/a/b;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lio/casper/android/a/c$7;->this$0:Lio/casper/android/a/c;

    iput-object p2, p0, Lio/casper/android/a/c$7;->val$saveFile:Ljava/io/File;

    iput-object p3, p0, Lio/casper/android/a/c$7;->val$font:Lio/casper/android/c/b/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lio/casper/android/a/c$7;->val$saveFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lio/casper/android/a/c$7;->this$0:Lio/casper/android/a/c;

    invoke-static {v0}, Lio/casper/android/a/c;->a(Lio/casper/android/a/c;)Lio/casper/android/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/c$7;->val$saveFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lio/casper/android/a/c$a;->a(Ljava/io/File;)V

    .line 285
    new-instance v0, Lio/casper/android/b/a/c;

    iget-object v1, p0, Lio/casper/android/a/c$7;->this$0:Lio/casper/android/a/c;

    invoke-static {v1}, Lio/casper/android/a/c;->c(Lio/casper/android/a/c;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/b/a/c;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lio/casper/android/a/c$7;->val$font:Lio/casper/android/c/b/b/a/b;

    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/c;->a(Ljava/lang/String;)Lio/casper/android/b/a/c;

    move-result-object v0

    const-string v1, "Select"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/c;->b(Ljava/lang/String;)Lio/casper/android/b/a/c;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lio/casper/android/a/c$7;->this$0:Lio/casper/android/a/c;

    invoke-static {v0}, Lio/casper/android/a/c;->c(Lio/casper/android/a/c;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07009f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

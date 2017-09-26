.class Lio/casper/android/a/c$5;
.super Ljava/lang/Object;
.source "FontsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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


# direct methods
.method constructor <init>(Lio/casper/android/a/c;Lio/casper/android/c/b/b/a/b;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lio/casper/android/a/c$5;->this$0:Lio/casper/android/a/c;

    iput-object p2, p0, Lio/casper/android/a/c$5;->val$font:Lio/casper/android/c/b/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lio/casper/android/a/c$5;->this$0:Lio/casper/android/a/c;

    invoke-static {v0}, Lio/casper/android/a/c;->d(Lio/casper/android/a/c;)Lio/casper/android/l/g;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/c$5;->val$font:Lio/casper/android/c/b/b/a/b;

    invoke-virtual {v1}, Lio/casper/android/c/b/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/l/g;->a(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lio/casper/android/a/c$5;->this$0:Lio/casper/android/a/c;

    invoke-static {v0}, Lio/casper/android/a/c;->c(Lio/casper/android/a/c;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700af

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 220
    const/4 v0, 0x1

    return v0
.end method

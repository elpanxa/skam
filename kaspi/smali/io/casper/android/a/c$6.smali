.class Lio/casper/android/a/c$6;
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
.method constructor <init>(Lio/casper/android/a/c;Lio/casper/android/c/b/b/a/b;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lio/casper/android/a/c$6;->this$0:Lio/casper/android/a/c;

    iput-object p2, p0, Lio/casper/android/a/c$6;->val$font:Lio/casper/android/c/b/b/a/b;

    iput-object p3, p0, Lio/casper/android/a/c$6;->val$saveFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 235
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/a/c$6;->this$0:Lio/casper/android/a/c;

    invoke-static {v1}, Lio/casper/android/a/c;->c(Lio/casper/android/a/c;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    const/16 v1, 0x64

    invoke-virtual {v0, v3, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 237
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    .line 238
    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 239
    iget-object v1, p0, Lio/casper/android/a/c$6;->this$0:Lio/casper/android/a/c;

    invoke-static {v1}, Lio/casper/android/a/c;->c(Lio/casper/android/a/c;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 241
    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->setProgress(I)V

    .line 243
    new-instance v1, Lio/casper/android/c/c/f/a;

    iget-object v2, p0, Lio/casper/android/a/c$6;->this$0:Lio/casper/android/a/c;

    invoke-static {v2}, Lio/casper/android/a/c;->c(Lio/casper/android/a/c;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lio/casper/android/a/c$6;->val$font:Lio/casper/android/c/b/b/a/b;

    invoke-virtual {v3}, Lio/casper/android/c/b/b/a/b;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/casper/android/a/c$6;->val$saveFile:Ljava/io/File;

    new-instance v5, Lio/casper/android/a/c$6$1;

    invoke-direct {v5, p0, v0}, Lio/casper/android/a/c$6$1;-><init>(Lio/casper/android/a/c$6;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lio/casper/android/c/c/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Lio/casper/android/c/c/c/a;)V

    .line 254
    new-instance v2, Lio/casper/android/a/c$6$2;

    invoke-direct {v2, p0, v0}, Lio/casper/android/a/c$6$2;-><init>(Lio/casper/android/a/c$6;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1, v2}, Lio/casper/android/c/c/f/a;->a(Lio/casper/android/c/c/a/a;)V

    .line 274
    return-void
.end method

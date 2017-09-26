.class Lio/casper/android/i/m$2;
.super Ljava/lang/Object;
.source "SendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/m;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/m;


# direct methods
.method constructor <init>(Lio/casper/android/i/m;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 187
    iget-object v0, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->a(Lio/casper/android/i/m;)Lio/casper/android/l/r;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/r;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-virtual {v0}, Lio/casper/android/i/m;->a()V

    .line 190
    iget-object v0, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->b(Lio/casper/android/i/m;)Lio/casper/android/l/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/s;->o()V

    .line 250
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->c(Lio/casper/android/i/m;)Lio/casper/android/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/a/a/f;->a()Ljava/util/List;

    move-result-object v2

    .line 195
    iget-object v0, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->c(Lio/casper/android/i/m;)Lio/casper/android/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/a/a/f;->b()Z

    move-result v3

    .line 196
    iget-object v0, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->c(Lio/casper/android/i/m;)Lio/casper/android/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/a/a/f;->c()Z

    move-result v4

    .line 198
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 199
    iget-object v0, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->d(Lio/casper/android/i/m;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700e8

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 202
    :cond_1
    new-instance v0, Lio/casper/android/h/a/a;

    iget-object v1, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v1}, Lio/casper/android/i/m;->e(Lio/casper/android/i/m;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v0}, Lio/casper/android/h/a/a;->a()V

    .line 203
    iget-object v0, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->e(Lio/casper/android/i/m;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v1}, Lio/casper/android/i/m;->d(Lio/casper/android/i/m;)Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f070100

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->f(Lio/casper/android/i/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-virtual {v0, v2, v3, v4}, Lio/casper/android/i/m;->a(Ljava/util/List;ZZ)V

    goto :goto_0

    .line 210
    :cond_2
    new-instance v0, Lio/casper/android/n/a/b/b/d;

    invoke-direct {v0}, Lio/casper/android/n/a/b/b/d;-><init>()V

    .line 211
    iget-object v1, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v1}, Lio/casper/android/i/m;->g(Lio/casper/android/i/m;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/b/d;->a(Ljava/io/File;)V

    .line 212
    iget-object v1, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v1}, Lio/casper/android/i/m;->h(Lio/casper/android/i/m;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/b/d;->a(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v1}, Lio/casper/android/i/m;->i(Lio/casper/android/i/m;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "image"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 214
    invoke-virtual {v0, v6}, Lio/casper/android/n/a/b/b/d;->a(I)V

    .line 220
    :cond_3
    :goto_1
    new-instance v5, Lio/casper/android/n/a/b/y;

    iget-object v1, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v1}, Lio/casper/android/i/m;->d(Lio/casper/android/i/m;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Lio/casper/android/n/a/b/y;-><init>(Landroid/content/Context;Lio/casper/android/n/a/b/b/d;)V

    .line 221
    new-instance v0, Lio/casper/android/i/m$2$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/casper/android/i/m$2$1;-><init>(Lio/casper/android/i/m$2;Ljava/util/List;ZZLio/casper/android/n/a/b/y;)V

    invoke-virtual {v5, v0}, Lio/casper/android/n/a/b/y;->a(Lio/casper/android/c/c/a/a;)V

    goto/16 :goto_0

    .line 215
    :cond_4
    iget-object v1, p0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v1}, Lio/casper/android/i/m;->i(Lio/casper/android/i/m;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "video"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    invoke-virtual {v0, v7}, Lio/casper/android/n/a/b/b/d;->a(I)V

    .line 217
    invoke-virtual {v0, v7}, Lio/casper/android/n/a/b/b/d;->a(Z)V

    goto :goto_1
.end method

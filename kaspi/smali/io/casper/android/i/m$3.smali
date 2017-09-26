.class Lio/casper/android/i/m$3;
.super Ljava/lang/Object;
.source "SendFragment.java"

# interfaces
.implements Lio/casper/android/a/a/f$a;


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
    .line 253
    iput-object p1, p0, Lio/casper/android/i/m$3;->this$0:Lio/casper/android/i/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 257
    const-string v1, ""

    .line 259
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 260
    invoke-static {p1}, Lio/casper/android/util/l;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_0
    if-eqz p2, :cond_1

    .line 264
    iget-object v0, p0, Lio/casper/android/i/m$3;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->d(Lio/casper/android/i/m;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070175

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    :cond_1
    if-eqz p3, :cond_4

    .line 269
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    .line 271
    iget-object v0, p0, Lio/casper/android/i/m$3;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->d(Lio/casper/android/i/m;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0701cd

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    if-eqz v2, :cond_2

    .line 281
    :goto_0
    iget-object v1, p0, Lio/casper/android/i/m$3;->this$0:Lio/casper/android/i/m;

    invoke-static {v1}, Lio/casper/android/i/m;->j(Lio/casper/android/i/m;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lio/casper/android/i/m$3;->this$0:Lio/casper/android/i/m;

    invoke-static {v1}, Lio/casper/android/i/m;->k(Lio/casper/android/i/m;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lio/casper/android/i/m$3;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->l(Lio/casper/android/i/m;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    new-instance v1, Lio/casper/android/i/m$3$1;

    invoke-direct {v1, p0}, Lio/casper/android/i/m$3$1;-><init>(Lio/casper/android/i/m$3;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    return-void

    .line 276
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

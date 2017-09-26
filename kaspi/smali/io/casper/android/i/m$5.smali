.class Lio/casper/android/i/m$5;
.super Ljava/lang/Object;
.source "SendFragment.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/m;->a(Ljava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/casper/android/c/c/a/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/m;

.field final synthetic val$sendMediaRequest:Lio/casper/android/n/a/b/p;


# direct methods
.method constructor <init>(Lio/casper/android/i/m;Lio/casper/android/n/a/b/p;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lio/casper/android/i/m$5;->this$0:Lio/casper/android/i/m;

    iput-object p2, p0, Lio/casper/android/i/m$5;->val$sendMediaRequest:Lio/casper/android/n/a/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 537
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/i/m$5;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lio/casper/android/i/m$5;->this$0:Lio/casper/android/i/m;

    iget-object v1, p0, Lio/casper/android/i/m$5;->val$sendMediaRequest:Lio/casper/android/n/a/b/p;

    invoke-virtual {v0, v1, p1, p2}, Lio/casper/android/i/m;->a(Lio/casper/android/c/c/f/c;Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    .line 566
    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 542
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    .line 543
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xca

    if-ne v0, v1, :cond_3

    .line 545
    :cond_0
    new-instance v0, Lio/casper/android/b/a/j;

    iget-object v1, p0, Lio/casper/android/i/m$5;->this$0:Lio/casper/android/i/m;

    invoke-static {v1}, Lio/casper/android/i/m;->d(Lio/casper/android/i/m;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/b/a/j;-><init>(Landroid/content/Context;)V

    .line 546
    iget-object v1, p0, Lio/casper/android/i/m$5;->this$0:Lio/casper/android/i/m;

    invoke-static {v1}, Lio/casper/android/i/m;->i(Lio/casper/android/i/m;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 547
    const-string v1, "Photo"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/j;->a(Ljava/lang/String;)Lio/casper/android/b/a/j;

    .line 551
    :cond_1
    :goto_0
    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/j;->b(Ljava/lang/String;)Lio/casper/android/b/a/j;

    .line 552
    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 554
    new-instance v0, Lio/casper/android/h/a/a;

    iget-object v1, p0, Lio/casper/android/i/m$5;->this$0:Lio/casper/android/i/m;

    invoke-static {v1}, Lio/casper/android/i/m;->e(Lio/casper/android/i/m;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v0}, Lio/casper/android/h/a/a;->b()V

    .line 555
    iget-object v0, p0, Lio/casper/android/i/m$5;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->b(Lio/casper/android/i/m;)Lio/casper/android/l/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/s;->o()V

    .line 561
    :goto_1
    return-void

    .line 548
    :cond_2
    iget-object v1, p0, Lio/casper/android/i/m$5;->this$0:Lio/casper/android/i/m;

    invoke-static {v1}, Lio/casper/android/i/m;->i(Lio/casper/android/i/m;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    const-string v1, "Video"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/j;->a(Ljava/lang/String;)Lio/casper/android/b/a/j;

    goto :goto_0

    .line 558
    :cond_3
    iget-object v0, p0, Lio/casper/android/i/m$5;->this$0:Lio/casper/android/i/m;

    iget-object v1, p0, Lio/casper/android/i/m$5;->val$sendMediaRequest:Lio/casper/android/n/a/b/p;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lio/casper/android/i/m;->a(Lio/casper/android/c/c/f/c;Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.class Lio/casper/android/activity/SnapchatLoginActivity$5;
.super Ljava/lang/Object;
.source "SnapchatLoginActivity.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapchatLoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lio/casper/android/n/a/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/SnapchatLoginActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/SnapchatLoginActivity;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity$5;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/a;)V
    .locals 4

    .prologue
    .line 446
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$5;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->j(Lio/casper/android/activity/SnapchatLoginActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 448
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    .line 449
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 451
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$5;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->k(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/u;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/casper/android/l/u;->a(Lio/casper/android/n/a/c/i;)V

    .line 453
    new-instance v0, Lio/casper/android/b/a/k;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$5;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/b/a/k;-><init>(Landroid/content/Context;)V

    const-string v1, "Auth Token"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/k;->a(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/k;->b(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 454
    invoke-virtual {p2}, Lio/casper/android/n/a/c/a;->a()Lio/casper/android/n/a/c/k;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_0

    .line 458
    new-instance v1, Lio/casper/android/e/b/b;

    invoke-direct {v1}, Lio/casper/android/e/b/b;-><init>()V

    .line 459
    invoke-virtual {v0}, Lio/casper/android/n/a/c/k;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/e/b/b;->a(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0}, Lio/casper/android/n/a/c/k;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/e/b/b;->b(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v0}, Lio/casper/android/n/a/c/k;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/e/b/b;->d(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0}, Lio/casper/android/n/a/c/k;->h()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/casper/android/e/b/b;->a(J)V

    .line 463
    invoke-virtual {v0}, Lio/casper/android/n/a/c/k;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/casper/android/e/b/b;->e(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$5;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->h(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/e/c/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/casper/android/e/c/a;->b(Lio/casper/android/e/a/d;)J

    move-result-wide v0

    .line 466
    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$5;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    iget-object v2, v2, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v2, v0, v1}, Lio/casper/android/l/s;->a(J)V

    .line 470
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$5;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/util/a;->g(Landroid/content/Context;)V

    .line 476
    :goto_0
    return-void

    .line 473
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/casper/android/activity/SnapchatLoginActivity$5;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 442
    check-cast p2, Lio/casper/android/n/a/c/a;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/activity/SnapchatLoginActivity$5;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/a;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$5;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->j(Lio/casper/android/activity/SnapchatLoginActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 483
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$5;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 484
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 485
    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 486
    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 487
    new-instance v1, Lio/casper/android/h/a/a;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1}, Lio/casper/android/h/a/a;->a()V

    .line 489
    if-eqz p1, :cond_0

    .line 491
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    .line 492
    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Lio/casper/android/b/a/k;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$5;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/b/a/k;-><init>(Landroid/content/Context;)V

    const-string v1, "Auth Token"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/k;->a(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v0

    const-string v1, "Auth Token Invalid"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/k;->b(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 498
    :cond_0
    return-void
.end method

.class Lio/casper/android/activity/SnapchatLoginActivity$4;
.super Ljava/lang/Object;
.source "SnapchatLoginActivity.java"

# interfaces
.implements Lio/casper/android/o/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapchatLoginActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/SnapchatLoginActivity;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/casper/android/activity/SnapchatLoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    iput-object p2, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/casper/android/c/c/g/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/casper/android/c/c/g/a",
            "<",
            "Lio/casper/android/n/a/c/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 240
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->j(Lio/casper/android/activity/SnapchatLoginActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 242
    invoke-virtual {p1}, Lio/casper/android/c/c/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/i;

    .line 244
    invoke-virtual {v0}, Lio/casper/android/n/a/c/i;->n()I

    move-result v2

    .line 245
    invoke-virtual {v0}, Lio/casper/android/n/a/c/i;->m()Ljava/lang/String;

    move-result-object v1

    .line 247
    new-instance v3, Lio/casper/android/b/a/k;

    iget-object v4, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v4}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/casper/android/b/a/k;-><init>(Landroid/content/Context;)V

    const-string v4, "Snapchat Status Code"

    invoke-virtual {v3, v4}, Lio/casper/android/b/a/k;->a(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/casper/android/b/a/k;->b(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v3

    invoke-static {v3}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 249
    invoke-virtual {v0}, Lio/casper/android/n/a/c/i;->a()Lio/casper/android/n/a/c/k;

    move-result-object v3

    .line 251
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    .line 253
    new-instance v1, Lio/casper/android/b/a/k;

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v2}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/casper/android/b/a/k;-><init>(Landroid/content/Context;)V

    const-string v2, "Credentials"

    invoke-virtual {v1, v2}, Lio/casper/android/b/a/k;->a(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v1

    const-string v2, "Success"

    invoke-virtual {v1, v2}, Lio/casper/android/b/a/k;->b(Ljava/lang/String;)Lio/casper/android/b/a/k;

    move-result-object v1

    invoke-static {v1}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 255
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->h(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/e/c/a;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->val$username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/casper/android/e/c/a;->a(Ljava/lang/String;)Lio/casper/android/e/b/b;

    move-result-object v1

    .line 256
    if-nez v1, :cond_0

    .line 257
    new-instance v1, Lio/casper/android/e/b/b;

    invoke-direct {v1}, Lio/casper/android/e/b/b;-><init>()V

    .line 260
    :cond_0
    invoke-virtual {v3}, Lio/casper/android/n/a/c/k;->e()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->val$username:Ljava/lang/String;

    .line 265
    :cond_1
    invoke-virtual {v1, v2}, Lio/casper/android/e/b/b;->a(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3}, Lio/casper/android/n/a/c/k;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/e/b/b;->b(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->val$password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/casper/android/e/b/b;->c(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v3}, Lio/casper/android/n/a/c/k;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/e/b/b;->d(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v3}, Lio/casper/android/n/a/c/k;->h()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lio/casper/android/e/b/b;->a(J)V

    .line 270
    invoke-virtual {v3}, Lio/casper/android/n/a/c/k;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/e/b/b;->e(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0}, Lio/casper/android/n/a/c/i;->l()Lio/casper/android/n/a/c/b/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/e/b/b;->a(Lio/casper/android/n/a/c/b/u;)V

    .line 273
    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v2}, Lio/casper/android/activity/SnapchatLoginActivity;->h(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/e/c/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/casper/android/e/c/a;->b(Lio/casper/android/e/a/d;)J

    move-result-wide v2

    .line 275
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    iget-object v1, v1, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v1, v2, v3}, Lio/casper/android/l/s;->a(J)V

    .line 276
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->k(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/casper/android/l/u;->a(Lio/casper/android/n/a/c/i;)V

    .line 278
    invoke-virtual {v0}, Lio/casper/android/n/a/c/i;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    iget-object v1, v1, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/i;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/casper/android/l/s;->a(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    iget-object v1, v1, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/i;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/casper/android/l/s;->d(Ljava/lang/String;)V

    .line 287
    :cond_2
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->j(Lio/casper/android/activity/SnapchatLoginActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 288
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/util/a;->g(Landroid/content/Context;)V

    .line 338
    :cond_3
    :goto_0
    return-void

    .line 292
    :cond_4
    iget-object v3, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v3}, Lio/casper/android/activity/SnapchatLoginActivity;->j(Lio/casper/android/activity/SnapchatLoginActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 294
    invoke-virtual {v0}, Lio/casper/android/n/a/c/i;->h()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 295
    iget-object v3, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v3, v5}, Lio/casper/android/activity/SnapchatLoginActivity;->a(Lio/casper/android/activity/SnapchatLoginActivity;Z)Z

    .line 296
    iget-object v3, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/i;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/casper/android/activity/SnapchatLoginActivity;->a(Lio/casper/android/activity/SnapchatLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    iget-object v3, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/i;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    :cond_5
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->l(Lio/casper/android/activity/SnapchatLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 302
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v2}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 303
    const v2, 0x7f0701c3

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 304
    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v2}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v5}, Lio/casper/android/activity/SnapchatLoginActivity;->m(Lio/casper/android/activity/SnapchatLoginActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 305
    const v2, 0x7f070047

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 306
    const v2, 0x7f070036

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 307
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 308
    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v2}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0701c4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lio/casper/android/activity/SnapchatLoginActivity$4$1;

    invoke-direct {v4, p0}, Lio/casper/android/activity/SnapchatLoginActivity$4$1;-><init>(Lio/casper/android/activity/SnapchatLoginActivity$4;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->input(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 314
    new-instance v2, Lio/casper/android/h/a/a;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v2}, Lio/casper/android/h/a/a;->a()V

    .line 316
    if-eqz v1, :cond_3

    .line 318
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v2}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    const v2, 0x7f0701bd

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 320
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 321
    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 322
    new-instance v1, Lio/casper/android/h/a/a;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1}, Lio/casper/android/h/a/a;->a()V

    goto/16 :goto_0

    .line 328
    :cond_6
    if-nez v1, :cond_7

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Unknown Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    :goto_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lio/casper/android/activity/SnapchatLoginActivity$4;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 6

    .prologue
    const v5, 0x7f070038

    .line 343
    const-string v0, "SnapchatLoginActivity"

    const-string v1, "SnaphatLoginTask failed with Exception"

    invoke-static {v0, v1, p1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->j(Lio/casper/android/activity/SnapchatLoginActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 347
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 349
    instance-of v1, p1, Lio/casper/android/c/c/b/a;

    if-eqz v1, :cond_3

    .line 351
    check-cast p1, Lio/casper/android/c/c/b/a;

    .line 352
    invoke-virtual {p1}, Lio/casper/android/c/c/b/a;->a()Lcom/squareup/okhttp/Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Response;->code()I

    move-result v1

    .line 354
    invoke-virtual {p1}, Lio/casper/android/c/c/b/a;->b()Ljava/lang/Throwable;

    move-result-object v0

    .line 355
    const-string v2, "SnapchatLoginActivity"

    const-string v3, "SnaphatLoginTask SynchronousException contains Throwable"

    invoke-static {v2, v3, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    instance-of v2, v0, Lio/casper/android/c/d/a/a;

    if-eqz v2, :cond_0

    .line 359
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->g(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/casper/android/l/i;->b(Ljava/lang/String;)V

    .line 361
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 362
    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 363
    invoke-virtual {v0, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 364
    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 365
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 428
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    const/16 v2, 0x191

    if-eq v1, v2, :cond_1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_2

    .line 376
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nError: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    :cond_2
    invoke-virtual {p1}, Lio/casper/android/c/c/b/a;->a()Lcom/squareup/okhttp/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/Response;->request()Lcom/squareup/okhttp/Request;

    move-result-object v1

    .line 380
    if-eqz v1, :cond_3

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nURL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/squareup/okhttp/Request;->httpUrl()Lcom/squareup/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    :cond_3
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v2}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    const v2, 0x7f0701bd

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 390
    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$4;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v2}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 391
    invoke-virtual {v1, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 392
    new-instance v0, Lio/casper/android/activity/SnapchatLoginActivity$4$2;

    invoke-direct {v0, p0}, Lio/casper/android/activity/SnapchatLoginActivity$4$2;-><init>(Lio/casper/android/activity/SnapchatLoginActivity$4;)V

    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 426
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto/16 :goto_0
.end method

.class Lio/casper/android/activity/GoogleLoginActivity$2$1;
.super Ljava/lang/Object;
.source "GoogleLoginActivity.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/GoogleLoginActivity$2;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/casper/android/activity/GoogleLoginActivity$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iput-object p2, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->val$email:Ljava/lang/String;

    iput-object p3, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/activity/GoogleLoginActivity$2$1;->a(Lcom/squareup/okhttp/Response;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 113
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v0, v0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/GoogleLoginActivity;->c(Lio/casper/android/activity/GoogleLoginActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 115
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v0, v0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/GoogleLoginActivity;->d(Lio/casper/android/activity/GoogleLoginActivity;)Lio/casper/android/l/i;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->val$email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/i;->a(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v0, v0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/GoogleLoginActivity;->d(Lio/casper/android/activity/GoogleLoginActivity;)Lio/casper/android/l/i;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/i;->b(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v0, v0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/GoogleLoginActivity;->d(Lio/casper/android/activity/GoogleLoginActivity;)Lio/casper/android/l/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/casper/android/l/i;->c(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v0, v0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/GoogleLoginActivity;->d(Lio/casper/android/activity/GoogleLoginActivity;)Lio/casper/android/l/i;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v1, v1, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/GoogleLoginActivity;->d(Lio/casper/android/activity/GoogleLoginActivity;)Lio/casper/android/l/i;

    move-result-object v1

    invoke-virtual {v1}, Lio/casper/android/l/i;->f()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lio/casper/android/l/i;->a(J)V

    .line 120
    new-instance v0, Lio/casper/android/b/a/d;

    iget-object v1, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v1, v1, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/GoogleLoginActivity;->b(Lio/casper/android/activity/GoogleLoginActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/casper/android/b/a/d;-><init>(Landroid/content/Context;)V

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Lio/casper/android/b/a/d;->a(Ljava/lang/String;)Lio/casper/android/b/a/d;

    move-result-object v0

    invoke-static {v0}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 123
    const-string v1, "type"

    iget-object v2, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v2, v2, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-virtual {v2}, Lio/casper/android/activity/GoogleLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v1, v1, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lio/casper/android/activity/GoogleLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 125
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v0, v0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/GoogleLoginActivity;->finish()V

    .line 127
    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v0, v0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/GoogleLoginActivity;->c(Lio/casper/android/activity/GoogleLoginActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 134
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v0, v0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/GoogleLoginActivity;->b(Lio/casper/android/activity/GoogleLoginActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    const v0, 0x7f0701a1

    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 136
    const v0, 0x7f070038

    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 138
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 140
    instance-of v2, p2, Lio/casper/android/c/d/a/a;

    if-eqz v2, :cond_0

    .line 142
    check-cast p2, Lio/casper/android/c/d/a/a;

    .line 143
    invoke-virtual {p2}, Lio/casper/android/c/d/a/a;->a()Lio/casper/android/c/d/a/a$a;

    move-result-object v0

    .line 145
    sget-object v2, Lio/casper/android/activity/GoogleLoginActivity$3;->$SwitchMap$io$casper$android$api$google$exception$OAuthTokenException$ErrorType:[I

    invoke-virtual {v0}, Lio/casper/android/c/d/a/a$a;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 167
    const-string v0, "Unknown Google Error"

    .line 176
    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 177
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 179
    return-void

    .line 149
    :pswitch_0
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v0, v0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/GoogleLoginActivity;->b(Lio/casper/android/activity/GoogleLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0700c0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    new-instance v2, Lio/casper/android/b/a/d;

    iget-object v3, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v3, v3, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v3}, Lio/casper/android/activity/GoogleLoginActivity;->b(Lio/casper/android/activity/GoogleLoginActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/casper/android/b/a/d;-><init>(Landroid/content/Context;)V

    const-string v3, "BAD_AUTHENTICATION"

    invoke-virtual {v2, v3}, Lio/casper/android/b/a/d;->a(Ljava/lang/String;)Lio/casper/android/b/a/d;

    move-result-object v2

    invoke-static {v2}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v0, v0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/GoogleLoginActivity;->b(Lio/casper/android/activity/GoogleLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0700bf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v2, Lio/casper/android/b/a/d;

    iget-object v3, p0, Lio/casper/android/activity/GoogleLoginActivity$2$1;->this$1:Lio/casper/android/activity/GoogleLoginActivity$2;

    iget-object v3, v3, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v3}, Lio/casper/android/activity/GoogleLoginActivity;->b(Lio/casper/android/activity/GoogleLoginActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/casper/android/b/a/d;-><init>(Landroid/content/Context;)V

    const-string v3, "WEB_LOGIN_REQUIRED"

    invoke-virtual {v2, v3}, Lio/casper/android/b/a/d;->a(Ljava/lang/String;)Lio/casper/android/b/a/d;

    move-result-object v2

    invoke-static {v2}, Lio/casper/android/l/c;->a(Lio/casper/android/b/a/a/a;)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

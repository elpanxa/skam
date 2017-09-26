.class Lio/casper/android/activity/SnapchatLoginActivity$2;
.super Ljava/lang/Object;
.source "SnapchatLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapchatLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/SnapchatLoginActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/SnapchatLoginActivity;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 151
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->c(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/n/c/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/n/c/a/i;->f()V

    .line 153
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->d(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->e(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v2}, Lio/casper/android/activity/SnapchatLoginActivity;->f(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070101

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 203
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    :cond_1
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700be

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v3, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v3}, Lio/casper/android/activity/SnapchatLoginActivity;->g(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/i;

    move-result-object v3

    invoke-virtual {v3}, Lio/casper/android/l/i;->i()Z

    move-result v3

    if-nez v3, :cond_4

    .line 176
    iget-object v3, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v3}, Lio/casper/android/activity/SnapchatLoginActivity;->g(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/l/i;

    move-result-object v3

    invoke-virtual {v3}, Lio/casper/android/l/i;->a()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 177
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/casper/android/activity/GoogleLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    const-string v1, "type"

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Lio/casper/android/activity/SnapchatLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 186
    :cond_4
    iget-object v3, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v3}, Lio/casper/android/activity/SnapchatLoginActivity;->h(Lio/casper/android/activity/SnapchatLoginActivity;)Lio/casper/android/e/c/a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/casper/android/e/c/a;->a(Ljava/lang/String;)Lio/casper/android/e/b/b;

    move-result-object v3

    .line 187
    if-eqz v3, :cond_5

    .line 188
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapchatLoginActivity;->b(Lio/casper/android/activity/SnapchatLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07007b

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 189
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v3}, Lio/casper/android/e/b/b;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/casper/android/l/s;->a(J)V

    .line 190
    iget-object v0, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    iget-object v0, v0, Lio/casper/android/activity/SnapchatLoginActivity;->mSnapchatAccountManager:Lio/casper/android/l/s;

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    goto/16 :goto_0

    .line 195
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 196
    iget-object v1, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    invoke-virtual {v1, v0, v2}, Lio/casper/android/activity/SnapchatLoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 201
    :cond_6
    iget-object v2, p0, Lio/casper/android/activity/SnapchatLoginActivity$2;->this$0:Lio/casper/android/activity/SnapchatLoginActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lio/casper/android/activity/SnapchatLoginActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

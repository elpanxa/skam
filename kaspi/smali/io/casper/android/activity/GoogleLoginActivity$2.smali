.class Lio/casper/android/activity/GoogleLoginActivity$2;
.super Ljava/lang/Object;
.source "GoogleLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/GoogleLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/GoogleLoginActivity;

.field final synthetic val$emailText:Landroid/widget/EditText;

.field final synthetic val$passwordText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lio/casper/android/activity/GoogleLoginActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    iput-object p2, p0, Lio/casper/android/activity/GoogleLoginActivity$2;->val$emailText:Landroid/widget/EditText;

    iput-object p3, p0, Lio/casper/android/activity/GoogleLoginActivity$2;->val$passwordText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity$2;->val$emailText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lio/casper/android/activity/GoogleLoginActivity$2;->val$passwordText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v0}, Lio/casper/android/activity/GoogleLoginActivity;->b(Lio/casper/android/activity/GoogleLoginActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700be

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v2, p0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v2}, Lio/casper/android/activity/GoogleLoginActivity;->c(Lio/casper/android/activity/GoogleLoginActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 106
    iget-object v2, p0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v2}, Lio/casper/android/activity/GoogleLoginActivity;->c(Lio/casper/android/activity/GoogleLoginActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 108
    new-instance v2, Lio/casper/android/c/d/c/a;

    iget-object v3, p0, Lio/casper/android/activity/GoogleLoginActivity$2;->this$0:Lio/casper/android/activity/GoogleLoginActivity;

    invoke-static {v3}, Lio/casper/android/activity/GoogleLoginActivity;->b(Lio/casper/android/activity/GoogleLoginActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lio/casper/android/c/d/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lio/casper/android/activity/GoogleLoginActivity$2$1;

    invoke-direct {v3, p0, v0, v1}, Lio/casper/android/activity/GoogleLoginActivity$2$1;-><init>(Lio/casper/android/activity/GoogleLoginActivity$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/casper/android/c/d/c/a;->a(Lio/casper/android/c/c/a/a;)V

    goto :goto_0
.end method

.class Lio/casper/android/activity/OldSettingsActivity$3$1$1;
.super Ljava/lang/Object;
.source "OldSettingsActivity.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/OldSettingsActivity$3$1;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
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
.field final synthetic this$2:Lio/casper/android/activity/OldSettingsActivity$3$1;

.field final synthetic val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lio/casper/android/activity/OldSettingsActivity$3$1;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lio/casper/android/activity/OldSettingsActivity$3$1$1;->this$2:Lio/casper/android/activity/OldSettingsActivity$3$1;

    iput-object p2, p0, Lio/casper/android/activity/OldSettingsActivity$3$1$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 159
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/activity/OldSettingsActivity$3$1$1;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$3$1$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 180
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$3$1$1;->this$2:Lio/casper/android/activity/OldSettingsActivity$3$1;

    iget-object v0, v0, Lio/casper/android/activity/OldSettingsActivity$3$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/OldSettingsActivity$3;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v0}, Lio/casper/android/activity/OldSettingsActivity;->a(Lio/casper/android/activity/OldSettingsActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07007c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$3$1$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 166
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    .line 167
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$3$1$1;->this$2:Lio/casper/android/activity/OldSettingsActivity$3$1;

    iget-object v0, v0, Lio/casper/android/activity/OldSettingsActivity$3$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/OldSettingsActivity$3;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v0}, Lio/casper/android/activity/OldSettingsActivity;->a(Lio/casper/android/activity/OldSettingsActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070088

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 169
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$3$1$1;->this$2:Lio/casper/android/activity/OldSettingsActivity$3$1;

    iget-object v0, v0, Lio/casper/android/activity/OldSettingsActivity$3$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/OldSettingsActivity$3;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v0}, Lio/casper/android/activity/OldSettingsActivity;->d(Lio/casper/android/activity/OldSettingsActivity;)Lio/casper/android/l/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    .line 174
    :goto_0
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/casper/android/activity/OldSettingsActivity$3$1$1;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

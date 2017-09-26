.class Lio/casper/android/activity/ConversationActivity$1;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/ConversationActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
.field final synthetic this$0:Lio/casper/android/activity/ConversationActivity;

.field final synthetic val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field final synthetic val$request:Lio/casper/android/n/a/b/d;


# direct methods
.method constructor <init>(Lio/casper/android/activity/ConversationActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Lio/casper/android/n/a/b/d;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lio/casper/android/activity/ConversationActivity$1;->this$0:Lio/casper/android/activity/ConversationActivity;

    iput-object p2, p0, Lio/casper/android/activity/ConversationActivity$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iput-object p3, p0, Lio/casper/android/activity/ConversationActivity$1;->val$request:Lio/casper/android/n/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 134
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/activity/ConversationActivity$1;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lio/casper/android/activity/ConversationActivity$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 157
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/ConversationActivity$1;->this$0:Lio/casper/android/activity/ConversationActivity;

    invoke-static {v1}, Lio/casper/android/activity/ConversationActivity;->a(Lio/casper/android/activity/ConversationActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 160
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 161
    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 162
    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 163
    new-instance v1, Lio/casper/android/activity/ConversationActivity$1$1;

    invoke-direct {v1, p0, p0}, Lio/casper/android/activity/ConversationActivity$1$1;-><init>(Lio/casper/android/activity/ConversationActivity$1;Lio/casper/android/c/c/a/a;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 170
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 172
    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Void;)V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lio/casper/android/activity/ConversationActivity$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 141
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    .line 142
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lio/casper/android/activity/ConversationActivity$1;->this$0:Lio/casper/android/activity/ConversationActivity;

    invoke-static {v0}, Lio/casper/android/activity/ConversationActivity;->a(Lio/casper/android/activity/ConversationActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070097

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    iget-object v0, p0, Lio/casper/android/activity/ConversationActivity$1;->this$0:Lio/casper/android/activity/ConversationActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/ConversationActivity;->finish()V

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lio/casper/android/activity/ConversationActivity$1;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

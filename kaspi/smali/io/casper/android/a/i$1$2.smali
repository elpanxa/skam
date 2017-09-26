.class Lio/casper/android/a/i$1$2;
.super Ljava/lang/Object;
.source "UpdatesListAdapter.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/i$1;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/a/i$1;

.field final synthetic val$apkFile:Ljava/io/File;

.field final synthetic val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lio/casper/android/a/i$1;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lio/casper/android/a/i$1$2;->this$1:Lio/casper/android/a/i$1;

    iput-object p2, p0, Lio/casper/android/a/i$1$2;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    iput-object p3, p0, Lio/casper/android/a/i$1$2;->val$apkFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lio/casper/android/a/i$1$2;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lio/casper/android/a/i$1$2;->val$apkFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    iget-object v1, p0, Lio/casper/android/a/i$1$2;->this$1:Lio/casper/android/a/i$1;

    iget-object v1, v1, Lio/casper/android/a/i$1;->this$0:Lio/casper/android/a/i;

    invoke-static {v1}, Lio/casper/android/a/i;->b(Lio/casper/android/a/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/casper/android/a/i$1$2;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 127
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/i$1$2;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lio/casper/android/a/i$1$2;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 150
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/a/i$1$2;->this$1:Lio/casper/android/a/i$1;

    iget-object v1, v1, Lio/casper/android/a/i$1;->this$0:Lio/casper/android/a/i;

    invoke-static {v1}, Lio/casper/android/a/i;->b(Lio/casper/android/a/i;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 152
    const v1, 0x7f0700ff

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 153
    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 154
    const v1, 0x7f070041

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 155
    new-instance v1, Lio/casper/android/a/i$1$2$1;

    invoke-direct {v1, p0}, Lio/casper/android/a/i$1$2$1;-><init>(Lio/casper/android/a/i$1$2;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 162
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 164
    return-void
.end method

.class Lio/casper/android/a/i$1$2$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "UpdatesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/i$1$2;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/casper/android/a/i$1$2;


# direct methods
.method constructor <init>(Lio/casper/android/a/i$1$2;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lio/casper/android/a/i$1$2$1;->this$2:Lio/casper/android/a/i$1$2;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 159
    iget-object v0, p0, Lio/casper/android/a/i$1$2$1;->this$2:Lio/casper/android/a/i$1$2;

    iget-object v0, v0, Lio/casper/android/a/i$1$2;->this$1:Lio/casper/android/a/i$1;

    iget-object v0, v0, Lio/casper/android/a/i$1;->this$0:Lio/casper/android/a/i;

    invoke-static {v0}, Lio/casper/android/a/i;->b(Lio/casper/android/a/i;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lio/casper/android/a/i$1$2$1;->this$2:Lio/casper/android/a/i$1$2;

    iget-object v3, v3, Lio/casper/android/a/i$1$2;->this$1:Lio/casper/android/a/i$1;

    iget-object v3, v3, Lio/casper/android/a/i$1;->this$0:Lio/casper/android/a/i;

    invoke-static {v3}, Lio/casper/android/a/i;->d(Lio/casper/android/a/i;)Lio/casper/android/l/p;

    move-result-object v3

    invoke-virtual {v3}, Lio/casper/android/l/p;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.class Lio/casper/android/a/e$7$1$1$1;
.super Ljava/lang/Object;
.source "FriendStoriesListAdapter.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/e$7$1$1;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
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
.field final synthetic this$3:Lio/casper/android/a/e$7$1$1;

.field final synthetic val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lio/casper/android/a/e$7$1$1;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lio/casper/android/a/e$7$1$1$1;->this$3:Lio/casper/android/a/e$7$1$1;

    iput-object p2, p0, Lio/casper/android/a/e$7$1$1$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/e$7$1$1$1;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lio/casper/android/a/e$7$1$1$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 203
    iget-object v0, p0, Lio/casper/android/a/e$7$1$1$1;->this$3:Lio/casper/android/a/e$7$1$1;

    iget-object v0, v0, Lio/casper/android/a/e$7$1$1;->this$2:Lio/casper/android/a/e$7$1;

    iget-object v0, v0, Lio/casper/android/a/e$7$1;->this$1:Lio/casper/android/a/e$7;

    iget-object v0, v0, Lio/casper/android/a/e$7;->this$0:Lio/casper/android/a/e;

    invoke-static {v0}, Lio/casper/android/a/e;->b(Lio/casper/android/a/e;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07007c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 204
    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lio/casper/android/a/e$7$1$1$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 195
    iget-object v0, p0, Lio/casper/android/a/e$7$1$1$1;->this$3:Lio/casper/android/a/e$7$1$1;

    iget-object v0, v0, Lio/casper/android/a/e$7$1$1;->this$2:Lio/casper/android/a/e$7$1;

    iget-object v0, v0, Lio/casper/android/a/e$7$1;->this$1:Lio/casper/android/a/e$7;

    iget-object v0, v0, Lio/casper/android/a/e$7;->this$0:Lio/casper/android/a/e;

    invoke-static {v0}, Lio/casper/android/a/e;->c(Lio/casper/android/a/e;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/e$7$1$1$1;->this$3:Lio/casper/android/a/e$7$1$1;

    iget-object v1, v1, Lio/casper/android/a/e$7$1$1;->this$2:Lio/casper/android/a/e$7$1;

    iget-object v1, v1, Lio/casper/android/a/e$7$1;->this$1:Lio/casper/android/a/e$7;

    iget v1, v1, Lio/casper/android/a/e$7;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lio/casper/android/a/e$7$1$1$1;->this$3:Lio/casper/android/a/e$7$1$1;

    iget-object v0, v0, Lio/casper/android/a/e$7$1$1;->this$2:Lio/casper/android/a/e$7$1;

    iget-object v0, v0, Lio/casper/android/a/e$7$1;->this$1:Lio/casper/android/a/e$7;

    iget-object v0, v0, Lio/casper/android/a/e$7;->this$0:Lio/casper/android/a/e;

    invoke-static {v0}, Lio/casper/android/a/e;->a(Lio/casper/android/a/e;)V

    .line 198
    return-void
.end method

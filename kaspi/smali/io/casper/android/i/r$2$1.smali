.class Lio/casper/android/i/r$2$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "UpdatesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/r$2;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/i/r$2;

.field final synthetic val$callback:Lio/casper/android/c/c/a/a;


# direct methods
.method constructor <init>(Lio/casper/android/i/r$2;Lio/casper/android/c/c/a/a;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lio/casper/android/i/r$2$1;->this$1:Lio/casper/android/i/r$2;

    iput-object p2, p0, Lio/casper/android/i/r$2$1;->val$callback:Lio/casper/android/c/c/a/a;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 150
    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 143
    iget-object v0, p0, Lio/casper/android/i/r$2$1;->this$1:Lio/casper/android/i/r$2;

    iget-object v0, v0, Lio/casper/android/i/r$2;->this$0:Lio/casper/android/i/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/casper/android/i/r;->a(Z)V

    .line 144
    iget-object v0, p0, Lio/casper/android/i/r$2$1;->this$1:Lio/casper/android/i/r$2;

    iget-object v0, v0, Lio/casper/android/i/r$2;->val$updatesRequest:Lio/casper/android/c/b/a/e;

    iget-object v1, p0, Lio/casper/android/i/r$2$1;->val$callback:Lio/casper/android/c/c/a/a;

    invoke-virtual {v0, v1}, Lio/casper/android/c/b/a/e;->a(Lio/casper/android/c/c/a/a;)V

    .line 145
    return-void
.end method

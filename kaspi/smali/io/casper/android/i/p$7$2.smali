.class Lio/casper/android/i/p$7$2;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "SnapsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/p$7;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/i/p$7;

.field final synthetic val$callback:Lio/casper/android/c/c/a/a;


# direct methods
.method constructor <init>(Lio/casper/android/i/p$7;Lio/casper/android/c/c/a/a;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lio/casper/android/i/p$7$2;->this$1:Lio/casper/android/i/p$7;

    iput-object p2, p0, Lio/casper/android/i/p$7$2;->val$callback:Lio/casper/android/c/c/a/a;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lio/casper/android/i/p$7$2;->this$1:Lio/casper/android/i/p$7;

    iget-object v0, v0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/casper/android/i/p;->a(Z)V

    .line 302
    iget-object v0, p0, Lio/casper/android/i/p$7$2;->this$1:Lio/casper/android/i/p$7;

    iget-object v0, v0, Lio/casper/android/i/p$7;->val$conversationsRequest:Lio/casper/android/n/a/b/g;

    iget-object v1, p0, Lio/casper/android/i/p$7$2;->val$callback:Lio/casper/android/c/c/a/a;

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/g;->a(Lio/casper/android/c/c/a/a;)V

    .line 303
    return-void
.end method

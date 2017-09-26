.class Lio/casper/android/i/q$2$2;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "StoriesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/q$2;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/i/q$2;

.field final synthetic val$httpCallback:Lio/casper/android/c/c/a/a;


# direct methods
.method constructor <init>(Lio/casper/android/i/q$2;Lio/casper/android/c/c/a/a;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lio/casper/android/i/q$2$2;->this$1:Lio/casper/android/i/q$2;

    iput-object p2, p0, Lio/casper/android/i/q$2$2;->val$httpCallback:Lio/casper/android/c/c/a/a;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lio/casper/android/i/q$2$2;->this$1:Lio/casper/android/i/q$2;

    iget-object v0, v0, Lio/casper/android/i/q$2;->this$0:Lio/casper/android/i/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/casper/android/i/q;->a(Z)V

    .line 175
    iget-object v0, p0, Lio/casper/android/i/q$2$2;->this$1:Lio/casper/android/i/q$2;

    iget-object v0, v0, Lio/casper/android/i/q$2;->val$request:Lio/casper/android/n/a/b/t;

    iget-object v1, p0, Lio/casper/android/i/q$2$2;->val$httpCallback:Lio/casper/android/c/c/a/a;

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/t;->a(Lio/casper/android/c/c/a/a;)V

    .line 176
    return-void
.end method

.class Lio/casper/android/a/a/h$4$1$1$1;
.super Ljava/lang/Object;
.source "StoriesAdapter.java"

# interfaces
.implements Lio/casper/android/o/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/h$4$1$1;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lio/casper/android/a/a/h$4$1$1;

.field final synthetic val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/h$4$1$1;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lio/casper/android/a/a/h$4$1$1$1;->this$3:Lio/casper/android/a/a/h$4$1$1;

    iput-object p2, p0, Lio/casper/android/a/a/h$4$1$1$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lio/casper/android/a/a/h$4$1$1$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 191
    iget-object v0, p0, Lio/casper/android/a/a/h$4$1$1$1;->this$3:Lio/casper/android/a/a/h$4$1$1;

    iget-object v0, v0, Lio/casper/android/a/a/h$4$1$1;->this$2:Lio/casper/android/a/a/h$4$1;

    iget-object v0, v0, Lio/casper/android/a/a/h$4$1;->this$1:Lio/casper/android/a/a/h$4;

    iget-object v0, v0, Lio/casper/android/a/a/h$4;->this$0:Lio/casper/android/a/a/h;

    invoke-static {v0}, Lio/casper/android/a/a/h;->a(Lio/casper/android/a/a/h;)Lio/casper/android/i/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/i/q;->a()V

    .line 192
    return-void
.end method

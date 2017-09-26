.class Lio/casper/android/h/a$1;
.super Ljava/lang/Object;
.source "AccountSelectorDialog.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/h/a;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/h/a;


# direct methods
.method constructor <init>(Lio/casper/android/h/a;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lio/casper/android/h/a$1;->this$0:Lio/casper/android/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lio/casper/android/h/a$1;->this$0:Lio/casper/android/h/a;

    invoke-static {v0}, Lio/casper/android/h/a;->a(Lio/casper/android/h/a;)Lio/casper/android/e/c/a;

    move-result-object v0

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/casper/android/e/c/a;->a(Ljava/lang/String;)Lio/casper/android/e/b/b;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/casper/android/h/a$1;->this$0:Lio/casper/android/h/a;

    invoke-static {v1}, Lio/casper/android/h/a;->b(Lio/casper/android/h/a;)Lio/casper/android/h/a$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lio/casper/android/h/a$1;->this$0:Lio/casper/android/h/a;

    invoke-static {v1}, Lio/casper/android/h/a;->b(Lio/casper/android/h/a;)Lio/casper/android/h/a$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/casper/android/h/a$a;->a(Lio/casper/android/e/b/b;)V

    .line 60
    :cond_0
    return-void
.end method

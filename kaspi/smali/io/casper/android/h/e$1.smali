.class Lio/casper/android/h/e$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "RedeemCreditsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/h/e;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/h/e;


# direct methods
.method constructor <init>(Lio/casper/android/h/e;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lio/casper/android/h/e$1;->this$0:Lio/casper/android/h/e;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lio/casper/android/h/e$1;->this$0:Lio/casper/android/h/e;

    invoke-static {v0}, Lio/casper/android/h/e;->a(Lio/casper/android/h/e;)Lio/casper/android/h/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lio/casper/android/h/e$1;->this$0:Lio/casper/android/h/e;

    invoke-static {v0}, Lio/casper/android/h/e;->a(Lio/casper/android/h/e;)Lio/casper/android/h/e$a;

    move-result-object v0

    invoke-interface {v0}, Lio/casper/android/h/e$a;->a()V

    .line 63
    :cond_0
    return-void
.end method

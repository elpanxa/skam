.class Lio/casper/android/h/e$b$1$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "RedeemCreditsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/h/e$b$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/casper/android/h/e$b$1;


# direct methods
.method constructor <init>(Lio/casper/android/h/e$b$1;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lio/casper/android/h/e$b$1$1;->this$2:Lio/casper/android/h/e$b$1;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lio/casper/android/h/e$b$1$1;->this$2:Lio/casper/android/h/e$b$1;

    iget-object v0, v0, Lio/casper/android/h/e$b$1;->this$1:Lio/casper/android/h/e$b;

    iget-object v0, v0, Lio/casper/android/h/e$b;->this$0:Lio/casper/android/h/e;

    invoke-static {v0}, Lio/casper/android/h/e;->e(Lio/casper/android/h/e;)Lio/casper/android/l/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    .line 129
    return-void
.end method

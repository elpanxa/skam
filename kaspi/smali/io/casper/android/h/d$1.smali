.class Lio/casper/android/h/d$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "NumberPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/h/d;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/h/d;

.field final synthetic val$numberPicker:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Lio/casper/android/h/d;Landroid/widget/NumberPicker;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lio/casper/android/h/d$1;->this$0:Lio/casper/android/h/d;

    iput-object p2, p0, Lio/casper/android/h/d$1;->val$numberPicker:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 51
    iget-object v0, p0, Lio/casper/android/h/d$1;->this$0:Lio/casper/android/h/d;

    invoke-static {v0}, Lio/casper/android/h/d;->a(Lio/casper/android/h/d;)Lio/casper/android/h/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lio/casper/android/h/d$1;->this$0:Lio/casper/android/h/d;

    invoke-static {v0}, Lio/casper/android/h/d;->a(Lio/casper/android/h/d;)Lio/casper/android/h/d$a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/h/d$1;->val$numberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lio/casper/android/h/d$a;->a(I)V

    .line 54
    :cond_0
    return-void
.end method

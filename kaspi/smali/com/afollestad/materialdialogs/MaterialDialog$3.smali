.class Lcom/afollestad/materialdialogs/MaterialDialog$3;
.super Ljava/lang/Object;
.source "MaterialDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/MaterialDialog;->setInternalInputCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$3;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 1545
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 1527
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1531
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$3;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallInputCallback:Z

    if-eqz v0, :cond_0

    .line 1532
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$3;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputCallback:Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;

    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$3;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-interface {v0, v3, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$InputCallback;->onInput(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V

    .line 1533
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1535
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$3;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->mBuilder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputAllowEmpty:Z

    if-nez v0, :cond_3

    .line 1536
    if-nez v3, :cond_1

    move v0, v1

    .line 1537
    :goto_0
    iget-object v4, p0, Lcom/afollestad/materialdialogs/MaterialDialog$3;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    sget-object v5, Lcom/afollestad/materialdialogs/DialogAction;->POSITIVE:Lcom/afollestad/materialdialogs/DialogAction;

    invoke-virtual {v4, v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->getActionButton(Lcom/afollestad/materialdialogs/DialogAction;)Landroid/view/View;

    move-result-object v4

    .line 1538
    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1540
    :goto_2
    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$3;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v1, v3, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->invalidateInputMinMaxIndicator(IZ)V

    .line 1541
    return-void

    :cond_1
    move v0, v2

    .line 1536
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1538
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.class Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$3;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "AlertDialogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->addButtonsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$3;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$3;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    # getter for: Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->access$300(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$3;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    # getter for: Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->access$300(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 211
    :cond_0
    return-void
.end method

.method public onNeutral(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$3;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    # getter for: Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->neutralDialogListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->access$100(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$3;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    # getter for: Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->neutralDialogListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->access$100(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 197
    :cond_0
    return-void
.end method

.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$3;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    # getter for: Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->access$200(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$3;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    # getter for: Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->access$200(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 204
    :cond_0
    return-void
.end method

.class Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$2;
.super Ljava/lang/Object;
.source "AlertDialogWrapper.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->addListCallbacks()V
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
    .line 180
    iput-object p1, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$2;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$2;->this$0:Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    # getter for: Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->onClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->access$000(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 184
    return-void
.end method

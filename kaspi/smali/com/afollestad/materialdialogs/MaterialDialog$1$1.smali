.class Lcom/afollestad/materialdialogs/MaterialDialog$1$1;
.super Ljava/lang/Object;
.source "MaterialDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/MaterialDialog$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/afollestad/materialdialogs/MaterialDialog$1;

.field final synthetic val$fScrollIndex:I


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog$1;I)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->this$1:Lcom/afollestad/materialdialogs/MaterialDialog$1;

    iput p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->val$fScrollIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->this$1:Lcom/afollestad/materialdialogs/MaterialDialog$1;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 136
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->this$1:Lcom/afollestad/materialdialogs/MaterialDialog$1;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$1;->this$0:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->listView:Landroid/widget/ListView;

    iget v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$1$1;->val$fScrollIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 137
    return-void
.end method

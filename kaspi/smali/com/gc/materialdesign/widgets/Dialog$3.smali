.class Lcom/gc/materialdesign/widgets/Dialog$3;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/widgets/Dialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gc/materialdesign/widgets/Dialog;


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/widgets/Dialog;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/Dialog$3;->this$0:Lcom/gc/materialdesign/widgets/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog$3;->this$0:Lcom/gc/materialdesign/widgets/Dialog;

    invoke-virtual {v0}, Lcom/gc/materialdesign/widgets/Dialog;->dismiss()V

    .line 101
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog$3;->this$0:Lcom/gc/materialdesign/widgets/Dialog;

    iget-object v0, v0, Lcom/gc/materialdesign/widgets/Dialog;->onCancelButtonClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog$3;->this$0:Lcom/gc/materialdesign/widgets/Dialog;

    iget-object v0, v0, Lcom/gc/materialdesign/widgets/Dialog;->onCancelButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 103
    :cond_0
    return-void
.end method

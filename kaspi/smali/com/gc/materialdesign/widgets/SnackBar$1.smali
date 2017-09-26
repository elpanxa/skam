.class Lcom/gc/materialdesign/widgets/SnackBar$1;
.super Ljava/lang/Object;
.source "SnackBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/widgets/SnackBar;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gc/materialdesign/widgets/SnackBar;


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/widgets/SnackBar;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/SnackBar$1;->this$0:Lcom/gc/materialdesign/widgets/SnackBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar$1;->this$0:Lcom/gc/materialdesign/widgets/SnackBar;

    invoke-virtual {v0}, Lcom/gc/materialdesign/widgets/SnackBar;->dismiss()V

    .line 74
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar$1;->this$0:Lcom/gc/materialdesign/widgets/SnackBar;

    iget-object v0, v0, Lcom/gc/materialdesign/widgets/SnackBar;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 75
    return-void
.end method

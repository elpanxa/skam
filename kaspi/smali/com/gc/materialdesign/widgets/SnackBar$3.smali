.class Lcom/gc/materialdesign/widgets/SnackBar$3;
.super Ljava/lang/Object;
.source "SnackBar.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gc/materialdesign/widgets/SnackBar;
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
    .line 115
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/SnackBar$3;->this$0:Lcom/gc/materialdesign/widgets/SnackBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar$3;->this$0:Lcom/gc/materialdesign/widgets/SnackBar;

    iget-object v0, v0, Lcom/gc/materialdesign/widgets/SnackBar;->onHideListener:Lcom/gc/materialdesign/widgets/SnackBar$OnHideListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar$3;->this$0:Lcom/gc/materialdesign/widgets/SnackBar;

    iget-object v0, v0, Lcom/gc/materialdesign/widgets/SnackBar;->onHideListener:Lcom/gc/materialdesign/widgets/SnackBar$OnHideListener;

    invoke-interface {v0}, Lcom/gc/materialdesign/widgets/SnackBar$OnHideListener;->onHide()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/SnackBar$3;->this$0:Lcom/gc/materialdesign/widgets/SnackBar;

    invoke-virtual {v0}, Lcom/gc/materialdesign/widgets/SnackBar;->dismiss()V

    .line 123
    const/4 v0, 0x0

    return v0
.end method

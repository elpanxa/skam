.class Lcom/gc/materialdesign/widgets/ProgressDialog$2$1;
.super Ljava/lang/Object;
.source "ProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/widgets/ProgressDialog$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gc/materialdesign/widgets/ProgressDialog$2;


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/widgets/ProgressDialog$2;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/ProgressDialog$2$1;->this$1:Lcom/gc/materialdesign/widgets/ProgressDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog$2$1;->this$1:Lcom/gc/materialdesign/widgets/ProgressDialog$2;

    iget-object v0, v0, Lcom/gc/materialdesign/widgets/ProgressDialog$2;->this$0:Lcom/gc/materialdesign/widgets/ProgressDialog;

    # invokes: Landroid/app/Dialog;->dismiss()V
    invoke-static {v0}, Lcom/gc/materialdesign/widgets/ProgressDialog;->access$001(Lcom/gc/materialdesign/widgets/ProgressDialog;)V

    .line 126
    return-void
.end method

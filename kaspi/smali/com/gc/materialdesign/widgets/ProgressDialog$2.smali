.class Lcom/gc/materialdesign/widgets/ProgressDialog$2;
.super Ljava/lang/Object;
.source "ProgressDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/widgets/ProgressDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gc/materialdesign/widgets/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/widgets/ProgressDialog;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/ProgressDialog$2;->this$0:Lcom/gc/materialdesign/widgets/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ProgressDialog$2;->this$0:Lcom/gc/materialdesign/widgets/ProgressDialog;

    iget-object v0, v0, Lcom/gc/materialdesign/widgets/ProgressDialog;->view:Landroid/view/View;

    new-instance v1, Lcom/gc/materialdesign/widgets/ProgressDialog$2$1;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/ProgressDialog$2$1;-><init>(Lcom/gc/materialdesign/widgets/ProgressDialog$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

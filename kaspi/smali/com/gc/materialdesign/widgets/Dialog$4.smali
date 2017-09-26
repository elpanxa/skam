.class Lcom/gc/materialdesign/widgets/Dialog$4;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/widgets/Dialog;->dismiss()V
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
    .line 191
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/Dialog$4;->this$0:Lcom/gc/materialdesign/widgets/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/Dialog$4;->this$0:Lcom/gc/materialdesign/widgets/Dialog;

    iget-object v0, v0, Lcom/gc/materialdesign/widgets/Dialog;->view:Landroid/view/View;

    new-instance v1, Lcom/gc/materialdesign/widgets/Dialog$4$1;

    invoke-direct {v1, p0}, Lcom/gc/materialdesign/widgets/Dialog$4$1;-><init>(Lcom/gc/materialdesign/widgets/Dialog$4;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 210
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

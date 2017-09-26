.class Lcom/gc/materialdesign/widgets/ColorSelector$2;
.super Ljava/lang/Object;
.source "ColorSelector.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/widgets/ColorSelector;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gc/materialdesign/widgets/ColorSelector;


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/widgets/ColorSelector;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/gc/materialdesign/widgets/ColorSelector$2;->this$0:Lcom/gc/materialdesign/widgets/ColorSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/ColorSelector$2;->this$0:Lcom/gc/materialdesign/widgets/ColorSelector;

    iget-object v1, v1, Lcom/gc/materialdesign/widgets/ColorSelector;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/ColorSelector$2;->this$0:Lcom/gc/materialdesign/widgets/ColorSelector;

    iget-object v1, v1, Lcom/gc/materialdesign/widgets/ColorSelector;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/ColorSelector$2;->this$0:Lcom/gc/materialdesign/widgets/ColorSelector;

    iget-object v1, v1, Lcom/gc/materialdesign/widgets/ColorSelector;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/gc/materialdesign/widgets/ColorSelector$2;->this$0:Lcom/gc/materialdesign/widgets/ColorSelector;

    iget-object v1, v1, Lcom/gc/materialdesign/widgets/ColorSelector;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/gc/materialdesign/widgets/ColorSelector$2;->this$0:Lcom/gc/materialdesign/widgets/ColorSelector;

    invoke-virtual {v0}, Lcom/gc/materialdesign/widgets/ColorSelector;->dismiss()V

    .line 67
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

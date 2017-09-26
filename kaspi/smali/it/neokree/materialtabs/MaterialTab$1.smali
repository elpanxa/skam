.class Lit/neokree/materialtabs/MaterialTab$1;
.super Ljava/lang/Object;
.source "MaterialTab.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/neokree/materialtabs/MaterialTab;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/neokree/materialtabs/MaterialTab;


# direct methods
.method constructor <init>(Lit/neokree/materialtabs/MaterialTab;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lit/neokree/materialtabs/MaterialTab$1;->this$0:Lit/neokree/materialtabs/MaterialTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9

    .prologue
    .line 222
    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab$1;->this$0:Lit/neokree/materialtabs/MaterialTab;

    # getter for: Lit/neokree/materialtabs/MaterialTab;->background:Lat/markushi/ui/RevealColorView;
    invoke-static {v0}, Lit/neokree/materialtabs/MaterialTab;->access$200(Lit/neokree/materialtabs/MaterialTab;)Lat/markushi/ui/RevealColorView;

    move-result-object v1

    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab$1;->this$0:Lit/neokree/materialtabs/MaterialTab;

    # getter for: Lit/neokree/materialtabs/MaterialTab;->lastTouchedPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lit/neokree/materialtabs/MaterialTab;->access$000(Lit/neokree/materialtabs/MaterialTab;)Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab$1;->this$0:Lit/neokree/materialtabs/MaterialTab;

    # getter for: Lit/neokree/materialtabs/MaterialTab;->lastTouchedPoint:Landroid/graphics/Point;
    invoke-static {v0}, Lit/neokree/materialtabs/MaterialTab;->access$000(Lit/neokree/materialtabs/MaterialTab;)Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lit/neokree/materialtabs/MaterialTab$1;->this$0:Lit/neokree/materialtabs/MaterialTab;

    # getter for: Lit/neokree/materialtabs/MaterialTab;->primaryColor:I
    invoke-static {v0}, Lit/neokree/materialtabs/MaterialTab;->access$100(Lit/neokree/materialtabs/MaterialTab;)I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x1f4

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lat/markushi/ui/RevealColorView;->reveal(IIIIJLandroid/animation/Animator$AnimatorListener;)V

    .line 223
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

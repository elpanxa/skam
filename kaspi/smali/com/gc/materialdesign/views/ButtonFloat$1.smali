.class Lcom/gc/materialdesign/views/ButtonFloat$1;
.super Ljava/lang/Object;
.source "ButtonFloat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gc/materialdesign/views/ButtonFloat;->setAttributes(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gc/materialdesign/views/ButtonFloat;

.field final synthetic val$animate:Z


# direct methods
.method constructor <init>(Lcom/gc/materialdesign/views/ButtonFloat;Z)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/gc/materialdesign/views/ButtonFloat$1;->this$0:Lcom/gc/materialdesign/views/ButtonFloat;

    iput-boolean p2, p0, Lcom/gc/materialdesign/views/ButtonFloat$1;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat$1;->this$0:Lcom/gc/materialdesign/views/ButtonFloat;

    iget-object v1, p0, Lcom/gc/materialdesign/views/ButtonFloat$1;->this$0:Lcom/gc/materialdesign/views/ButtonFloat;

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    iget-object v3, p0, Lcom/gc/materialdesign/views/ButtonFloat$1;->this$0:Lcom/gc/materialdesign/views/ButtonFloat;

    invoke-virtual {v3}, Lcom/gc/materialdesign/views/ButtonFloat;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gc/materialdesign/utils/Utils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/gc/materialdesign/views/ButtonFloat;->showPosition:F

    .line 112
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat$1;->this$0:Lcom/gc/materialdesign/views/ButtonFloat;

    iget-object v1, p0, Lcom/gc/materialdesign/views/ButtonFloat$1;->this$0:Lcom/gc/materialdesign/views/ButtonFloat;

    invoke-static {v1}, Lcom/nineoldandroids/view/ViewHelper;->getY(Landroid/view/View;)F

    move-result v1

    iget-object v2, p0, Lcom/gc/materialdesign/views/ButtonFloat$1;->this$0:Lcom/gc/materialdesign/views/ButtonFloat;

    invoke-virtual {v2}, Lcom/gc/materialdesign/views/ButtonFloat;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/gc/materialdesign/views/ButtonFloat;->hidePosition:F

    .line 113
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/ButtonFloat$1;->val$animate:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat$1;->this$0:Lcom/gc/materialdesign/views/ButtonFloat;

    iget-object v1, p0, Lcom/gc/materialdesign/views/ButtonFloat$1;->this$0:Lcom/gc/materialdesign/views/ButtonFloat;

    iget v1, v1, Lcom/gc/materialdesign/views/ButtonFloat;->hidePosition:F

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 115
    iget-object v0, p0, Lcom/gc/materialdesign/views/ButtonFloat$1;->this$0:Lcom/gc/materialdesign/views/ButtonFloat;

    invoke-virtual {v0}, Lcom/gc/materialdesign/views/ButtonFloat;->show()V

    .line 117
    :cond_0
    return-void
.end method

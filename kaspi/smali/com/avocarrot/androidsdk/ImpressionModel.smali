.class Lcom/avocarrot/androidsdk/ImpressionModel;
.super Ljava/lang/Object;
.source "ImpressionModel.java"


# static fields
.field private static final EXPIRES_AFTER:I = 0x7530


# instance fields
.field controller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/avocarrot/androidsdk/BaseController;",
            ">;"
        }
    .end annotation
.end field

.field createdOn:J

.field firstTimeVisible:J

.field model:Lcom/avocarrot/androidsdk/BaseModel;

.field view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field visibilityConditionMetOn:J

.field visibilityConditions:Lcom/avocarrot/androidsdk/VisibilityConditions;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/BaseController;Lcom/avocarrot/androidsdk/BaseModel;Landroid/view/View;Lcom/avocarrot/androidsdk/VisibilityConditions;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v0, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->createdOn:J

    .line 23
    iput-wide v0, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->firstTimeVisible:J

    .line 24
    iput-wide v0, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->visibilityConditionMetOn:J

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->controller:Ljava/lang/ref/WeakReference;

    .line 28
    iput-object p2, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->model:Lcom/avocarrot/androidsdk/BaseModel;

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->view:Ljava/lang/ref/WeakReference;

    .line 30
    iput-object p4, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->visibilityConditions:Lcom/avocarrot/androidsdk/VisibilityConditions;

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->createdOn:J

    .line 33
    return-void
.end method


# virtual methods
.method conditionsMet()Z
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/ImpressionModel;->isVisibleEnough()Z

    move-result v1

    .line 49
    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->firstTimeVisible:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->firstTimeVisible:J

    .line 53
    :cond_0
    if-nez v1, :cond_2

    .line 54
    iput-wide v4, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->firstTimeVisible:J

    .line 68
    :cond_1
    :goto_0
    return v0

    .line 60
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 63
    iget-wide v4, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->firstTimeVisible:J

    sub-long v4, v2, v4

    iget-object v1, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->visibilityConditions:Lcom/avocarrot/androidsdk/VisibilityConditions;

    invoke-virtual {v1}, Lcom/avocarrot/androidsdk/VisibilityConditions;->getMinTimeOnScreen()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    .line 64
    iput-wide v2, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->visibilityConditionMetOn:J

    .line 65
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getController()Lcom/avocarrot/androidsdk/BaseController;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->controller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/BaseController;

    return-object v0
.end method

.method public getModel()Lcom/avocarrot/androidsdk/BaseModel;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->model:Lcom/avocarrot/androidsdk/BaseModel;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method isExpired()Z
    .locals 4

    .prologue
    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->createdOn:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisibleEnough()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 75
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 87
    :goto_0
    return v0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 82
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    mul-int/2addr v1, v3

    .line 83
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr v0, v3

    .line 85
    if-lez v0, :cond_2

    mul-int/lit8 v1, v1, 0x64

    div-int v0, v1, v0

    int-to-long v0, v0

    .line 87
    :goto_1
    iget-object v3, p0, Lcom/avocarrot/androidsdk/ImpressionModel;->visibilityConditions:Lcom/avocarrot/androidsdk/VisibilityConditions;

    invoke-virtual {v3}, Lcom/avocarrot/androidsdk/VisibilityConditions;->getMinVisibilityPercentage()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 87
    goto :goto_0
.end method

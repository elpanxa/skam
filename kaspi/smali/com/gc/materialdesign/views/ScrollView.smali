.class public Lcom/gc/materialdesign/views/ScrollView;
.super Landroid/widget/ScrollView;
.source "ScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 24
    move v1, v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/gc/materialdesign/views/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 26
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/gc/materialdesign/views/CustomView;

    .line 27
    iget-boolean v3, v0, Lcom/gc/materialdesign/views/CustomView;->isLastTouch:Z

    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {v0, p1}, Lcom/gc/materialdesign/views/CustomView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    const/4 v0, 0x1

    .line 35
    :goto_1
    return v0

    .line 31
    :catch_0
    move-exception v0

    .line 24
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 35
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.class public Lcom/gc/materialdesign/views/CustomView;
.super Landroid/widget/RelativeLayout;
.source "CustomView.java"


# static fields
.field static final ANDROIDXML:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field static final MATERIALDESIGNXML:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"


# instance fields
.field animation:Z

.field beforeBackground:I

.field final disabledBackgroundColor:I

.field public isLastTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const-string v0, "#E2E2E2"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gc/materialdesign/views/CustomView;->disabledBackgroundColor:I

    .line 19
    iput-boolean v1, p0, Lcom/gc/materialdesign/views/CustomView;->isLastTouch:Z

    .line 35
    iput-boolean v1, p0, Lcom/gc/materialdesign/views/CustomView;->animation:Z

    .line 23
    return-void
.end method


# virtual methods
.method protected onAnimationEnd()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAnimationEnd()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gc/materialdesign/views/CustomView;->animation:Z

    .line 47
    return-void
.end method

.method protected onAnimationStart()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAnimationStart()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gc/materialdesign/views/CustomView;->animation:Z

    .line 41
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 52
    iget-boolean v0, p0, Lcom/gc/materialdesign/views/CustomView;->animation:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/CustomView;->invalidate()V

    .line 54
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 28
    if-eqz p1, :cond_0

    .line 29
    iget v0, p0, Lcom/gc/materialdesign/views/CustomView;->beforeBackground:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/CustomView;->setBackgroundColor(I)V

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/gc/materialdesign/views/CustomView;->invalidate()V

    .line 33
    return-void

    .line 31
    :cond_0
    iget v0, p0, Lcom/gc/materialdesign/views/CustomView;->disabledBackgroundColor:I

    invoke-virtual {p0, v0}, Lcom/gc/materialdesign/views/CustomView;->setBackgroundColor(I)V

    goto :goto_0
.end method

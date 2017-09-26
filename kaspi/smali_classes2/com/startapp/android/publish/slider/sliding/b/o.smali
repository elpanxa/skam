.class public Lcom/startapp/android/publish/slider/sliding/b/o;
.super Ljava/lang/Object;
.source "StartAppSDK"


# direct methods
.method public static a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 38
    return-void
.end method

.method public static b(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

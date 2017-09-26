.class public interface abstract Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentInterface;
.super Ljava/lang/Object;
.source "BottomSheetFragmentInterface.java"


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract dismissAllowingStateLoss()V
.end method

.method public abstract getViewTransformer()Lcom/flipboard/bottomsheet/ViewTransformer;
.end method

.method public abstract show(Landroid/support/v4/app/FragmentTransaction;I)I
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
.end method

.method public abstract show(Landroid/support/v4/app/FragmentManager;I)V
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
.end method

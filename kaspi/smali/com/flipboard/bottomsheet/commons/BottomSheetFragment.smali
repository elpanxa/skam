.class public Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;
.super Landroid/support/v4/app/Fragment;
.source "BottomSheetFragment.java"

# interfaces
.implements Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentInterface;


# instance fields
.field private delegate:Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private getDelegate()Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->delegate:Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    if-nez v0, :cond_0

    .line 119
    invoke-static {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->create(Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentInterface;)Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->delegate:Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->delegate:Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->getDelegate()Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->dismiss()V

    .line 52
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->getDelegate()Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->dismissAllowingStateLoss()V

    .line 60
    return-void
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->getDelegate()Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    move-result-object v0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->getLayoutInflater(Landroid/os/Bundle;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getViewTransformer()Lcom/flipboard/bottomsheet/ViewTransformer;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 96
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->getDelegate()Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 73
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->getDelegate()Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->onAttach(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->getDelegate()Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->getDelegate()Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->onDestroyView()V

    .line 114
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 115
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 79
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->getDelegate()Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->onDetach()V

    .line 80
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->getDelegate()Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 109
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 102
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->getDelegate()Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->onStart()V

    .line 103
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;I)I
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->getDelegate()Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->show(Landroid/support/v4/app/FragmentTransaction;I)I

    move-result v0

    return v0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragment;->getDelegate()Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->show(Landroid/support/v4/app/FragmentManager;I)V

    .line 36
    return-void
.end method

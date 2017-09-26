.class public final Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;
.super Ljava/lang/Object;
.source "BottomSheetFragmentDelegate.java"

# interfaces
.implements Lcom/flipboard/bottomsheet/OnSheetDismissedListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "bottomsheet:backStackId"

.field private static final SAVED_BOTTOM_SHEET_LAYOUT_ID:Ljava/lang/String; = "bottomsheet:bottomSheetLayoutId"

.field private static final SAVED_SHOWS_BOTTOM_SHEET:Ljava/lang/String; = "bottomsheet:savedBottomSheet"


# instance fields
.field private backStackId:I

.field private bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

.field private bottomSheetLayoutId:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field private dismissed:Z

.field private fragment:Landroid/support/v4/app/Fragment;

.field private sheetFragmentInterface:Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentInterface;

.field private shownByMe:Z

.field private showsBottomSheet:Z

.field private viewDestroyed:Z


# direct methods
.method private constructor <init>(Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentInterface;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v1, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayoutId:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->showsBottomSheet:Z

    .line 61
    iput v1, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->backStackId:I

    .line 72
    instance-of v0, p1, Landroid/support/v4/app/Fragment;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sheetFragmentInterface must be an instance of a Fragment too!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->sheetFragmentInterface:Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentInterface;

    .line 77
    check-cast p1, Landroid/support/v4/app/Fragment;

    iput-object p1, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->fragment:Landroid/support/v4/app/Fragment;

    .line 78
    return-void
.end method

.method public static create(Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentInterface;)Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;

    invoke-direct {v0, p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;-><init>(Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentInterface;)V

    return-object v0
.end method

.method private dismissInternal(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 130
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->dismissed:Z

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 133
    :cond_0
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->dismissed:Z

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->shownByMe:Z

    .line 135
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dismissSheet()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 139
    :cond_1
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->viewDestroyed:Z

    .line 140
    iget v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->backStackId:I

    if-ltz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget v1, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->backStackId:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->backStackId:I

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 146
    if-eqz p1, :cond_3

    .line 147
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private findBottomSheetLayout()Lcom/flipboard/bottomsheet/BottomSheetLayout;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_0

    .line 226
    iget v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayoutId:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 235
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_0

    .line 233
    iget v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayoutId:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flipboard/bottomsheet/BottomSheetLayout;

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->dismissInternal(Z)V

    .line 119
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->dismissInternal(Z)V

    .line 127
    return-void
.end method

.method public getBottomSheetLayout()Lcom/flipboard/bottomsheet/BottomSheetLayout;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->findBottomSheetLayout()Lcom/flipboard/bottomsheet/BottomSheetLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 1
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->showsBottomSheet:Z

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-object p2

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->getBottomSheetLayout()Lcom/flipboard/bottomsheet/BottomSheetLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 203
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->showsBottomSheet:Z

    if-nez v0, :cond_1

    .line 254
    :cond_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BottomSheetFragment can not be attached to a container view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->shownByMe:Z

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->dismissed:Z

    .line 163
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    .line 180
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v0}, Landroid/support/v4/app/AccessFragmentInternals;->getContainerId(Landroid/support/v4/app/Fragment;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->showsBottomSheet:Z

    .line 182
    if-eqz p1, :cond_0

    .line 183
    const-string v0, "bottomsheet:savedBottomSheet"

    iget-boolean v1, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->showsBottomSheet:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->showsBottomSheet:Z

    .line 184
    const-string v0, "bottomsheet:backStackId"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->backStackId:I

    .line 185
    const-string v0, "bottomsheet:bottomSheetLayoutId"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayoutId:I

    .line 187
    :cond_0
    return-void

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->viewDestroyed:Z

    .line 290
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->dismissSheet()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 293
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->shownByMe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->dismissed:Z

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->dismissed:Z

    .line 172
    :cond_0
    return-void
.end method

.method public onDismissed(Lcom/flipboard/bottomsheet/BottomSheetLayout;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->viewDestroyed:Z

    if-nez v0, :cond_0

    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->dismissInternal(Z)V

    .line 301
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 273
    iget-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->showsBottomSheet:Z

    if-nez v0, :cond_0

    .line 274
    const-string v0, "bottomsheet:savedBottomSheet"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    :cond_0
    iget v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->backStackId:I

    if-eq v0, v2, :cond_1

    .line 277
    const-string v0, "bottomsheet:backStackId"

    iget v1, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->backStackId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    :cond_1
    iget v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayoutId:I

    if-eq v0, v2, :cond_2

    .line 280
    const-string v0, "bottomsheet:bottomSheetLayoutId"

    iget v1, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayoutId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->viewDestroyed:Z

    .line 262
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->sheetFragmentInterface:Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentInterface;

    invoke-interface {v2}, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentInterface;->getViewTransformer()Lcom/flipboard/bottomsheet/ViewTransformer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->showWithSheetView(Landroid/view/View;Lcom/flipboard/bottomsheet/ViewTransformer;)V

    .line 263
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    invoke-virtual {v0, p0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->addOnSheetDismissedListener(Lcom/flipboard/bottomsheet/OnSheetDismissedListener;)V

    .line 265
    :cond_0
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;I)I
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 103
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->dismissed:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->shownByMe:Z

    .line 105
    iput p2, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayoutId:I

    .line 106
    iget-object v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 107
    iput-boolean v2, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->viewDestroyed:Z

    .line 108
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v0

    iput v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->backStackId:I

    .line 109
    iget v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->backStackId:I

    return v0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;I)V
    .locals 3
    .param p2    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->dismissed:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->shownByMe:Z

    .line 89
    iput p2, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->bottomSheetLayoutId:I

    .line 90
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/flipboard/bottomsheet/commons/BottomSheetFragmentDelegate;->fragment:Landroid/support/v4/app/Fragment;

    .line 91
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 93
    return-void
.end method

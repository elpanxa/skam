.class public Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
.super Ljava/lang/Object;
.source "AlertDialogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/AlertDialogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

.field private negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private neutralDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->neutralDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private addButtonsCallback()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$3;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$3;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 214
    :cond_1
    return-void
.end method

.method private addListCallbacks()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$2;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$2;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 187
    :cond_0
    return-void
.end method

.method private setUpMultiChoiceCallback([ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 3
    .param p1    # [Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 262
    if-eqz p1, :cond_2

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 265
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_0

    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v2, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$4;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackMultiChoice([Ljava/lang/Integer;Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 292
    return-void
.end method


# virtual methods
.method public alwaysCallMultiChoiceCallback()Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallMultiChoiceCallback()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 256
    return-object p0
.end method

.method public alwaysCallSingleChoiceCallback()Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallSingleChoiceCallback()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 251
    return-object p0
.end method

.method public autoDismiss(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 41
    return-object p0
.end method

.method public create()Landroid/app/Dialog;
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->addButtonsCallback()V

    .line 167
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->addListCallbacks()V

    .line 168
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iput-object p1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->adapter:Landroid/widget/ListAdapter;

    .line 155
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$1;

    invoke-direct {v1, p0, p2}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$1;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v1, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listCallbackCustom:Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;

    .line 161
    return-object p0
.end method

.method public setCancelable(Z)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 123
    return-object p0
.end method

.method public setIcon(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 65
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->iconRes(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 66
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 71
    return-object p0
.end method

.method public setIconAttribute(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    .line 75
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->iconAttr(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 76
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 127
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 128
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 129
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 134
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 135
    return-object p0
.end method

.method public setMessage(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 45
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 46
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 50
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 51
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 230
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 231
    invoke-direct {p0, p2, p3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setUpMultiChoiceCallback([ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 232
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/String;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 244
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 245
    invoke-direct {p0, p2, p3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->setUpMultiChoiceCallback([ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    .line 246
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 81
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 82
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 89
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->negativeDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 90
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 109
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 110
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->neutralDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 111
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->neutralText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 117
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->neutralDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 118
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 335
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 336
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 340
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 341
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnKeyListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 350
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->keyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 351
    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # Landroid/content/DialogInterface$OnShowListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 345
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->showListener(Landroid/content/DialogInterface$OnShowListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 346
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 95
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 96
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 103
    iput-object p2, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->positiveDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 104
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 323
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 324
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$6;

    invoke-direct {v1, p0, p3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$6;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 331
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 2
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 303
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 304
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance v1, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$5;

    invoke-direct {v1, p0, p3}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder$5;-><init>(Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, p2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 311
    return-object p0
.end method

.method public setTitle(I)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 55
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 56
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 61
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 217
    iget-object v0, p0, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 218
    return-object p0
.end method

.method public show()Landroid/app/Dialog;
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/AlertDialogWrapper$Builder;->create()Landroid/app/Dialog;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 175
    return-object v0
.end method

.class public Lio/casper/android/h/b;
.super Landroid/app/DialogFragment;
.source "FolderSelectorDialog.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/h/b$b;,
        Lio/casper/android/h/b$a;
    }
.end annotation


# instance fields
.field private canGoUp:Z

.field private final mButtonCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

.field private mCallback:Lio/casper/android/h/b$a;

.field private parentContents:[Ljava/io/File;

.field private parentFolder:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/casper/android/h/b;->canGoUp:Z

    .line 25
    new-instance v0, Lio/casper/android/h/b$1;

    invoke-direct {v0, p0}, Lio/casper/android/h/b$1;-><init>(Lio/casper/android/h/b;)V

    iput-object v0, p0, Lio/casper/android/h/b;->mButtonCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    .line 43
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/h/b;->parentFolder:Ljava/io/File;

    .line 44
    invoke-virtual {p0}, Lio/casper/android/h/b;->b()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/h/b;->parentContents:[Ljava/io/File;

    .line 45
    return-void
.end method

.method static synthetic a(Lio/casper/android/h/b;)Ljava/io/File;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/h/b;->parentFolder:Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/h/b;)Lio/casper/android/h/b$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/h/b;->mCallback:Lio/casper/android/h/b$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lio/casper/android/h/b$a;)V
    .locals 2

    .prologue
    .line 105
    iput-object p2, p0, Lio/casper/android/h/b;->mCallback:Lio/casper/android/h/b$a;

    .line 106
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "FOLDER_SELECTOR"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/h/b;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method a()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lio/casper/android/h/b;->parentContents:[Ljava/io/File;

    array-length v2, v0

    iget-boolean v0, p0, Lio/casper/android/h/b;->canGoUp:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    new-array v2, v0, [Ljava/lang/String;

    .line 49
    iget-boolean v0, p0, Lio/casper/android/h/b;->canGoUp:Z

    if-eqz v0, :cond_0

    const-string v0, "..."

    aput-object v0, v2, v1

    .line 50
    :cond_0
    :goto_1
    iget-object v0, p0, Lio/casper/android/h/b;->parentContents:[Ljava/io/File;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 51
    iget-boolean v0, p0, Lio/casper/android/h/b;->canGoUp:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_2
    iget-object v3, p0, Lio/casper/android/h/b;->parentContents:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 48
    goto :goto_0

    :cond_2
    move v0, v1

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    return-object v2
.end method

.method b()[Ljava/io/File;
    .locals 6

    .prologue
    .line 57
    iget-object v0, p0, Lio/casper/android/h/b;->parentFolder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    if-eqz v1, :cond_2

    .line 61
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 62
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Lio/casper/android/h/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/casper/android/h/b$b;-><init>(Lio/casper/android/h/b$1;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 67
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 102
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lio/casper/android/h/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lio/casper/android/h/b;->parentFolder:Ljava/io/File;

    .line 74
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lio/casper/android/h/b;->a()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/h/b;->mButtonCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    .line 77
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const v1, 0x7f070037

    .line 79
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 80
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    return-object v0
.end method

.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 86
    iget-boolean v1, p0, Lio/casper/android/h/b;->canGoUp:Z

    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    .line 87
    iget-object v1, p0, Lio/casper/android/h/b;->parentFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lio/casper/android/h/b;->parentFolder:Ljava/io/File;

    .line 88
    iget-object v1, p0, Lio/casper/android/h/b;->parentFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lio/casper/android/h/b;->canGoUp:Z

    .line 93
    :goto_1
    invoke-virtual {p0}, Lio/casper/android/h/b;->b()[Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/h/b;->parentContents:[Ljava/io/File;

    .line 94
    invoke-virtual {p0}, Lio/casper/android/h/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 95
    iget-object v1, p0, Lio/casper/android/h/b;->parentFolder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0}, Lio/casper/android/h/b;->a()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setItems([Ljava/lang/CharSequence;)V

    .line 97
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lio/casper/android/h/b;->parentContents:[Ljava/io/File;

    iget-boolean v2, p0, Lio/casper/android/h/b;->canGoUp:Z

    if-eqz v2, :cond_2

    add-int/lit8 p3, p3, -0x1

    :cond_2
    aget-object v1, v1, p3

    iput-object v1, p0, Lio/casper/android/h/b;->parentFolder:Ljava/io/File;

    .line 91
    iput-boolean v0, p0, Lio/casper/android/h/b;->canGoUp:Z

    goto :goto_1
.end method

.class public Lio/casper/android/h/a;
.super Landroid/app/DialogFragment;
.source "AccountSelectorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/h/a$b;,
        Lio/casper/android/h/a$a;
    }
.end annotation


# instance fields
.field private mCallback:Lio/casper/android/h/a$a;

.field private mSnapchatAccountsTable:Lio/casper/android/e/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic a(Lio/casper/android/h/a;)Lio/casper/android/e/c/a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/h/a;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    return-object v0
.end method

.method static synthetic b(Lio/casper/android/h/a;)Lio/casper/android/h/a$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lio/casper/android/h/a;->mCallback:Lio/casper/android/h/a$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lio/casper/android/h/a$a;)V
    .locals 2

    .prologue
    .line 69
    iput-object p2, p0, Lio/casper/android/h/a;->mCallback:Lio/casper/android/h/a$a;

    .line 71
    invoke-static {}, Lio/casper/android/e/c/a;->i()Lio/casper/android/e/c/a;

    move-result-object v0

    iput-object v0, p0, Lio/casper/android/h/a;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    .line 73
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ACCOUNT_SELECTOR"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/h/a;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 35
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lio/casper/android/h/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 37
    iget-object v0, p0, Lio/casper/android/h/a;->mSnapchatAccountsTable:Lio/casper/android/e/c/a;

    invoke-virtual {v0}, Lio/casper/android/e/c/a;->e()Ljava/util/List;

    move-result-object v0

    .line 38
    new-instance v2, Lio/casper/android/h/a$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lio/casper/android/h/a$b;-><init>(Lio/casper/android/h/a$1;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/e/b/b;

    .line 43
    invoke-virtual {v0}, Lio/casper/android/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    const v2, 0x7f07018c

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 50
    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 51
    new-instance v0, Lio/casper/android/h/a$1;

    invoke-direct {v0, p0}, Lio/casper/android/h/a$1;-><init>(Lio/casper/android/h/a;)V

    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 63
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    return-object v0
.end method

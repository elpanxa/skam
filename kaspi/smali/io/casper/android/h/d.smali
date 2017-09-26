.class public Lio/casper/android/h/d;
.super Landroid/app/DialogFragment;
.source "NumberPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/casper/android/h/d$a;
    }
.end annotation


# instance fields
.field private mCallback:Lio/casper/android/h/d$a;

.field private mContext:Landroid/app/Activity;

.field private mDefaultNumber:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 26
    return-void
.end method

.method static synthetic a(Lio/casper/android/h/d;)Lio/casper/android/h/d$a;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lio/casper/android/h/d;->mCallback:Lio/casper/android/h/d$a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;ILio/casper/android/h/d$a;)V
    .locals 2

    .prologue
    .line 62
    iput-object p1, p0, Lio/casper/android/h/d;->mContext:Landroid/app/Activity;

    .line 63
    iput-object p3, p0, Lio/casper/android/h/d;->mCallback:Lio/casper/android/h/d$a;

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v1, "default_number"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p0, v0}, Lio/casper/android/h/d;->setArguments(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "NUMBER_PCIKER_DIALOG"

    invoke-virtual {p0, v0, v1}, Lio/casper/android/h/d;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x0

    .line 31
    invoke-virtual {p0}, Lio/casper/android/h/d;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default_number"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lio/casper/android/h/d;->mDefaultNumber:I

    .line 33
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lio/casper/android/h/d;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v1, Landroid/widget/NumberPicker;

    iget-object v2, p0, Lio/casper/android/h/d;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 37
    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 38
    iget v2, p0, Lio/casper/android/h/d;->mDefaultNumber:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 39
    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 40
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setGravity(I)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 44
    new-instance v2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lio/casper/android/h/d;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    const v3, 0x7f070042

    invoke-virtual {v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 46
    invoke-virtual {v2, v0, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 47
    new-instance v0, Lio/casper/android/h/d$1;

    invoke-direct {v0, p0, v1}, Lio/casper/android/h/d$1;-><init>(Lio/casper/android/h/d;Landroid/widget/NumberPicker;)V

    invoke-virtual {v2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 57
    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    return-object v0
.end method

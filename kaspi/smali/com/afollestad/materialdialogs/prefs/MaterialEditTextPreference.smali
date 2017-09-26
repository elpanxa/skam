.class public Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;
.super Landroid/preference/EditTextPreference;
.source "MaterialEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$SavedState;
    }
.end annotation


# instance fields
.field private final callback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

.field private mColor:I

.field private mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mColor:I

    .line 161
    new-instance v1, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;-><init>(Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;)V

    iput-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->callback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 47
    const v0, 0x1010435

    invoke-static {p1, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    .line 49
    :cond_0
    sget v1, Lcom/afollestad/materialdialogs/R$attr;->colorAccent:I

    invoke-static {p1, v1, v0}, Lcom/afollestad/materialdialogs/util/DialogUtils;->resolveColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mColor:I

    .line 51
    new-instance v0, Landroid/support/v7/widget/AppCompatEditText;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 53
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mEditText:Landroid/widget/EditText;

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 54
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 175
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 176
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/preference/EditTextPreference;->onActivityDestroy()V

    .line 181
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 183
    :cond_0
    return-void
.end method

.method protected onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/EditText;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    check-cast p1, Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mEditText:Landroid/widget/EditText;

    .line 70
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 73
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 74
    :cond_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 75
    if-eq v0, p1, :cond_2

    .line 76
    if-eqz v0, :cond_1

    .line 77
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 78
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->onAddEditTextToDialogView(Landroid/view/View;Landroid/widget/EditText;)V

    .line 80
    :cond_2
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 2

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->setText(Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDismiss(Landroid/content/DialogInterface;)V

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "unregisterOnActivityDestroyListener"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 151
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 152
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 201
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 212
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    check-cast p1, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$SavedState;

    .line 208
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/EditTextPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 209
    iget-boolean v0, p1, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$SavedState;->isDialogShowing:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p1, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 187
    invoke-super {p0}, Landroid/preference/EditTextPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 188
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 196
    :goto_0
    return-object v0

    .line 193
    :cond_1
    new-instance v0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 194
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$SavedState;->isDialogShowing:Z

    .line 195
    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 103
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->callback:Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;

    .line 108
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/afollestad/materialdialogs/R$layout;->md_stub_inputpref:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 112
    invoke-virtual {p0, v2}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 114
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mEditText:Landroid/widget/EditText;

    iget v3, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mColor:I

    invoke-static {v0, v3}, Lcom/afollestad/materialdialogs/internal/MDTintHelper;->setTint(Landroid/widget/EditText;I)V

    .line 116
    const v0, 0x102000b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 118
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_0
    invoke-virtual {v1, v2, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "registerOnActivityDestroyListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 130
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 131
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 136
    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->requestInputMethod(Landroid/app/Dialog;)V

    .line 140
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 141
    return-void

    .line 121
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    goto :goto_1
.end method

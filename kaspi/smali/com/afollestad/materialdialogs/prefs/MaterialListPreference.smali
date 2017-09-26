.class public Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;
.super Landroid/preference/ListPreference;
.source "MaterialListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$SavedState;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->context:Landroid/content/Context;

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->setWidgetLayoutResource(I)V

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/preference/ListPreference;->onActivityDestroy()V

    .line 126
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 128
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDismiss(Landroid/content/DialogInterface;)V

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 114
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

    .line 117
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 118
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    check-cast p1, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$SavedState;

    .line 165
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 166
    iget-boolean v0, p1, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$SavedState;->isDialogShowing:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p1, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 144
    invoke-super {p0}, Landroid/preference/ListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 145
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 146
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 153
    :goto_0
    return-object v0

    .line 150
    :cond_1
    new-instance v0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$SavedState;->isDialogShowing:Z

    .line 152
    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setItems([Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 133
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 137
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 59
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 65
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 67
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;

    invoke-direct {v2, p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;-><init>(Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;)V

    .line 72
    invoke-virtual {v1, v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->onBindDialogView(Landroid/view/View;)V

    .line 88
    invoke-virtual {v0, v1, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 94
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "registerOnActivityDestroyListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/preference/PreferenceManager$OnActivityDestroyListener;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 98
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 99
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 104
    if-eqz p1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 107
    return-void

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    goto :goto_1
.end method

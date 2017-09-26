.class public Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;
.super Landroid/preference/MultiSelectListPreference;
.source "MaterialMultiSelectListPreference.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->context:Landroid/content/Context;

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->setWidgetLayoutResource(I)V

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Landroid/preference/MultiSelectListPreference;->onActivityDestroy()V

    .line 135
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 137
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->onDismiss(Landroid/content/DialogInterface;)V

    .line 122
    :try_start_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 123
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

    .line 126
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 127
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 155
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    check-cast p1, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;

    .line 162
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/MultiSelectListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 163
    iget-boolean v0, p1, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;->isDialogShowing:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p1, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 141
    invoke-super {p0}, Landroid/preference/MultiSelectListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 142
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 150
    :goto_0
    return-object v0

    .line 147
    :cond_1
    new-instance v0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;->isDialogShowing:Z

    .line 149
    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setItems([Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    .line 68
    if-ltz v3, :cond_0

    .line 69
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->icon(Landroid/graphics/drawable/Drawable;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v2

    .line 78
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    new-instance v1, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$1;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$1;-><init>(Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;)V

    invoke-virtual {v2, v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackMultiChoice([Ljava/lang/Integer;Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->dismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {p0, v1}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->onBindDialogView(Landroid/view/View;)V

    .line 97
    invoke-virtual {v0, v1, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 103
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    .line 104
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

    .line 107
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 108
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_2
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 113
    if-eqz p1, :cond_2

    .line 114
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->mDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 116
    return-void

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    goto :goto_1

    .line 109
    :catch_0
    move-exception v1

    goto :goto_2
.end method

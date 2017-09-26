.class Lio/casper/android/activity/OldSettingsActivity$3$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "OldSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/OldSettingsActivity$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/OldSettingsActivity$3;


# direct methods
.method constructor <init>(Lio/casper/android/activity/OldSettingsActivity$3;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lio/casper/android/activity/OldSettingsActivity$3$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$3;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 149
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity$3$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$3;

    iget-object v1, v1, Lio/casper/android/activity/OldSettingsActivity$3;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v1}, Lio/casper/android/activity/OldSettingsActivity;->a(Lio/casper/android/activity/OldSettingsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 151
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCanceledOnTouchOutside(Z)V

    .line 153
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->setCancelable(Z)V

    .line 154
    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity$3$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$3;

    iget-object v1, v1, Lio/casper/android/activity/OldSettingsActivity$3;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v1}, Lio/casper/android/activity/OldSettingsActivity;->a(Lio/casper/android/activity/OldSettingsActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 157
    new-instance v1, Lio/casper/android/n/a/b/e;

    iget-object v2, p0, Lio/casper/android/activity/OldSettingsActivity$3$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$3;

    iget-object v2, v2, Lio/casper/android/activity/OldSettingsActivity$3;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v2}, Lio/casper/android/activity/OldSettingsActivity;->a(Lio/casper/android/activity/OldSettingsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/casper/android/n/a/b/e;-><init>(Landroid/content/Context;)V

    .line 159
    new-instance v2, Lio/casper/android/activity/OldSettingsActivity$3$1$1;

    invoke-direct {v2, p0, v0}, Lio/casper/android/activity/OldSettingsActivity$3$1$1;-><init>(Lio/casper/android/activity/OldSettingsActivity$3$1;Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1, v2}, Lio/casper/android/n/a/b/e;->a(Lio/casper/android/c/c/a/a;)V

    .line 186
    return-void
.end method

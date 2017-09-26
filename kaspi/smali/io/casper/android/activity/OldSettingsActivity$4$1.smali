.class Lio/casper/android/activity/OldSettingsActivity$4$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "OldSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/OldSettingsActivity$4;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/OldSettingsActivity$4;


# direct methods
.method constructor <init>(Lio/casper/android/activity/OldSettingsActivity$4;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lio/casper/android/activity/OldSettingsActivity$4$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$4;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 4

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 216
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$4$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$4;

    iget-object v0, v0, Lio/casper/android/activity/OldSettingsActivity$4;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lio/casper/android/activity/OldSettingsActivity$4$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$4;

    iget-object v3, v3, Lio/casper/android/activity/OldSettingsActivity$4;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v3}, Lio/casper/android/activity/OldSettingsActivity;->g(Lio/casper/android/activity/OldSettingsActivity;)Lio/casper/android/l/p;

    move-result-object v3

    invoke-virtual {v3}, Lio/casper/android/l/p;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lio/casper/android/activity/OldSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 218
    return-void
.end method

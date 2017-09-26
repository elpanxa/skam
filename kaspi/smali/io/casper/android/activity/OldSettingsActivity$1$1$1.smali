.class Lio/casper/android/activity/OldSettingsActivity$1$1$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "OldSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/OldSettingsActivity$1$1;->a(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/casper/android/activity/OldSettingsActivity$1$1;

.field final synthetic val$folder:Ljava/io/File;


# direct methods
.method constructor <init>(Lio/casper/android/activity/OldSettingsActivity$1$1;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lio/casper/android/activity/OldSettingsActivity$1$1$1;->this$2:Lio/casper/android/activity/OldSettingsActivity$1$1;

    iput-object p2, p0, Lio/casper/android/activity/OldSettingsActivity$1$1$1;->val$folder:Ljava/io/File;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 103
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$1$1$1;->this$2:Lio/casper/android/activity/OldSettingsActivity$1$1;

    iget-object v0, v0, Lio/casper/android/activity/OldSettingsActivity$1$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$1;

    iget-object v0, v0, Lio/casper/android/activity/OldSettingsActivity$1;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v0}, Lio/casper/android/activity/OldSettingsActivity;->b(Lio/casper/android/activity/OldSettingsActivity;)Lio/casper/android/l/n;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity$1$1$1;->val$folder:Ljava/io/File;

    invoke-virtual {v0, v1}, Lio/casper/android/l/n;->c(Ljava/io/File;)V

    .line 104
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$1$1$1;->this$2:Lio/casper/android/activity/OldSettingsActivity$1$1;

    iget-object v0, v0, Lio/casper/android/activity/OldSettingsActivity$1$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$1;

    iget-object v0, v0, Lio/casper/android/activity/OldSettingsActivity$1;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v0}, Lio/casper/android/activity/OldSettingsActivity;->c(Lio/casper/android/activity/OldSettingsActivity;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity$1$1$1;->val$folder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$1$1$1;->this$2:Lio/casper/android/activity/OldSettingsActivity$1$1;

    iget-object v0, v0, Lio/casper/android/activity/OldSettingsActivity$1$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$1;

    iget-object v0, v0, Lio/casper/android/activity/OldSettingsActivity$1;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v0}, Lio/casper/android/activity/OldSettingsActivity;->d(Lio/casper/android/activity/OldSettingsActivity;)Lio/casper/android/l/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    .line 107
    return-void
.end method

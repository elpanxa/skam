.class Lio/casper/android/activity/OldSettingsActivity$2;
.super Ljava/lang/Object;
.source "OldSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/OldSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/OldSettingsActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/OldSettingsActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lio/casper/android/activity/OldSettingsActivity$2;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 125
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$2;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v0}, Lio/casper/android/activity/OldSettingsActivity;->e(Lio/casper/android/activity/OldSettingsActivity;)Lio/casper/android/l/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/casper/android/l/k;->a(Z)V

    .line 126
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$2;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v0}, Lio/casper/android/activity/OldSettingsActivity;->d(Lio/casper/android/activity/OldSettingsActivity;)Lio/casper/android/l/s;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/s;->n()V

    .line 128
    return v1
.end method

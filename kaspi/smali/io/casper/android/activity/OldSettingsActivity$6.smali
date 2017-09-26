.class Lio/casper/android/activity/OldSettingsActivity$6;
.super Ljava/lang/Object;
.source "OldSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 242
    iput-object p1, p0, Lio/casper/android/activity/OldSettingsActivity$6;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 246
    check-cast p2, Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$6;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v0, p2}, Lio/casper/android/activity/OldSettingsActivity;->b(Lio/casper/android/activity/OldSettingsActivity;Ljava/lang/String;)V

    .line 249
    const-string v0, "CUSTOM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$6;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/casper/android/activity/OldSettingsActivity$6;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v2}, Lio/casper/android/activity/OldSettingsActivity;->a(Lio/casper/android/activity/OldSettingsActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lio/casper/android/activity/FriendChooserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lio/casper/android/activity/OldSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 261
    :goto_0
    return v4

    .line 259
    :cond_0
    new-instance v0, Lio/casper/android/n/a/b/u;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity$6;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v1}, Lio/casper/android/activity/OldSettingsActivity;->a(Lio/casper/android/activity/OldSettingsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lio/casper/android/n/a/b/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/casper/android/n/a/b/u;->m()V

    goto :goto_0
.end method

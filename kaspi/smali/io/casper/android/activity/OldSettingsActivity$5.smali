.class Lio/casper/android/activity/OldSettingsActivity$5;
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
    .line 230
    iput-object p1, p0, Lio/casper/android/activity/OldSettingsActivity$5;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 234
    check-cast p2, Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$5;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v0, p2}, Lio/casper/android/activity/OldSettingsActivity;->a(Lio/casper/android/activity/OldSettingsActivity;Ljava/lang/String;)V

    .line 236
    new-instance v0, Lio/casper/android/n/a/b/o;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity$5;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v1}, Lio/casper/android/activity/OldSettingsActivity;->a(Lio/casper/android/activity/OldSettingsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lio/casper/android/n/a/b/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/casper/android/n/a/b/o;->m()V

    .line 237
    const/4 v0, 0x1

    return v0
.end method

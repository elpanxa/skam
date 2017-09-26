.class Lio/casper/android/activity/OldSettingsActivity$1;
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
    .line 82
    iput-object p1, p0, Lio/casper/android/activity/OldSettingsActivity$1;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 86
    new-instance v1, Lio/casper/android/h/b;

    invoke-direct {v1}, Lio/casper/android/h/b;-><init>()V

    .line 87
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$1;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v0}, Lio/casper/android/activity/OldSettingsActivity;->a(Lio/casper/android/activity/OldSettingsActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lio/casper/android/activity/OldSettingsActivity$1$1;

    invoke-direct {v2, p0}, Lio/casper/android/activity/OldSettingsActivity$1$1;-><init>(Lio/casper/android/activity/OldSettingsActivity$1;)V

    invoke-virtual {v1, v0, v2}, Lio/casper/android/h/b;->a(Landroid/app/Activity;Lio/casper/android/h/b$a;)V

    .line 116
    const/4 v0, 0x1

    return v0
.end method

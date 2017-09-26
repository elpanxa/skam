.class Lio/casper/android/activity/OldSettingsActivity$7;
.super Ljava/lang/Object;
.source "OldSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/OldSettingsActivity;->onPostCreate(Landroid/os/Bundle;)V
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
    .line 299
    iput-object p1, p0, Lio/casper/android/activity/OldSettingsActivity$7;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$7;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-virtual {v0}, Lio/casper/android/activity/OldSettingsActivity;->finish()V

    .line 303
    return-void
.end method

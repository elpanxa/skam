.class Lio/casper/android/activity/OldSettingsActivity$4;
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
    .line 197
    iput-object p1, p0, Lio/casper/android/activity/OldSettingsActivity$4;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$4;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v0}, Lio/casper/android/activity/OldSettingsActivity;->f(Lio/casper/android/activity/OldSettingsActivity;)Lio/casper/android/l/l;

    move-result-object v0

    sget-object v1, Lio/casper/android/l/l;->CUSTOM_VIDEO_THUMBNAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lio/casper/android/activity/OldSettingsActivity$4;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v0}, Lio/casper/android/activity/OldSettingsActivity;->f(Lio/casper/android/activity/OldSettingsActivity;)Lio/casper/android/l/l;

    move-result-object v0

    sget-object v1, Lio/casper/android/l/l;->CUSTOM_VIDEO_THUMBNAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/l/l;->a(Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity$4;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v1}, Lio/casper/android/activity/OldSettingsActivity;->a(Lio/casper/android/activity/OldSettingsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    const v1, 0x7f0701bd

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 207
    const v1, 0x7f0701da

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 208
    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 209
    const v1, 0x7f070038

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 211
    new-instance v1, Lio/casper/android/activity/OldSettingsActivity$4$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/OldSettingsActivity$4$1;-><init>(Lio/casper/android/activity/OldSettingsActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 221
    new-instance v1, Lio/casper/android/h/a/a;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->build()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/casper/android/h/a/a;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    invoke-virtual {v1}, Lio/casper/android/h/a/a;->a()V

    .line 225
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

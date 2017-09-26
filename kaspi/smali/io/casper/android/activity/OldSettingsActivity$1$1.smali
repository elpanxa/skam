.class Lio/casper/android/activity/OldSettingsActivity$1$1;
.super Ljava/lang/Object;
.source "OldSettingsActivity.java"

# interfaces
.implements Lio/casper/android/h/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/OldSettingsActivity$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/OldSettingsActivity$1;


# direct methods
.method constructor <init>(Lio/casper/android/activity/OldSettingsActivity$1;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lio/casper/android/activity/OldSettingsActivity$1$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 91
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity$1$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$1;

    iget-object v1, v1, Lio/casper/android/activity/OldSettingsActivity$1;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    invoke-static {v1}, Lio/casper/android/activity/OldSettingsActivity;->a(Lio/casper/android/activity/OldSettingsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    const v1, 0x7f070190

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 93
    iget-object v1, p0, Lio/casper/android/activity/OldSettingsActivity$1$1;->this$1:Lio/casper/android/activity/OldSettingsActivity$1;

    iget-object v1, v1, Lio/casper/android/activity/OldSettingsActivity$1;->this$0:Lio/casper/android/activity/OldSettingsActivity;

    const v2, 0x7f0701ca

    invoke-virtual {v1, v2}, Lio/casper/android/activity/OldSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 94
    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 95
    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 96
    new-instance v1, Lio/casper/android/activity/OldSettingsActivity$1$1$1;

    invoke-direct {v1, p0, p1}, Lio/casper/android/activity/OldSettingsActivity$1$1$1;-><init>(Lio/casper/android/activity/OldSettingsActivity$1$1;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 111
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 113
    return-void
.end method

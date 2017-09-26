.class Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;
.super Ljava/lang/Object;
.source "MaterialListPreference.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 76
    if-ltz p3, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;

    # invokes: Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v1, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->access$000(Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;

    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialListPreference;->setValue(Ljava/lang/String;)V

    .line 81
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

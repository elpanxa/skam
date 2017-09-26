.class Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MaterialMultiSelectListPreference.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;[Ljava/lang/Integer;[Ljava/lang/CharSequence;)Z
    .locals 5

    .prologue
    .line 81
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 82
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 83
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 84
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 85
    iget-object v4, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;

    invoke-virtual {v4}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;

    # invokes: Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->access$000(Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/prefs/MaterialMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 89
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

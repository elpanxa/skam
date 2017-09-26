.class Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "MaterialEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;

    # getter for: Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->access$000(Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;

    # invokes: Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v1, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->access$100(Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference$1;->this$0:Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;

    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/prefs/MaterialEditTextPreference;->setText(Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

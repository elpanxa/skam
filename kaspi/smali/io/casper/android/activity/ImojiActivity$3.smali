.class Lio/casper/android/activity/ImojiActivity$3;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "ImojiActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/ImojiActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/ImojiActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/ImojiActivity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lio/casper/android/activity/ImojiActivity$3;->this$0:Lio/casper/android/activity/ImojiActivity;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 4

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 142
    iget-object v0, p0, Lio/casper/android/activity/ImojiActivity$3;->this$0:Lio/casper/android/activity/ImojiActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lio/casper/android/activity/ImojiActivity$3;->this$0:Lio/casper/android/activity/ImojiActivity;

    invoke-static {v3}, Lio/casper/android/activity/ImojiActivity;->a(Lio/casper/android/activity/ImojiActivity;)Lio/casper/android/l/p;

    move-result-object v3

    invoke-virtual {v3}, Lio/casper/android/l/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lio/casper/android/activity/ImojiActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    return-void
.end method

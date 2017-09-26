.class Lio/casper/android/activity/ConversationActivity$1$1;
.super Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/ConversationActivity$1;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/ConversationActivity$1;

.field final synthetic val$httpCallback:Lio/casper/android/c/c/a/a;


# direct methods
.method constructor <init>(Lio/casper/android/activity/ConversationActivity$1;Lio/casper/android/c/c/a/a;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lio/casper/android/activity/ConversationActivity$1$1;->this$1:Lio/casper/android/activity/ConversationActivity$1;

    iput-object p2, p0, Lio/casper/android/activity/ConversationActivity$1$1;->val$httpCallback:Lio/casper/android/c/c/a/a;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositive(Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lio/casper/android/activity/ConversationActivity$1$1;->this$1:Lio/casper/android/activity/ConversationActivity$1;

    iget-object v0, v0, Lio/casper/android/activity/ConversationActivity$1;->val$progressDialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    .line 167
    iget-object v0, p0, Lio/casper/android/activity/ConversationActivity$1$1;->this$1:Lio/casper/android/activity/ConversationActivity$1;

    iget-object v0, v0, Lio/casper/android/activity/ConversationActivity$1;->val$request:Lio/casper/android/n/a/b/d;

    iget-object v1, p0, Lio/casper/android/activity/ConversationActivity$1$1;->val$httpCallback:Lio/casper/android/c/c/a/a;

    invoke-virtual {v0, v1}, Lio/casper/android/n/a/b/d;->a(Lio/casper/android/c/c/a/a;)V

    .line 168
    return-void
.end method

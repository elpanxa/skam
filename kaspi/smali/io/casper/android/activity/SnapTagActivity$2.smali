.class Lio/casper/android/activity/SnapTagActivity$2;
.super Ljava/lang/Object;
.source "SnapTagActivity.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/SnapTagActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/casper/android/c/c/a/a",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/SnapTagActivity;

.field final synthetic val$request:Lio/casper/android/n/a/b/s;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/casper/android/activity/SnapTagActivity;Ljava/lang/String;Lio/casper/android/n/a/b/s;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lio/casper/android/activity/SnapTagActivity$2;->this$0:Lio/casper/android/activity/SnapTagActivity;

    iput-object p2, p0, Lio/casper/android/activity/SnapTagActivity$2;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lio/casper/android/activity/SnapTagActivity$2;->val$request:Lio/casper/android/n/a/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lio/casper/android/activity/SnapTagActivity$2;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapTagActivity;->a(Lio/casper/android/activity/SnapTagActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 85
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lio/casper/android/activity/SnapTagActivity$2;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapTagActivity;->c(Lio/casper/android/activity/SnapTagActivity;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/SnapTagActivity$2;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapTagActivity;->d(Lio/casper/android/activity/SnapTagActivity;)Lio/casper/android/l/q;

    move-result-object v1

    iget-object v2, p0, Lio/casper/android/activity/SnapTagActivity$2;->val$username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/casper/android/l/q;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/SnapTagActivity$2;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapTagActivity;->b(Lio/casper/android/activity/SnapTagActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 87
    iget-object v0, p0, Lio/casper/android/activity/SnapTagActivity$2;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapTagActivity;->d(Lio/casper/android/activity/SnapTagActivity;)Lio/casper/android/l/q;

    move-result-object v0

    const-string v1, "image/png"

    iget-object v2, p0, Lio/casper/android/activity/SnapTagActivity$2;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-static {v2}, Lio/casper/android/activity/SnapTagActivity;->d(Lio/casper/android/activity/SnapTagActivity;)Lio/casper/android/l/q;

    move-result-object v2

    iget-object v3, p0, Lio/casper/android/activity/SnapTagActivity$2;->val$username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/casper/android/l/q;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/casper/android/l/q;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/casper/android/activity/SnapTagActivity$2;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/activity/SnapTagActivity$2;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 97
    .line 98
    iget-object v0, p0, Lio/casper/android/activity/SnapTagActivity$2;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-static {v0}, Lio/casper/android/activity/SnapTagActivity;->a(Lio/casper/android/activity/SnapTagActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 100
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/activity/SnapTagActivity$2;->this$0:Lio/casper/android/activity/SnapTagActivity;

    invoke-static {v1}, Lio/casper/android/activity/SnapTagActivity;->e(Lio/casper/android/activity/SnapTagActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 101
    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 102
    const v1, 0x7f0700f7

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 103
    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 104
    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 105
    new-instance v1, Lio/casper/android/activity/SnapTagActivity$2$1;

    invoke-direct {v1, p0, p0}, Lio/casper/android/activity/SnapTagActivity$2$1;-><init>(Lio/casper/android/activity/SnapTagActivity$2;Lio/casper/android/c/c/a/a;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 112
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 114
    return-void
.end method

.class Lio/casper/android/i/m$2$1;
.super Ljava/lang/Object;
.source "SendFragment.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/m$2;->onClick(Landroid/view/View;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/i/m$2;

.field final synthetic val$allFriendsSelected:Z

.field final synthetic val$myStorySelected:Z

.field final synthetic val$selectedFriends:Ljava/util/List;

.field final synthetic val$uploadMediaRequest:Lio/casper/android/n/a/b/y;


# direct methods
.method constructor <init>(Lio/casper/android/i/m$2;Ljava/util/List;ZZLio/casper/android/n/a/b/y;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lio/casper/android/i/m$2$1;->this$1:Lio/casper/android/i/m$2;

    iput-object p2, p0, Lio/casper/android/i/m$2$1;->val$selectedFriends:Ljava/util/List;

    iput-boolean p3, p0, Lio/casper/android/i/m$2$1;->val$allFriendsSelected:Z

    iput-boolean p4, p0, Lio/casper/android/i/m$2$1;->val$myStorySelected:Z

    iput-object p5, p0, Lio/casper/android/i/m$2$1;->val$uploadMediaRequest:Lio/casper/android/n/a/b/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 221
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/i/m$2$1;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Void;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lio/casper/android/i/m$2$1;->this$1:Lio/casper/android/i/m$2;

    iget-object v0, v0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    iget-object v1, p0, Lio/casper/android/i/m$2$1;->val$uploadMediaRequest:Lio/casper/android/n/a/b/y;

    invoke-virtual {v0, v1, p1, p2}, Lio/casper/android/i/m;->a(Lio/casper/android/c/c/f/c;Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    .line 242
    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v0

    .line 227
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lio/casper/android/i/m$2$1;->this$1:Lio/casper/android/i/m$2;

    iget-object v0, v0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/casper/android/i/m;->a(Lio/casper/android/i/m;Z)Z

    .line 230
    iget-object v0, p0, Lio/casper/android/i/m$2$1;->this$1:Lio/casper/android/i/m$2;

    iget-object v0, v0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v0}, Lio/casper/android/i/m;->e(Lio/casper/android/i/m;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/i/m$2$1;->this$1:Lio/casper/android/i/m$2;

    iget-object v1, v1, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    invoke-static {v1}, Lio/casper/android/i/m;->d(Lio/casper/android/i/m;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0700ea

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setContent(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lio/casper/android/i/m$2$1;->this$1:Lio/casper/android/i/m$2;

    iget-object v0, v0, Lio/casper/android/i/m$2;->this$0:Lio/casper/android/i/m;

    iget-object v1, p0, Lio/casper/android/i/m$2$1;->val$selectedFriends:Ljava/util/List;

    iget-boolean v2, p0, Lio/casper/android/i/m$2$1;->val$allFriendsSelected:Z

    iget-boolean v3, p0, Lio/casper/android/i/m$2$1;->val$myStorySelected:Z

    invoke-virtual {v0, v1, v2, v3}, Lio/casper/android/i/m;->a(Ljava/util/List;ZZ)V

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/casper/android/i/m$2$1;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

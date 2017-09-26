.class Lio/casper/android/a/a$1;
.super Ljava/lang/Object;
.source "ChatMessagesListAdapter.java"

# interfaces
.implements Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a;->a(Lio/casper/android/a/a$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$holder:Lio/casper/android/a/a$a;


# direct methods
.method constructor <init>(Lio/casper/android/a/a;Lio/casper/android/a/a$a;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lio/casper/android/a/a$1;->this$0:Lio/casper/android/a/a;

    iput-object p2, p0, Lio/casper/android/a/a$1;->val$holder:Lio/casper/android/a/a$a;

    iput-object p3, p0, Lio/casper/android/a/a$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lio/casper/android/a/a$1;->val$holder:Lio/casper/android/a/a$a;

    invoke-static {v0}, Lio/casper/android/a/a$a;->d(Lio/casper/android/a/a$a;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lio/casper/android/a/a$1;->this$0:Lio/casper/android/a/a;

    invoke-static {v0}, Lio/casper/android/a/a;->a(Lio/casper/android/a/a;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a$1;->val$file:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/io/File;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a$1;->val$holder:Lio/casper/android/a/a$a;

    invoke-static {v1}, Lio/casper/android/a/a$a;->c(Lio/casper/android/a/a$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 166
    iget-object v0, p0, Lio/casper/android/a/a$1;->val$holder:Lio/casper/android/a/a$a;

    invoke-static {v0}, Lio/casper/android/a/a$a;->c(Lio/casper/android/a/a$a;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lio/casper/android/a/a$1$1;

    invoke-direct {v1, p0}, Lio/casper/android/a/a$1$1;-><init>(Lio/casper/android/a/a$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_0
    return-void
.end method

.method public onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lio/casper/android/a/a$1;->val$holder:Lio/casper/android/a/a$a;

    invoke-static {v0}, Lio/casper/android/a/a$a;->d(Lio/casper/android/a/a$a;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    return-void
.end method

.method public synthetic onSuccess(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 158
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/a$1;->a(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/Boolean;)V

    return-void
.end method

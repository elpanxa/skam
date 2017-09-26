.class Lio/casper/android/a/a/h$8;
.super Ljava/lang/Object;
.source "StoriesAdapter.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/h;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
.field final synthetic this$0:Lio/casper/android/a/a/h;

.field final synthetic val$story:Lio/casper/android/n/a/c/b/x;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/h;Lio/casper/android/n/a/c/b/x;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lio/casper/android/a/a/h$8;->this$0:Lio/casper/android/a/a/h;

    iput-object p2, p0, Lio/casper/android/a/a/h$8;->val$story:Lio/casper/android/n/a/c/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 288
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lio/casper/android/a/a/h$8;->this$0:Lio/casper/android/a/a/h;

    invoke-static {v0}, Lio/casper/android/a/a/h;->c(Lio/casper/android/a/a/h;)Lio/casper/android/o/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/h$8;->val$story:Lio/casper/android/n/a/c/b/x;

    sget-object v2, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v1, v2}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/casper/android/a/a/h$8;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 285
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/a/a/h$8;->a(Lcom/squareup/okhttp/Response;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lio/casper/android/a/a/h$8;->this$0:Lio/casper/android/a/a/h;

    invoke-static {v0}, Lio/casper/android/a/a/h;->c(Lio/casper/android/a/a/h;)Lio/casper/android/o/a/a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/h$8;->val$story:Lio/casper/android/n/a/c/b/x;

    sget-object v2, Lio/casper/android/o/a/a$a;->FAILED:Lio/casper/android/o/a/a$a;

    invoke-virtual {v0, v1, v2}, Lio/casper/android/o/a/a;->a(Ljava/lang/Object;Lio/casper/android/o/a/a$a;)V

    .line 298
    return-void
.end method

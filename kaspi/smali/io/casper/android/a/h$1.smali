.class Lio/casper/android/a/h$1;
.super Ljava/lang/Object;
.source "LocalEmojiGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/h;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/h;

.field final synthetic val$localSticker:Ljava/io/File;


# direct methods
.method constructor <init>(Lio/casper/android/a/h;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lio/casper/android/a/h$1;->this$0:Lio/casper/android/a/h;

    iput-object p2, p0, Lio/casper/android/a/h$1;->val$localSticker:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lio/casper/android/a/h$1;->this$0:Lio/casper/android/a/h;

    invoke-static {v0}, Lio/casper/android/a/h;->a(Lio/casper/android/a/h;)Lio/casper/android/i/k$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lio/casper/android/a/h$1;->this$0:Lio/casper/android/a/h;

    invoke-static {v0}, Lio/casper/android/a/h;->a(Lio/casper/android/a/h;)Lio/casper/android/i/k$a;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/h$1;->val$localSticker:Ljava/io/File;

    invoke-interface {v0, v1}, Lio/casper/android/i/k$a;->a(Ljava/io/File;)V

    .line 66
    :cond_0
    return-void
.end method

.class Lio/casper/android/a/a/b$1;
.super Ljava/lang/Object;
.source "EmojiGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/b;

.field final synthetic val$emojiName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lio/casper/android/a/a/b$1;->this$0:Lio/casper/android/a/a/b;

    iput-object p2, p0, Lio/casper/android/a/a/b$1;->val$emojiName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lio/casper/android/a/a/b$1;->this$0:Lio/casper/android/a/a/b;

    invoke-static {v0}, Lio/casper/android/a/a/b;->a(Lio/casper/android/a/a/b;)Lio/casper/android/a/a/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    :try_start_0
    iget-object v0, p0, Lio/casper/android/a/a/b$1;->this$0:Lio/casper/android/a/a/b;

    invoke-static {v0}, Lio/casper/android/a/a/b;->b(Lio/casper/android/a/a/b;)Lio/casper/android/util/c/c;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/a/a/b$1;->val$emojiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/casper/android/util/c/c;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lio/casper/android/a/a/b$1;->this$0:Lio/casper/android/a/a/b;

    invoke-static {v1}, Lio/casper/android/a/a/b;->a(Lio/casper/android/a/a/b;)Lio/casper/android/a/a/b$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/casper/android/a/a/b$a;->a(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

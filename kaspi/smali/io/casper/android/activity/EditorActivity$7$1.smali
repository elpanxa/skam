.class Lio/casper/android/activity/EditorActivity$7$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/EditorActivity$7;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity$7;)V
    .locals 0

    .prologue
    .line 866
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$7$1;->this$1:Lio/casper/android/activity/EditorActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 870
    :try_start_0
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$7$1;->this$1:Lio/casper/android/activity/EditorActivity$7;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$7;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$7$1;->this$1:Lio/casper/android/activity/EditorActivity$7;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$7;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->h(Lio/casper/android/activity/EditorActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lio/casper/android/util/c;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lio/casper/android/activity/EditorActivity;->a(Lio/casper/android/activity/EditorActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 871
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$7$1;->this$1:Lio/casper/android/activity/EditorActivity$7;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$7;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$7$1;->this$1:Lio/casper/android/activity/EditorActivity$7;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$7;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->h(Lio/casper/android/activity/EditorActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    return-void

    .line 872
    :catch_0
    move-exception v0

    .line 873
    const-string v1, "EditorActivity"

    const-string v2, "Failed to Flip Bitmap Horizontally"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

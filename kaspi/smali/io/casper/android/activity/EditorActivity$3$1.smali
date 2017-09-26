.class Lio/casper/android/activity/EditorActivity$3$1;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/casper/android/activity/EditorActivity$3;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity$3;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$3$1;->this$1:Lio/casper/android/activity/EditorActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x5a

    .line 801
    .line 804
    :try_start_0
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$3$1;->this$1:Lio/casper/android/activity/EditorActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$3;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$3$1;->this$1:Lio/casper/android/activity/EditorActivity$3;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$3;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->h(Lio/casper/android/activity/EditorActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-static {v1, v2}, Lio/casper/android/util/c;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lio/casper/android/activity/EditorActivity;->a(Lio/casper/android/activity/EditorActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 805
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$3$1;->this$1:Lio/casper/android/activity/EditorActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$3;->this$0:Lio/casper/android/activity/EditorActivity;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$3$1;->this$1:Lio/casper/android/activity/EditorActivity$3;

    iget-object v1, v1, Lio/casper/android/activity/EditorActivity$3;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v1}, Lio/casper/android/activity/EditorActivity;->h(Lio/casper/android/activity/EditorActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$3$1;->this$1:Lio/casper/android/activity/EditorActivity$3;

    iget-object v0, v0, Lio/casper/android/activity/EditorActivity$3;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->j(Lio/casper/android/activity/EditorActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/casper/android/activity/EditorActivity$3$1$1;

    invoke-direct {v1, p0}, Lio/casper/android/activity/EditorActivity$3$1$1;-><init>(Lio/casper/android/activity/EditorActivity$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 817
    return-void

    .line 806
    :catch_0
    move-exception v0

    .line 807
    const-string v1, "EditorActivity"

    const-string v2, "Rotating Bitmap [%s degrees] failed with Exception"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v0, v3}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

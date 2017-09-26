.class Lio/casper/android/camera/CameraActivity$8;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lio/casper/android/camera/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/camera/CameraActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lio/casper/android/camera/CameraActivity;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lio/casper/android/camera/CameraActivity$8;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$8;->this$0:Lio/casper/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/casper/android/camera/CameraActivity;->a(Z)V

    .line 248
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/camera/CameraActivity$8;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v1}, Lio/casper/android/camera/CameraActivity;->c(Lio/casper/android/camera/CameraActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/casper/android/activity/EditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    const-string v1, "file"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v1, "type"

    const-string v2, "image"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v1, "front_cam"

    iget-object v2, p0, Lio/casper/android/camera/CameraActivity$8;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v2}, Lio/casper/android/camera/CameraActivity;->e(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/camera/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/casper/android/camera/a;->m()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Lio/casper/android/camera/CameraActivity$8;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lio/casper/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 254
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 237
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const-string v0, "Something went wrong..."

    .line 241
    :cond_0
    iget-object v1, p0, Lio/casper/android/camera/CameraActivity$8;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v1}, Lio/casper/android/camera/CameraActivity;->c(Lio/casper/android/camera/CameraActivity;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 242
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$8;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->e(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/camera/a;->d()V

    .line 243
    return-void
.end method

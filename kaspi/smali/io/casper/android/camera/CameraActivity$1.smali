.class Lio/casper/android/camera/CameraActivity$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lio/casper/android/camera/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/camera/CameraActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 99
    iput-object p1, p0, Lio/casper/android/camera/CameraActivity$1;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$1;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->a(Lio/casper/android/camera/CameraActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$1;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->b(Lio/casper/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02010f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$1;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->d(Lio/casper/android/camera/CameraActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Lio/casper/android/util/l;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/casper/android/camera/CameraActivity$1;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v1}, Lio/casper/android/camera/CameraActivity;->c(Lio/casper/android/camera/CameraActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lio/casper/android/activity/EditorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    const-string v1, "file"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "type"

    const-string v2, "video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lio/casper/android/camera/CameraActivity$1;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-virtual {v1, v0}, Lio/casper/android/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$1;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->c(Lio/casper/android/camera/CameraActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$1;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->a(Lio/casper/android/camera/CameraActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$1;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->b(Lio/casper/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    return-void
.end method

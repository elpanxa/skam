.class Lio/casper/android/camera/CameraActivity$5;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 185
    iput-object p1, p0, Lio/casper/android/camera/CameraActivity$5;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$5;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->e(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/camera/a;

    move-result-object v0

    iget-object v3, p0, Lio/casper/android/camera/CameraActivity$5;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v3}, Lio/casper/android/camera/CameraActivity;->g(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/l/k;

    move-result-object v3

    invoke-virtual {v3}, Lio/casper/android/l/k;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/casper/android/camera/a;->a(Ljava/io/File;)V

    .line 190
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$5;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->e(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/camera/a;->k()V

    .line 192
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$5;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->b(Lio/casper/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v3, 0x7f020118

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$5;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->a(Lio/casper/android/camera/CameraActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$5;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-virtual {v0, v2}, Lio/casper/android/camera/CameraActivity;->a(Z)V

    .line 196
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$5;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->e(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/camera/a;

    move-result-object v0

    const-string v3, "off"

    invoke-virtual {v0, v3}, Lio/casper/android/camera/a;->a(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$5;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->f(Lio/casper/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$5;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->e(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/camera/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/camera/a;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lio/casper/android/camera/CameraActivity$5;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v0}, Lio/casper/android/camera/CameraActivity;->h(Lio/casper/android/camera/CameraActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lio/casper/android/camera/CameraActivity$5;->this$0:Lio/casper/android/camera/CameraActivity;

    invoke-static {v3}, Lio/casper/android/camera/CameraActivity;->e(Lio/casper/android/camera/CameraActivity;)Lio/casper/android/camera/a;

    move-result-object v3

    invoke-virtual {v3}, Lio/casper/android/camera/a;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    return-void

    :cond_0
    move v0, v2

    .line 198
    goto :goto_0

    :cond_1
    move v2, v1

    .line 199
    goto :goto_1
.end method

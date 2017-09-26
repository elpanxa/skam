.class Lio/casper/android/activity/EditorActivity$48;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/snapchat/android/util/PhotoEffectTask$PhotoEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/EditorActivity;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$previewBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1727
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$48;->this$0:Lio/casper/android/activity/EditorActivity;

    iput-object p2, p0, Lio/casper/android/activity/EditorActivity$48;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lio/casper/android/activity/EditorActivity$48;->val$previewBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1730
    if-eqz p1, :cond_0

    .line 1731
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$48;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1735
    :goto_0
    return-void

    .line 1733
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$48;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$48;->val$previewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

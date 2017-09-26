.class Lio/casper/android/activity/EditorActivity$51;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/EditorActivity;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1985
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$51;->this$0:Lio/casper/android/activity/EditorActivity;

    iput-object p2, p0, Lio/casper/android/activity/EditorActivity$51;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1988
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$51;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0}, Lio/casper/android/activity/EditorActivity;->m(Lio/casper/android/activity/EditorActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lio/casper/android/activity/EditorActivity$51;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1989
    return-void
.end method

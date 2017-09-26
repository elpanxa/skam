.class Lio/casper/android/activity/EditorActivity$50;
.super Ljava/lang/Object;
.source "EditorActivity.java"

# interfaces
.implements Lcom/snapchat/android/util/PhotoEffectTask$PhotoEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/activity/EditorActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/activity/EditorActivity;


# direct methods
.method constructor <init>(Lio/casper/android/activity/EditorActivity;)V
    .locals 0

    .prologue
    .line 1921
    iput-object p1, p0, Lio/casper/android/activity/EditorActivity$50;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 1925
    if-nez p1, :cond_0

    .line 1926
    const-string v0, "EditorActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "PhotoEffectTask returned null Bitmap"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1932
    :goto_0
    return-void

    .line 1930
    :cond_0
    iget-object v0, p0, Lio/casper/android/activity/EditorActivity$50;->this$0:Lio/casper/android/activity/EditorActivity;

    invoke-static {v0, p1}, Lio/casper/android/activity/EditorActivity;->b(Lio/casper/android/activity/EditorActivity;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

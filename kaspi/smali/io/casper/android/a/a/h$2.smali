.class Lio/casper/android/a/a/h$2;
.super Ljava/lang/Object;
.source "StoriesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/h;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/h;

.field final synthetic val$nativeAdDetails:Lcom/startapp/android/publish/nativead/NativeAdDetails;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/h;Lcom/startapp/android/publish/nativead/NativeAdDetails;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lio/casper/android/a/a/h$2;->this$0:Lio/casper/android/a/a/h;

    iput-object p2, p0, Lio/casper/android/a/a/h$2;->val$nativeAdDetails:Lcom/startapp/android/publish/nativead/NativeAdDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lio/casper/android/a/a/h$2;->val$nativeAdDetails:Lcom/startapp/android/publish/nativead/NativeAdDetails;

    iget-object v1, p0, Lio/casper/android/a/a/h$2;->this$0:Lio/casper/android/a/a/h;

    iget-object v1, v1, Lio/casper/android/a/a/h;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->sendClick(Landroid/content/Context;)V

    .line 384
    return-void
.end method

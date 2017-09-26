.class Lio/casper/android/a/a/g$8;
.super Ljava/lang/Object;
.source "SnapsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/a/a/g;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/a/a/g;

.field final synthetic val$nativeAdDetails:Lcom/startapp/android/publish/nativead/NativeAdDetails;


# direct methods
.method constructor <init>(Lio/casper/android/a/a/g;Lcom/startapp/android/publish/nativead/NativeAdDetails;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lio/casper/android/a/a/g$8;->this$0:Lio/casper/android/a/a/g;

    iput-object p2, p0, Lio/casper/android/a/a/g$8;->val$nativeAdDetails:Lcom/startapp/android/publish/nativead/NativeAdDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lio/casper/android/a/a/g$8;->val$nativeAdDetails:Lcom/startapp/android/publish/nativead/NativeAdDetails;

    iget-object v1, p0, Lio/casper/android/a/a/g$8;->this$0:Lio/casper/android/a/a/g;

    iget-object v1, v1, Lio/casper/android/a/a/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/nativead/NativeAdDetails;->sendClick(Landroid/content/Context;)V

    .line 349
    return-void
.end method

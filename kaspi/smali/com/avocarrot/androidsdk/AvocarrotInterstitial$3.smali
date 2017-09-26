.class Lcom/avocarrot/androidsdk/AvocarrotInterstitial$3;
.super Ljava/lang/Object;
.source "AvocarrotInterstitial.java"

# interfaces
.implements Lcom/avocarrot/androidsdk/ImageLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avocarrot/androidsdk/AvocarrotInterstitial;->onCarouselBindView(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avocarrot/androidsdk/AvocarrotInterstitial;

.field final synthetic val$viewHolder:Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;


# direct methods
.method constructor <init>(Lcom/avocarrot/androidsdk/AvocarrotInterstitial;Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$3;->this$0:Lcom/avocarrot/androidsdk/AvocarrotInterstitial;

    iput-object p2, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$3;->val$viewHolder:Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageFailedToLoad(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$3;->val$viewHolder:Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->rating:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    return-void
.end method

.method public imageHasLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$3;->val$viewHolder:Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;

    iget-object v0, v0, Lcom/avocarrot/androidsdk/AvocarrotInterstitial$InterstitialViewHolder;->rating:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    return-void
.end method

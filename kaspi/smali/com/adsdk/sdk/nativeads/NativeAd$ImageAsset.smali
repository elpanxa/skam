.class public Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/nativeads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageAsset"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field height:I

.field url:Ljava/lang/String;

.field width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;->url:Ljava/lang/String;

    .line 33
    iput p2, p0, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;->width:I

    .line 34
    iput p3, p0, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;->height:I

    .line 35
    invoke-static {p1}, Lcom/adsdk/sdk/Util;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;->bitmap:Landroid/graphics/Bitmap;

    .line 36
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;->height:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/adsdk/sdk/nativeads/NativeAd$ImageAsset;->width:I

    return v0
.end method

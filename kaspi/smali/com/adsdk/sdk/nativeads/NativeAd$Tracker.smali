.class public Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adsdk/sdk/nativeads/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tracker"
.end annotation


# instance fields
.field type:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;->type:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/adsdk/sdk/nativeads/NativeAd$Tracker;->url:Ljava/lang/String;

    .line 63
    return-void
.end method

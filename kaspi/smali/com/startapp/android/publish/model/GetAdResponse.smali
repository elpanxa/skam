.class public Lcom/startapp/android/publish/model/GetAdResponse;
.super Lcom/startapp/android/publish/model/BaseResponse;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/model/GetAdResponse$ResponseType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adInfoOverrides:Lcom/startapp/android/publish/adinformation/b;

.field private adsDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;"
        }
    .end annotation
.end field

.field private productId:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/startapp/android/publish/model/BaseResponse;-><init>()V

    .line 18
    invoke-static {}, Lcom/startapp/android/publish/adinformation/b;->a()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/GetAdResponse;->adInfoOverrides:Lcom/startapp/android/publish/adinformation/b;

    .line 27
    return-void
.end method


# virtual methods
.method public getAdInfoOverride()Lcom/startapp/android/publish/adinformation/b;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdResponse;->adInfoOverrides:Lcom/startapp/android/publish/adinformation/b;

    return-object v0
.end method

.method public getAdsDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdResponse;->adsDetails:Ljava/util/List;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdResponse;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/startapp/android/publish/model/GetAdResponse;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public setAdsDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdResponse;->adsDetails:Ljava/util/List;

    .line 63
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdResponse;->productId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setPublisherId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/startapp/android/publish/model/GetAdResponse;->publisherId:Ljava/lang/String;

    .line 35
    return-void
.end method

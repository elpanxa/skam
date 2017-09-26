.class public Lcom/startapp/android/publish/model/SdkDownloadRequest;
.super Lcom/startapp/android/publish/model/BaseRequest;
.source "StartAppSDK"


# static fields
.field private static final PLACEMENT:Ljava/lang/String; = "INAPP_DOWNLOAD"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/startapp/android/publish/model/BaseRequest;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public getNameValueMap()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/NameValueObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    invoke-super {p0}, Lcom/startapp/android/publish/model/BaseRequest;->getNameValueMap()Ljava/util/List;

    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :cond_0
    const-string v1, "placement"

    const-string v2, "INAPP_DOWNLOAD"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/android/publish/h/u;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 25
    return-object v0
.end method

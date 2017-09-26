.class public Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;
.super Landroid/os/AsyncTask;
.source "ModelSpecificDistanceUpdater.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater$CompletionHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ModelSpecificDistanceUpdater"


# instance fields
.field private exception:Ljava/lang/Exception;

.field private mCompletionHandler:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater$CompletionHandler;

.field private mContext:Landroid/content/Context;

.field private mDistanceConfigFetcher:Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;

.field private response:Ljava/lang/String;

.field private urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater$CompletionHandler;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 21
    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->exception:Ljava/lang/Exception;

    .line 22
    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->urlString:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->response:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;

    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->mDistanceConfigFetcher:Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;

    .line 43
    iput-object p3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->mCompletionHandler:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater$CompletionHandler;

    .line 44
    return-void
.end method

.method private getInstallId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lorg/altbeacon/beacon/distance/AndroidModel;->forThisDevice()Lorg/altbeacon/beacon/distance/AndroidModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/altbeacon/beacon/distance/AndroidModel;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android Beacon Library;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->getInstallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "2.1.4-SNAPSHOT"

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->mDistanceConfigFetcher:Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;

    invoke-virtual {v0}, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->request()V

    .line 31
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->mCompletionHandler:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater$CompletionHandler;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->mCompletionHandler:Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater$CompletionHandler;

    iget-object v1, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->mDistanceConfigFetcher:Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;

    invoke-virtual {v1}, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->getResponseString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->mDistanceConfigFetcher:Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;

    invoke-virtual {v2}, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->getException()Ljava/lang/Exception;

    move-result-object v2

    iget-object v3, p0, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater;->mDistanceConfigFetcher:Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;

    invoke-virtual {v3}, Lorg/altbeacon/beacon/distance/DistanceConfigFetcher;->getResponseCode()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/altbeacon/beacon/distance/ModelSpecificDistanceUpdater$CompletionHandler;->onComplete(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 34
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.class public interface abstract Lcom/supersonicads/sdk/precache/DownloadManager$OnPreCacheCompletion;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPreCacheCompletion"
.end annotation


# virtual methods
.method public abstract onFileDownloadFail(Lcom/supersonicads/sdk/data/SSAFile;)V
.end method

.method public abstract onFileDownloadSuccess(Lcom/supersonicads/sdk/data/SSAFile;)V
.end method

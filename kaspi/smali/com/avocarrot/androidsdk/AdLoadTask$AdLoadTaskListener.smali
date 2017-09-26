.class interface abstract Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;
.super Ljava/lang/Object;
.source "AdLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/AdLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AdLoadTaskListener"
.end annotation


# virtual methods
.method public abstract onLoadAdFailure(Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/AdError;Ljava/lang/Exception;)V
.end method

.method public abstract onLoadAdSuccess(Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/BaseAdResponse;)V
.end method

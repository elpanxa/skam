.class public interface abstract Lcom/avocarrot/androidsdk/ImageLoadTask$ImageLoadTaskListener;
.super Ljava/lang/Object;
.source "ImageLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avocarrot/androidsdk/ImageLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageLoadTaskListener"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

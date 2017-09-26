.class public Lcom/snapchat/android/util/PhotoEffectTask;
.super Landroid/os/AsyncTask;
.source "PhotoEffectTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/PhotoEffectTask$PhotoEffectListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final FILTER_BLACK_AND_WHITE_NATIVE:I = 0x0

.field public static final FILTER_INSTASNAP_NATIVE_FILTER:I = 0x3

.field public static final FILTER_INVERTED:I = 0x2

.field public static final FILTER_NONE:I = -0x1

.field public static final FILTER_SEPIA:I = 0x1

.field public static final FILTER_SKETCH:I = 0x8

.field private static final TAG:Ljava/lang/String; = "PhotoEffectTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilterType:I

.field private mListener:Lcom/snapchat/android/util/PhotoEffectTask$PhotoEffectListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    :try_start_0
    const-string v0, "stlport_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 93
    const-string v0, "photoeffect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/snapchat/android/util/PhotoEffectTask$PhotoEffectListener;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mContext:Landroid/content/Context;

    .line 23
    iput p2, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mFilterType:I

    .line 24
    iput-object p3, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mListener:Lcom/snapchat/android/util/PhotoEffectTask$PhotoEffectListener;

    .line 25
    return-void
.end method

.method public static cancelTask()V
    .locals 1

    .prologue
    .line 84
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/util/PhotoEffectTask;->terminateNativeProcessing()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    goto :goto_0
.end method

.method public static createPhotoFilter(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported bitmap config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_1

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported bitmap config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input bitmap recycled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output bitmap recycled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 70
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 78
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/snapchat/android/util/PhotoEffectTask;->nativePhotoEffect(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 80
    return-void
.end method

.method private static native nativePhotoEffect(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method private static native terminateNativeProcessing()V
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 30
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .line 32
    if-eqz v1, :cond_0

    iget v0, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mFilterType:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 44
    :goto_0
    return-object v0

    .line 37
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    iget v2, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mFilterType:I

    iget-object v3, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0, v3}, Lcom/snapchat/android/util/PhotoEffectTask;->createPhotoFilter(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v1, "PhotoEffectTask"

    const-string v2, "Processing Bitmap failed"

    invoke-static {v1, v2, v0}, Lio/casper/android/f/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/PhotoEffectTask;->doInBackground([Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mListener:Lcom/snapchat/android/util/PhotoEffectTask$PhotoEffectListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/snapchat/android/util/PhotoEffectTask;->mListener:Lcom/snapchat/android/util/PhotoEffectTask$PhotoEffectListener;

    invoke-interface {v0, p1}, Lcom/snapchat/android/util/PhotoEffectTask$PhotoEffectListener;->onComplete(Landroid/graphics/Bitmap;)V

    .line 53
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/PhotoEffectTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

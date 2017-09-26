.class public Lcom/adsdk/sdk/video/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final BACK_ICON:Ljava/lang/String; = "browser_back.png"

.field public static final BOTTOMBAR_BG:Ljava/lang/String; = "bar.png"

.field public static final CLOSE_BUTTON_NORMAL:Ljava/lang/String; = "close_button_normal.png"

.field public static final CLOSE_BUTTON_PRESSED:Ljava/lang/String; = "close_button_pressed.png"

.field public static final DEFAULT_BACK_IMAGE_RESOURCE_ID:I = -0xe

.field public static final DEFAULT_BOTTOMBAR_BG_RESOURCE_ID:I = -0x2

.field public static final DEFAULT_CLOSE_BUTTON_NORMAL_RESOURCE_ID:I = -0x1d

.field public static final DEFAULT_CLOSE_BUTTON_PRESSED_RESOURCE_ID:I = -0x1e

.field public static final DEFAULT_EXTERNAL_IMAGE_RESOURCE_ID:I = -0x11

.field public static final DEFAULT_FORWARD_IMAGE_RESOURCE_ID:I = -0xf

.field public static final DEFAULT_PAUSE_IMAGE_RESOURCE_ID:I = -0xc

.field public static final DEFAULT_PLAY_IMAGE_RESOURCE_ID:I = -0xb

.field public static final DEFAULT_RELOAD_IMAGE_RESOURCE_ID:I = -0x10

.field public static final DEFAULT_REPLAY_IMAGE_RESOURCE_ID:I = -0xd

.field public static final DEFAULT_SKIP_IMAGE_RESOURCE_ID:I = -0x12

.field public static final DEFAULT_TOPBAR_BG_RESOURCE_ID:I = -0x1

.field public static final EXTERNAL_ICON:Ljava/lang/String; = "browser_external.png"

.field public static final FORWARD_ICON:Ljava/lang/String; = "browser_forward.png"

.field public static final PAUSE_ICON:Ljava/lang/String; = "video_pause.png"

.field public static final PLAY_ICON:Ljava/lang/String; = "video_play.png"

.field public static final RELOAD_ICON:Ljava/lang/String; = "video_replay.png"

.field public static final REPLAY_ICON:Ljava/lang/String; = "video_replay.png"

.field public static final RESOURCE_LOADED_MSG:I = 0x64

.field public static final SKIP_ICON:Ljava/lang/String; = "skip.png"

.field public static final TOPBAR_BG:Ljava/lang/String; = "bar.png"

.field public static final TYPE_FILE:I = 0x0

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_ZIP:I = 0x1

.field public static final VERSION:Ljava/lang/String; = "version.txt"

.field public static sCancel:Z

.field public static sDownloadGet:Lorg/apache/http/client/methods/HttpGet;

.field public static sDownloading:Z

.field private static sResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const-class v0, Lcom/adsdk/sdk/video/ResourceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/adsdk/sdk/video/ResourceManager;->$assertionsDisabled:Z

    .line 35
    sput-boolean v1, Lcom/adsdk/sdk/video/ResourceManager;->sDownloading:Z

    .line 36
    sput-boolean v1, Lcom/adsdk/sdk/video/ResourceManager;->sCancel:Z

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sResources:Ljava/util/HashMap;

    return-void

    :cond_0
    move v0, v1

    .line 29
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;

    .line 265
    iput-object p2, p0, Lcom/adsdk/sdk/video/ResourceManager;->mHandler:Landroid/os/Handler;

    .line 266
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/ResourceManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/ResourceManager;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;

    return-object v0
.end method

.method private static buildDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 214
    .line 216
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 219
    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_4

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 223
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 224
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 226
    const/4 v6, 0x1

    int-to-float v7, v4

    .line 225
    invoke-static {v6, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    .line 228
    const/4 v7, 0x1

    int-to-float v8, v5

    .line 227
    invoke-static {v7, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 229
    if-ne v6, v4, :cond_0

    if-eq v3, v5, :cond_5

    .line 231
    :cond_0
    const/4 v4, 0x0

    .line 230
    invoke-static {v0, v6, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v3, v0

    .line 233
    :goto_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 238
    if-eqz v2, :cond_1

    .line 240
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 246
    :cond_1
    :goto_1
    return-object v0

    .line 235
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 236
    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ResourceManager cannot find resource "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 238
    if-eqz v0, :cond_2

    .line 240
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    move-object v0, v1

    .line 246
    goto :goto_1

    .line 237
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 238
    :goto_4
    if-eqz v2, :cond_3

    .line 240
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 245
    :cond_3
    :goto_5
    throw v0

    .line 238
    :cond_4
    if-eqz v2, :cond_2

    .line 240
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 242
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_5

    .line 237
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    .line 235
    :catch_5
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :cond_5
    move-object v3, v0

    goto :goto_0
.end method

.method public static cancel()V
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsdk/sdk/video/ResourceManager;->sCancel:Z

    .line 255
    sget-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sDownloadGet:Lorg/apache/http/client/methods/HttpGet;

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sDownloadGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 257
    const/4 v0, 0x0

    sput-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sDownloadGet:Lorg/apache/http/client/methods/HttpGet;

    .line 260
    :cond_0
    sget-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sResources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 261
    return-void
.end method

.method public static getDefaultResource(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sResources:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static getDefaultSkipButton(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 79
    const-string v0, "skip.png"

    invoke-static {p0, v0}, Lcom/adsdk/sdk/video/ResourceManager;->buildDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledVersion(Landroid/content/Context;)J
    .locals 5

    .prologue
    .line 95
    const-wide/16 v0, -0x1

    .line 96
    const/4 v2, 0x0

    .line 98
    :try_start_0
    const-string v3, "version.txt"

    invoke-virtual {p0, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 99
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 100
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 101
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 106
    if-eqz v2, :cond_0

    .line 108
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 114
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Resources installed version:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 115
    return-wide v0

    .line 103
    :catch_0
    move-exception v3

    .line 106
    if-eqz v2, :cond_0

    .line 108
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 109
    :catch_1
    move-exception v2

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    if-eqz v2, :cond_1

    .line 108
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 113
    :cond_1
    :goto_1
    throw v0

    .line 109
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public static getStaticResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 289
    sget-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 290
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    :cond_0
    invoke-static {p0, p1}, Lcom/adsdk/sdk/video/ResourceManager;->initDefaultResource(Landroid/content/Context;I)V

    .line 294
    sget-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 296
    :cond_1
    return-object v0
.end method

.method private static initDefaultResource(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 151
    sparse-switch p1, :sswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 153
    :sswitch_0
    const/16 v0, -0xb

    .line 154
    const-string v1, "video_play.png"

    .line 153
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 157
    :sswitch_1
    const/16 v0, -0xc

    .line 158
    const-string v1, "video_pause.png"

    .line 157
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 161
    :sswitch_2
    const/16 v0, -0xd

    .line 162
    const-string v1, "video_replay.png"

    .line 161
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 165
    :sswitch_3
    const/16 v0, -0xe

    .line 166
    const-string v1, "browser_back.png"

    .line 165
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 169
    :sswitch_4
    const/16 v0, -0xf

    .line 170
    const-string v1, "browser_forward.png"

    .line 169
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 173
    :sswitch_5
    const/16 v0, -0x10

    .line 174
    const-string v1, "video_replay.png"

    .line 173
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 177
    :sswitch_6
    const/16 v0, -0x11

    .line 178
    const-string v1, "browser_external.png"

    .line 177
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 181
    :sswitch_7
    const/16 v0, -0x12

    .line 182
    const-string v1, "skip.png"

    .line 181
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 185
    :sswitch_8
    const/4 v0, -0x1

    const-string v1, "bar.png"

    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 188
    :sswitch_9
    const/4 v0, -0x2

    .line 189
    const-string v1, "bar.png"

    .line 188
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 192
    :sswitch_a
    const/16 v0, -0x1d

    .line 193
    const-string v1, "close_button_normal.png"

    .line 192
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 196
    :sswitch_b
    const/16 v0, -0x1e

    .line 197
    const-string v1, "close_button_pressed.png"

    .line 196
    invoke-static {p0, v0, v1}, Lcom/adsdk/sdk/video/ResourceManager;->registerImageResource(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 151
    :sswitch_data_0
    .sparse-switch
        -0x1e -> :sswitch_b
        -0x1d -> :sswitch_a
        -0x12 -> :sswitch_7
        -0x11 -> :sswitch_6
        -0x10 -> :sswitch_5
        -0xf -> :sswitch_4
        -0xe -> :sswitch_3
        -0xd -> :sswitch_2
        -0xc -> :sswitch_1
        -0xb -> :sswitch_0
        -0x2 -> :sswitch_9
        -0x1 -> :sswitch_8
    .end sparse-switch
.end method

.method public static isDownloading()Z
    .locals 1

    .prologue
    .line 250
    sget-boolean v0, Lcom/adsdk/sdk/video/ResourceManager;->sDownloading:Z

    return v0
.end method

.method private static registerImageResource(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 204
    invoke-static {p0, p2}, Lcom/adsdk/sdk/video/ResourceManager;->buildDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    sget-object v1, Lcom/adsdk/sdk/video/ResourceManager;->sResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string v0, "registerImageResource"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "drawable was null "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static resourcesInstalled(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 85
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 91
    :goto_1
    return v1

    .line 86
    :cond_0
    const-string v3, "version.txt"

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    const-string v0, "Resources already installed"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x1

    goto :goto_1

    .line 85
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static saveInstalledVersion(Landroid/content/Context;J)V
    .locals 5

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 121
    :try_start_0
    const-string v1, "version.txt"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 122
    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 123
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    if-eqz v0, :cond_0

    .line 130
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v1

    .line 128
    if-eqz v0, :cond_0

    .line 130
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 131
    :catch_1
    move-exception v0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 128
    :goto_1
    if-eqz v1, :cond_1

    .line 130
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 135
    :cond_1
    :goto_2
    throw v0

    .line 131
    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_0

    .line 127
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method public containsResource(I)Z
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;

    .line 276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fetchResource(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 269
    sget-object v0, Lcom/adsdk/sdk/video/ResourceManager;->sResources:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;-><init>(Lcom/adsdk/sdk/video/ResourceManager;Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 272
    :cond_0
    return-void
.end method

.method public getResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 282
    if-eqz v0, :cond_0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/adsdk/sdk/video/ResourceManager;->getStaticResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public releaseInstance()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 140
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    sget-boolean v0, Lcom/adsdk/sdk/video/ResourceManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 141
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 147
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 148
    return-void
.end method

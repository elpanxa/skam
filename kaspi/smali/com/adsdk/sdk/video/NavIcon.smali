.class public Lcom/adsdk/sdk/video/NavIcon;
.super Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;
.source "NavIcon.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Lcom/adsdk/sdk/video/NavIconData;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adsdk/sdk/video/NavIconData;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/AspectRatioImageViewWidth;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/NavIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 30
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 32
    iput-object p1, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    .line 35
    invoke-virtual {p0, v0, v3, v0, v3}, Lcom/adsdk/sdk/video/NavIcon;->setPadding(IIII)V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsdk/sdk/video/NavIcon;->mHandler:Landroid/os/Handler;

    .line 37
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/video/NavIcon;->setVisibility(I)V

    .line 38
    iget-object v0, p2, Lcom/adsdk/sdk/video/NavIconData;->iconUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/video/NavIcon;->setImageDrawable(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, p0}, Lcom/adsdk/sdk/video/NavIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/NavIcon;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/adsdk/sdk/video/NavIcon;->fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/NavIcon;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 65
    .line 67
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_4

    .line 72
    iget-object v3, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 73
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 74
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 76
    const/4 v6, 0x1

    int-to-float v7, v4

    .line 75
    invoke-static {v6, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    .line 78
    const/4 v7, 0x1

    int-to-float v8, v5

    .line 77
    invoke-static {v7, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 79
    if-ne v6, v4, :cond_0

    if-eq v3, v5, :cond_5

    .line 81
    :cond_0
    const/4 v4, 0x0

    .line 80
    invoke-static {v1, v6, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v3, v1

    .line 83
    :goto_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    if-eqz v0, :cond_1

    .line 90
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_1
    move-object v0, v1

    .line 104
    :goto_2
    return-object v0

    .line 85
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 86
    :goto_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NavIcon cannot load resource "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    if-eqz v0, :cond_2

    .line 90
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 98
    :cond_2
    :goto_4
    :try_start_5
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 100
    const-string v1, "src"

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v0

    goto :goto_2

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    :goto_5
    if-eqz v2, :cond_3

    .line 90
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 95
    :cond_3
    :goto_6
    throw v0

    .line 88
    :cond_4
    if-eqz v0, :cond_2

    .line 90
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 92
    :catch_1
    move-exception v0

    goto :goto_4

    .line 102
    :catch_2
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot fetch image:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 104
    goto :goto_2

    .line 92
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_6

    .line 87
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    .line 85
    :catch_6
    move-exception v1

    goto :goto_3

    :cond_5
    move-object v3, v1

    goto :goto_0
.end method

.method private setImageDrawable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsdk/sdk/video/NavIcon$1;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/video/NavIcon$1;-><init>(Lcom/adsdk/sdk/video/NavIcon;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 62
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/adsdk/sdk/video/RichMediaActivity;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/adsdk/sdk/video/RichMediaActivity;

    .line 113
    iget-object v1, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget v1, v1, Lcom/adsdk/sdk/video/NavIconData;->openType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 114
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 115
    iget-object v3, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget-object v3, v3, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 114
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    .line 119
    const-string v2, "market:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 120
    const-string v2, "http://market.android.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 121
    const-string v2, "sms:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    const-string v2, "voicemail:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 124
    const-string v2, "geo:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 125
    const-string v2, "google.streetview:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 126
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 127
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 126
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t open URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_3
    :try_start_1
    const-string v2, "mfox:external:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 133
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v2, Landroid/content/Intent;

    .line 135
    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 134
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 136
    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/video/RichMediaActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 139
    :cond_4
    const-string v2, "mfox:replayvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 142
    const-string v2, "replayVideo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 143
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 144
    :catch_1
    move-exception v0

    .line 145
    :try_start_3
    const-string v0, "Your activity class has no replayVideo method"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    :catch_2
    move-exception v0

    .line 147
    const-string v0, "Couldn\'t run replayVideo method in your Activity"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_5
    const-string v2, "mfox:playvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-eqz v2, :cond_6

    .line 153
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 154
    const-string v2, "playVideo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 155
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 156
    :catch_3
    move-exception v0

    .line 157
    :try_start_5
    const-string v0, "Your activity class has no playVideo method"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :catch_4
    move-exception v0

    .line 159
    const-string v0, "Couldn\'t run replayVideo method in your Activity"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :cond_6
    const-string v2, "mfox:skip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 164
    invoke-virtual {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->finish()V

    goto/16 :goto_0

    .line 167
    :cond_7
    iget-object v1, p0, Lcom/adsdk/sdk/video/NavIcon;->mIcon:Lcom/adsdk/sdk/video/NavIconData;

    iget-object v1, v1, Lcom/adsdk/sdk/video/NavIconData;->clickUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/RichMediaActivity;->navigate(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

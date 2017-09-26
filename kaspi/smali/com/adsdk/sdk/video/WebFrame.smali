.class public Lcom/adsdk/sdk/video/WebFrame;
.super Landroid/widget/FrameLayout;
.source "WebFrame.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;
    }
.end annotation


# static fields
.field private static mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

.field private static mWebView_SetLayerType:Ljava/lang/reflect/Method;


# instance fields
.field private enableZoom:Z

.field private mActivity:Landroid/app/Activity;

.field private mExitButton:Landroid/widget/ImageView;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lcom/adsdk/sdk/video/WebFrame;->initCompatibility()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZZ)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 95
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v4, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    .line 96
    invoke-static {}, Lcom/adsdk/sdk/video/WebFrame;->initCompatibility()V

    .line 97
    iput-object p1, p0, Lcom/adsdk/sdk/video/WebFrame;->mActivity:Landroid/app/Activity;

    .line 98
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    .line 99
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 102
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/adsdk/sdk/video/WebFrame;->setLayer(Landroid/webkit/WebView;)V

    .line 103
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 105
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 106
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 107
    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 108
    iget-boolean v1, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 109
    iget-boolean v1, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 111
    new-instance v0, Lcom/adsdk/sdk/video/WebViewClient;

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p2}, Lcom/adsdk/sdk/video/WebViewClient;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    .line 112
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 115
    if-eqz p4, :cond_0

    .line 116
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 118
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 120
    invoke-direct {v1, v2, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 118
    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 123
    invoke-direct {v1, v2, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    .line 125
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 126
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/adsdk/sdk/video/WebFrame$1;

    invoke-direct {v1, p0, p1}, Lcom/adsdk/sdk/video/WebFrame$1;-><init>(Lcom/adsdk/sdk/video/WebFrame;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const/high16 v0, 0x420c0000    # 35.0f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/WebFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 134
    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 138
    iget-object v1, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    .line 139
    const/16 v2, -0x12

    invoke-static {p1, v2}, Lcom/adsdk/sdk/video/ResourceManager;->getStaticResource(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 142
    const/16 v2, 0x35

    .line 140
    invoke-direct {v1, v0, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 145
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p0}, Lcom/adsdk/sdk/video/WebFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 144
    invoke-static {v4, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 147
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 148
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 149
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mExitButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 154
    invoke-direct {v1, v2, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/adsdk/sdk/video/WebFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/WebFrame;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/adsdk/sdk/video/WebFrame;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/video/WebFrame;)Lcom/adsdk/sdk/video/WebViewClient;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/video/WebFrame;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initCompatibility()V
    .locals 6

    .prologue
    .line 53
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 60
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set layer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/adsdk/sdk/video/WebFrame;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 61
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "LAYER_TYPE_SOFTWARE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/adsdk/sdk/video/WebFrame;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set1 layer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/adsdk/sdk/video/WebFrame;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 71
    :goto_2
    return-void

    .line 53
    :cond_0
    aget-object v3, v1, v0

    .line 54
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setLayerType"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    sput-object v3, Lcom/adsdk/sdk/video/WebFrame;->mWebView_SetLayerType:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 64
    :catch_0
    move-exception v0

    .line 66
    const-string v0, "SecurityException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_2

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 69
    const-string v0, "NoSuchFieldException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static setLayer(Landroid/webkit/WebView;)V
    .locals 5

    .prologue
    .line 74
    sget-object v0, Lcom/adsdk/sdk/video/WebFrame;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adsdk/sdk/video/WebFrame;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    const-string v0, "Set Layer is supported"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/adsdk/sdk/video/WebFrame;->mWebView_SetLayerType:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/adsdk/sdk/video/WebFrame;->mWebView_LAYER_TYPE_SOFTWARE:Ljava/lang/reflect/Field;

    const-class v4, Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 89
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v0, "Set InvocationTargetException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :catch_1
    move-exception v0

    .line 81
    const-string v0, "Set IllegalArgumentException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :catch_2
    move-exception v0

    .line 83
    const-string v0, "Set IllegalAccessException"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_0
    const-string v0, "Set Layer is not supported"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public isEnableZoom()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 160
    new-instance v0, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;

    invoke-direct {v0, p0}, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;-><init>(Lcom/adsdk/sdk/video/WebFrame;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/video/WebFrame$LoadUrlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 161
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/video/WebFrame;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 172
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 173
    return-void
.end method

.method public setEnableZoom(Z)V
    .locals 1

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/adsdk/sdk/video/WebFrame;->enableZoom:Z

    .line 281
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 282
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 283
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 284
    return-void
.end method

.method public setMarkup(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 164
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adsdk/sdk/video/WebViewClient;->setAllowedUrl(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebView:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v1, v0, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public setOnPageLoadedListener(Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;)V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/adsdk/sdk/video/WebFrame;->mWebViewClient:Lcom/adsdk/sdk/video/WebViewClient;

    invoke-virtual {v0, p1}, Lcom/adsdk/sdk/video/WebViewClient;->setOnPageLoadedListener(Lcom/adsdk/sdk/video/WebViewClient$OnPageLoadedListener;)V

    .line 273
    return-void
.end method

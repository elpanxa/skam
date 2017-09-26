.class public Lcom/adsdk/sdk/mraid/MraidBrowser;
.super Landroid/app/Activity;
.source "MraidBrowser.java"


# static fields
.field public static final INNER_LAYOUT_ID:I = 0x1

.field public static final URL_EXTRA:Ljava/lang/String; = "extra_url"


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mCloseButton:Landroid/widget/ImageButton;

.field private mForwardButton:Landroid/widget/ImageButton;

.field private mRefreshButton:Landroid/widget/ImageButton;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/mraid/MraidBrowser;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mForwardButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsdk/sdk/mraid/MraidBrowser;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mBackButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsdk/sdk/mraid/MraidBrowser;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private enableCookies()V
    .locals 1

    .prologue
    .line 203
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 204
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 205
    return-void
.end method

.method private getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 259
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 261
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 262
    const/16 v2, 0x10

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 263
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    return-object v0
.end method

.method private getMraidBrowserView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, -0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 221
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 222
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 226
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 227
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 228
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 231
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 232
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setId(I)V

    .line 233
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 234
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 235
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    sget-object v3, Lcom/adsdk/sdk/mraid/Drawables;->BACKGROUND:Lcom/adsdk/sdk/mraid/Drawables;

    invoke-virtual {v3, p0}, Lcom/adsdk/sdk/mraid/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 239
    sget-object v3, Lcom/adsdk/sdk/mraid/Drawables;->LEFT_ARROW:Lcom/adsdk/sdk/mraid/Drawables;

    invoke-virtual {v3, p0}, Lcom/adsdk/sdk/mraid/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/adsdk/sdk/mraid/MraidBrowser;->getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v3

    iput-object v3, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mBackButton:Landroid/widget/ImageButton;

    .line 240
    sget-object v3, Lcom/adsdk/sdk/mraid/Drawables;->RIGHT_ARROW:Lcom/adsdk/sdk/mraid/Drawables;

    invoke-virtual {v3, p0}, Lcom/adsdk/sdk/mraid/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/adsdk/sdk/mraid/MraidBrowser;->getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v3

    iput-object v3, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mForwardButton:Landroid/widget/ImageButton;

    .line 241
    sget-object v3, Lcom/adsdk/sdk/mraid/Drawables;->REFRESH:Lcom/adsdk/sdk/mraid/Drawables;

    invoke-virtual {v3, p0}, Lcom/adsdk/sdk/mraid/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/adsdk/sdk/mraid/MraidBrowser;->getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v3

    iput-object v3, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mRefreshButton:Landroid/widget/ImageButton;

    .line 242
    sget-object v3, Lcom/adsdk/sdk/mraid/Drawables;->CLOSE:Lcom/adsdk/sdk/mraid/Drawables;

    invoke-virtual {v3, p0}, Lcom/adsdk/sdk/mraid/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/adsdk/sdk/mraid/MraidBrowser;->getButton(Landroid/graphics/drawable/Drawable;)Landroid/widget/ImageButton;

    move-result-object v3

    iput-object v3, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mCloseButton:Landroid/widget/ImageButton;

    .line 244
    iget-object v3, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    iget-object v3, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 246
    iget-object v3, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mRefreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object v3, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 249
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mWebView:Landroid/webkit/WebView;

    .line 250
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 251
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 252
    iget-object v3, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object v2, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 255
    return-object v0
.end method

.method private initializeButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 174
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidBrowser$3;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidBrowser$3;-><init>(Lcom/adsdk/sdk/mraid/MraidBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 181
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mForwardButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidBrowser$4;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidBrowser$4;-><init>(Lcom/adsdk/sdk/mraid/MraidBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mRefreshButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 188
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mRefreshButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidBrowser$5;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidBrowser$5;-><init>(Lcom/adsdk/sdk/mraid/MraidBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 195
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidBrowser$6;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidBrowser$6;-><init>(Lcom/adsdk/sdk/mraid/MraidBrowser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void
.end method

.method private initializeWebView(Landroid/content/Intent;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 95
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 103
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 107
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mWebView:Landroid/webkit/WebView;

    const-string v1, "extra_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidBrowser$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidBrowser$1;-><init>(Lcom/adsdk/sdk/mraid/MraidBrowser;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 162
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidBrowser;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsdk/sdk/mraid/MraidBrowser$2;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/mraid/MraidBrowser$2;-><init>(Lcom/adsdk/sdk/mraid/MraidBrowser;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 170
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 83
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 85
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->getMraidBrowserView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->setContentView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->initializeWebView(Landroid/content/Intent;)V

    .line 89
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->initializeButtons()V

    .line 90
    invoke-direct {p0}, Lcom/adsdk/sdk/mraid/MraidBrowser;->enableCookies()V

    .line 91
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 210
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 211
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 216
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 217
    return-void
.end method

.class public Lcom/startapp/android/publish/c/c;
.super Lcom/startapp/android/publish/c/b;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/c/c$a;
    }
.end annotation


# instance fields
.field protected c:Landroid/webkit/WebView;

.field protected d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/startapp/android/publish/c/b;-><init>()V

    .line 28
    new-instance v0, Lcom/startapp/android/publish/c/c$1;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/c/c$1;-><init>(Lcom/startapp/android/publish/c/c;)V

    iput-object v0, p0, Lcom/startapp/android/publish/c/c;->d:Ljava/lang/Runnable;

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/startapp/android/publish/c/c;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/c/c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->h()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge p2, v2, :cond_0

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->h()[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, p2

    :goto_0
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->i()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge p2, v2, :cond_1

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->i()[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, p2

    :goto_1
    new-instance v5, Lcom/startapp/android/publish/h/s;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/startapp/android/publish/model/MetaData;->getInstance()Lcom/startapp/android/publish/model/MetaData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/MetaData;->getSmartRedirectTimeout()J

    move-result-wide v6

    new-instance v8, Lcom/startapp/android/publish/c/c$4;

    invoke-direct {v8, p0}, Lcom/startapp/android/publish/c/c$4;-><init>(Lcom/startapp/android/publish/c/c;)V

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;JLjava/lang/Runnable;)V

    .line 185
    return-void

    :cond_0
    move-object v3, v0

    .line 172
    goto :goto_0

    :cond_1
    move-object v4, v0

    goto :goto_1
.end method

.method static synthetic b(Lcom/startapp/android/publish/c/c;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/startapp/android/publish/c/c;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.OnClickCallback"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Intent;)Z

    .line 190
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->h()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->h()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    :goto_0
    new-instance v2, Lcom/startapp/android/publish/h/s;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v0, v2}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 192
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->m()V

    .line 193
    return-void

    .line 190
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/startapp/android/publish/c/b;->a(Landroid/os/Bundle;)V

    .line 37
    if-eqz p1, :cond_0

    const-string v0, "postrollHtml"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "postrollHtml"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/c/c;->a(Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/startapp/android/publish/c/c$3;

    invoke-direct {v0, p0}, Lcom/startapp/android/publish/c/c$3;-><init>(Lcom/startapp/android/publish/c/c;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    return-void
.end method

.method protected varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    invoke-static {v0, p1, p2}, Lcom/startapp/android/publish/h/u;->a(Landroid/webkit/WebView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/startapp/android/publish/c/b;->b(Landroid/os/Bundle;)V

    .line 45
    const-string v0, "postrollHtml"

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected b(Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0}, Lcom/startapp/android/publish/c/b;->m()V

    .line 197
    invoke-static {}, Lcom/startapp/android/publish/StartAppSDK;->getInstance()Lcom/startapp/android/publish/StartAppSDK;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapp/android/publish/StartAppSDK;->setShowingAd(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->b()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/startapp/android/publish/c/c$5;

    invoke-direct {v1, p0}, Lcom/startapp/android/publish/c/c$5;-><init>(Lcom/startapp/android/publish/c/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public r()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 49
    iget-object v0, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 50
    invoke-static {}, Lcom/startapp/android/publish/StartAppSDK;->getInstance()Lcom/startapp/android/publish/StartAppSDK;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/startapp/android/publish/StartAppSDK;->setShowingAd(Z)V

    .line 52
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v1, "StartApp Ad"

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    const/high16 v1, 0x57f00000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 55
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 58
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    .line 60
    iget-object v1, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 61
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x777777

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    iget-object v1, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 63
    iget-object v1, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 64
    iget-object v1, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    iget-object v1, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/startapp/android/publish/h/b;->a(Landroid/webkit/WebView;)V

    .line 67
    iget-object v1, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 69
    iget-boolean v1, p0, Lcom/startapp/android/publish/c/c;->b:Z

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    invoke-static {v1, v6}, Lcom/startapp/android/publish/h/b;->a(Landroid/webkit/WebView;Landroid/graphics/Paint;)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/startapp/android/publish/c/c$2;

    invoke-direct {v2, p0}, Lcom/startapp/android/publish/c/c$2;-><init>(Lcom/startapp/android/publish/c/c;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 81
    iget-object v1, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->u()Lcom/startapp/android/publish/JsInterface;

    move-result-object v2

    const-string v3, "startappwall"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->v()V

    .line 85
    iget-object v1, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    invoke-virtual {p0, v1}, Lcom/startapp/android/publish/c/c;->a(Landroid/webkit/WebView;)V

    .line 87
    iget-object v1, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/h/u;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    new-instance v2, Lcom/startapp/android/publish/c/c$a;

    invoke-direct {v2, p0, v6}, Lcom/startapp/android/publish/c/c$a;-><init>(Lcom/startapp/android/publish/c/c;Lcom/startapp/android/publish/c/c$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 91
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 95
    iget-object v2, p0, Lcom/startapp/android/publish/c/c;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/c/c;->a(Landroid/widget/RelativeLayout;)V

    .line 99
    :cond_1
    return-void
.end method

.method protected u()Lcom/startapp/android/publish/JsInterface;
    .locals 6

    .prologue
    .line 102
    new-instance v0, Lcom/startapp/android/publish/JsInterface;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/android/publish/c/c;->d:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/startapp/android/publish/c/c;->d:Ljava/lang/Runnable;

    new-instance v4, Lcom/startapp/android/publish/h/s;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->l()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/startapp/android/publish/JsInterface;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/startapp/android/publish/h/s;)V

    return-object v0
.end method

.method protected v()V
    .locals 4

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->g()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/startapp/android/publish/h/s;

    invoke-virtual {p0}, Lcom/startapp/android/publish/c/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/startapp/android/publish/h/s;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/u;->a(Landroid/content/Context;[Ljava/lang/String;Lcom/startapp/android/publish/h/s;)V

    .line 107
    return-void
.end method

.method protected w()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

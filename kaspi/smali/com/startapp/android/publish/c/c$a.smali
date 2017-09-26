.class Lcom/startapp/android/publish/c/c$a;
.super Landroid/webkit/WebViewClient;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/startapp/android/publish/c/c;


# direct methods
.method private constructor <init>(Lcom/startapp/android/publish/c/c;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/startapp/android/publish/c/c$a;->a:Lcom/startapp/android/publish/c/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/startapp/android/publish/c/c;Lcom/startapp/android/publish/c/c$1;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/startapp/android/publish/c/c$a;-><init>(Lcom/startapp/android/publish/c/c;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/startapp/android/publish/c/c$a;->a:Lcom/startapp/android/publish/c/c;

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/c/c;->b(Landroid/webkit/WebView;)V

    .line 134
    iget-object v0, p0, Lcom/startapp/android/publish/c/c$a;->a:Lcom/startapp/android/publish/c/c;

    const-string v1, "gClientInterface.setMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/startapp/android/publish/c/c$a;->a:Lcom/startapp/android/publish/c/c;

    invoke-virtual {v4}, Lcom/startapp/android/publish/c/c;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/c/c;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/startapp/android/publish/c/c$a;->a:Lcom/startapp/android/publish/c/c;

    invoke-virtual {v0}, Lcom/startapp/android/publish/c/c;->w()V

    .line 136
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 140
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyWebViewClient::shouldOverrideUrlLoading - ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    .line 142
    const-string v1, "index="

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    :try_start_0
    invoke-static {p2}, Lcom/startapp/android/publish/h/u;->a(Ljava/lang/String;)I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/startapp/android/publish/c/c$a;->a:Lcom/startapp/android/publish/c/c;

    invoke-virtual {v2}, Lcom/startapp/android/publish/c/c;->d()[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/startapp/android/publish/c/c$a;->a:Lcom/startapp/android/publish/c/c;

    invoke-static {v2, p2, v1}, Lcom/startapp/android/publish/c/c;->a(Lcom/startapp/android/publish/c/c;Ljava/lang/String;I)V

    .line 166
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/startapp/android/publish/c/c$a;->a:Lcom/startapp/android/publish/c/c;

    invoke-static {v2, p2, v1}, Lcom/startapp/android/publish/c/c;->b(Lcom/startapp/android/publish/c/c;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    const/4 v1, 0x6

    const-string v2, "Error while trying parsing index from url"

    invoke-static {v1, v2}, Lcom/startapp/android/publish/h/k;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/startapp/android/publish/c/c$a;->a:Lcom/startapp/android/publish/c/c;

    invoke-virtual {v1}, Lcom/startapp/android/publish/c/c;->d()[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/startapp/android/publish/c/c$a;->a:Lcom/startapp/android/publish/c/c;

    invoke-static {v1, p2, v0}, Lcom/startapp/android/publish/c/c;->a(Lcom/startapp/android/publish/c/c;Ljava/lang/String;I)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/startapp/android/publish/c/c$a;->a:Lcom/startapp/android/publish/c/c;

    invoke-static {v1, p2, v0}, Lcom/startapp/android/publish/c/c;->b(Lcom/startapp/android/publish/c/c;Ljava/lang/String;I)V

    goto :goto_0
.end method

.class Lio/casper/android/i/q$2;
.super Ljava/lang/Object;
.source "StoriesFragment.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/q;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/casper/android/c/c/a/a",
        "<",
        "Lio/casper/android/n/a/c/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/q;

.field final synthetic val$request:Lio/casper/android/n/a/b/t;


# direct methods
.method constructor <init>(Lio/casper/android/i/q;Lio/casper/android/n/a/b/t;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lio/casper/android/i/q$2;->this$0:Lio/casper/android/i/q;

    iput-object p2, p0, Lio/casper/android/i/q$2;->val$request:Lio/casper/android/n/a/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/j;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    iget-object v0, p0, Lio/casper/android/i/q$2;->this$0:Lio/casper/android/i/q;

    invoke-static {v0}, Lio/casper/android/i/q;->a(Lio/casper/android/i/q;)Lio/casper/android/l/u;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/casper/android/l/u;->a(Lio/casper/android/n/a/c/j;)V

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {p2}, Lio/casper/android/n/a/c/j;->a()Ljava/util/List;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 107
    new-instance v1, Lio/casper/android/m/a;

    invoke-direct {v1, v0}, Lio/casper/android/m/a;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    invoke-virtual {p2}, Lio/casper/android/n/a/c/j;->b()Ljava/util/List;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_3

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/j;

    .line 114
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/j;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/casper/android/n/a/c/b/k;

    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/k;->a()Lio/casper/android/n/a/c/b/x;

    move-result-object v1

    .line 116
    iget-object v4, p0, Lio/casper/android/i/q$2;->this$0:Lio/casper/android/i/q;

    invoke-static {v4}, Lio/casper/android/i/q;->b(Lio/casper/android/i/q;)Lio/casper/android/l/r;

    move-result-object v4

    invoke-virtual {v4}, Lio/casper/android/l/r;->l()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    invoke-virtual {v1}, Lio/casper/android/n/a/c/b/x;->r()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    new-instance v1, Lio/casper/android/m/a;

    invoke-direct {v1, v0}, Lio/casper/android/m/a;-><init>(Lio/casper/android/n/a/c/b/j;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_2
    new-instance v1, Lio/casper/android/m/a;

    invoke-direct {v1, v0}, Lio/casper/android/m/a;-><init>(Lio/casper/android/n/a/c/b/j;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Lio/casper/android/i/q$2;->this$0:Lio/casper/android/i/q;

    invoke-static {v0}, Lio/casper/android/i/q;->c(Lio/casper/android/i/q;)Lio/casper/android/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/a/a/h;->d()V

    .line 128
    iget-object v0, p0, Lio/casper/android/i/q$2;->this$0:Lio/casper/android/i/q;

    invoke-virtual {v0, v2, v6}, Lio/casper/android/i/q;->a(Ljava/util/List;Z)V

    .line 130
    iget-object v0, p0, Lio/casper/android/i/q$2;->this$0:Lio/casper/android/i/q;

    invoke-static {v0}, Lio/casper/android/i/q;->d(Lio/casper/android/i/q;)Lio/casper/android/l/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/b;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/casper/android/i/q$2;->this$0:Lio/casper/android/i/q;

    invoke-static {v0}, Lio/casper/android/i/q;->e(Lio/casper/android/i/q;)Lio/casper/android/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/a;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 132
    new-instance v0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;

    iget-object v1, p0, Lio/casper/android/i/q$2;->this$0:Lio/casper/android/i/q;

    invoke-static {v1}, Lio/casper/android/i/q;->f(Lio/casper/android/i/q;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v1, Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    invoke-direct {v1}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;-><init>()V

    .line 134
    invoke-virtual {v1, v6}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    .line 135
    invoke-virtual {v1, v5}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setAutoBitmapDownload(Z)Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    .line 136
    sget-object v2, Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;->SIZE150X150:Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setImageSize(Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;)Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    .line 137
    new-instance v1, Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    invoke-direct {v1}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;-><init>()V

    new-instance v2, Lio/casper/android/i/q$2$1;

    invoke-direct {v2, p0, v0}, Lio/casper/android/i/q$2$1;-><init>(Lio/casper/android/i/q$2;Lcom/startapp/android/publish/nativead/StartAppNativeAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/android/publish/nativead/NativeAdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    .line 156
    :cond_4
    iget-object v0, p0, Lio/casper/android/i/q$2;->this$0:Lio/casper/android/i/q;

    invoke-virtual {v0, v5}, Lio/casper/android/i/q;->a(Z)V

    .line 158
    return-void
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p2, Lio/casper/android/n/a/c/j;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/i/q$2;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/j;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 163
    .line 164
    iget-object v0, p0, Lio/casper/android/i/q$2;->this$0:Lio/casper/android/i/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/casper/android/i/q;->a(Z)V

    .line 166
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/i/q$2;->this$0:Lio/casper/android/i/q;

    invoke-static {v1}, Lio/casper/android/i/q;->f(Lio/casper/android/i/q;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 168
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 169
    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 170
    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 171
    new-instance v1, Lio/casper/android/i/q$2$2;

    invoke-direct {v1, p0, p0}, Lio/casper/android/i/q$2$2;-><init>(Lio/casper/android/i/q$2;Lio/casper/android/c/c/a/a;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 178
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 180
    return-void
.end method

.class Lio/casper/android/i/p$7;
.super Ljava/lang/Object;
.source "SnapsFragment.java"

# interfaces
.implements Lio/casper/android/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/i/p;->a()V
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
        "Lio/casper/android/n/a/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/i/p;

.field final synthetic val$conversationsRequest:Lio/casper/android/n/a/b/g;


# direct methods
.method constructor <init>(Lio/casper/android/i/p;Lio/casper/android/n/a/b/g;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    iput-object p2, p0, Lio/casper/android/i/p$7;->val$conversationsRequest:Lio/casper/android/n/a/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/d;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v0, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-static {v0}, Lio/casper/android/i/p;->f(Lio/casper/android/i/p;)Lio/casper/android/l/u;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/casper/android/l/u;->a(Lio/casper/android/n/a/c/d;)V

    .line 233
    iget-object v0, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-virtual {v0, v3}, Lio/casper/android/i/p;->a(Z)V

    .line 235
    iget-object v0, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-static {v0}, Lio/casper/android/i/p;->g(Lio/casper/android/i/p;)Lio/casper/android/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/a/a/g;->d()V

    .line 236
    iget-object v0, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-static {v0, v3}, Lio/casper/android/i/p;->a(Lio/casper/android/i/p;Z)Z

    .line 238
    iget-object v0, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-virtual {v0}, Lio/casper/android/i/p;->b()V

    .line 240
    iget-object v0, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-static {v0}, Lio/casper/android/i/p;->h(Lio/casper/android/i/p;)Lio/casper/android/l/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-static {v0}, Lio/casper/android/i/p;->i(Lio/casper/android/i/p;)Lio/casper/android/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/casper/android/l/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Lcom/startapp/android/publish/nativead/StartAppNativeAd;

    iget-object v1, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-static {v1}, Lio/casper/android/i/p;->b(Lio/casper/android/i/p;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;-><init>(Landroid/content/Context;)V

    .line 243
    new-instance v1, Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    invoke-direct {v1}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;-><init>()V

    .line 244
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    .line 245
    invoke-virtual {v1, v3}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setAutoBitmapDownload(Z)Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    .line 246
    sget-object v2, Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;->SIZE150X150:Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;

    invoke-virtual {v1, v2}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;->setImageSize(Lcom/startapp/android/publish/nativead/NativeAdPreferences$NativeAdBitmapSize;)Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    .line 247
    new-instance v1, Lcom/startapp/android/publish/nativead/NativeAdPreferences;

    invoke-direct {v1}, Lcom/startapp/android/publish/nativead/NativeAdPreferences;-><init>()V

    new-instance v2, Lio/casper/android/i/p$7$1;

    invoke-direct {v2, p0, v0}, Lio/casper/android/i/p$7$1;-><init>(Lio/casper/android/i/p$7;Lcom/startapp/android/publish/nativead/StartAppNativeAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/startapp/android/publish/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/android/publish/nativead/NativeAdPreferences;Lcom/startapp/android/publish/AdEventListener;)Z

    .line 267
    :cond_0
    invoke-virtual {p2}, Lio/casper/android/n/a/c/d;->c()Ljava/util/List;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_1

    .line 270
    iget-object v1, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-virtual {v1, v0}, Lio/casper/android/i/p;->a(Ljava/util/List;)V

    .line 275
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lio/casper/android/n/a/c/d;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/f;

    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/f;->f()Lio/casper/android/n/a/c/b/w;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lio/casper/android/n/a/c/b/w;->d()Ljava/lang/String;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-static {v1}, Lio/casper/android/i/p;->j(Lio/casper/android/i/p;)Lio/casper/android/l/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/casper/android/l/o;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 279
    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/squareup/okhttp/Response;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 226
    check-cast p2, Lio/casper/android/n/a/c/d;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/i/p$7;->a(Lcom/squareup/okhttp/Response;Lio/casper/android/n/a/c/d;)V

    return-void
.end method

.method public a(Lcom/squareup/okhttp/Response;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-virtual {v0, v1}, Lio/casper/android/i/p;->a(Z)V

    .line 289
    iget-object v0, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-static {v0, v1}, Lio/casper/android/i/p;->a(Lio/casper/android/i/p;Z)Z

    .line 293
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-static {v1}, Lio/casper/android/i/p;->b(Lio/casper/android/i/p;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 294
    const v1, 0x7f0701a1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 295
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 296
    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 297
    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 298
    new-instance v1, Lio/casper/android/i/p$7$2;

    invoke-direct {v1, p0, p0}, Lio/casper/android/i/p$7$2;-><init>(Lio/casper/android/i/p$7;Lio/casper/android/c/c/a/a;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->callback(Lcom/afollestad/materialdialogs/MaterialDialog$ButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 305
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 307
    iget-object v0, p0, Lio/casper/android/i/p$7;->this$0:Lio/casper/android/i/p;

    invoke-virtual {v0}, Lio/casper/android/i/p;->b()V

    .line 309
    return-void
.end method

.class Lio/casper/android/l/i$2;
.super Ljava/lang/Object;
.source "GoogleAuthManager.java"

# interfaces
.implements Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/casper/android/l/i;->a(Ljava/lang/String;Ljava/lang/String;Lio/casper/android/l/i$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liamcottle/lib/okhttpwrapper/response/callback/ResponseCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/casper/android/l/i;

.field final synthetic val$callback:Lio/casper/android/l/i$a;


# direct methods
.method constructor <init>(Lio/casper/android/l/i;Lio/casper/android/l/i$a;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lio/casper/android/l/i$2;->this$0:Lio/casper/android/l/i;

    iput-object p2, p0, Lio/casper/android/l/i$2;->val$callback:Lio/casper/android/l/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 165
    const-string v2, "\\n"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 170
    array-length v5, v4

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v6, v4, v3

    .line 172
    const-string v7, "Error"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v2, v1

    .line 170
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_1
    const-string v7, "Auth"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 176
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lio/casper/android/l/i$2;->this$0:Lio/casper/android/l/i;

    invoke-virtual {v1, v0}, Lio/casper/android/l/i;->c(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lio/casper/android/l/i$2;->this$0:Lio/casper/android/l/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lio/casper/android/l/i$2;->this$0:Lio/casper/android/l/i;

    invoke-virtual {v4}, Lio/casper/android/l/i;->f()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lio/casper/android/l/i;->a(J)V

    .line 181
    iget-object v1, p0, Lio/casper/android/l/i$2;->val$callback:Lio/casper/android/l/i$a;

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lio/casper/android/l/i$2;->val$callback:Lio/casper/android/l/i$a;

    invoke-interface {v1, v0}, Lio/casper/android/l/i$a;->a(Ljava/lang/String;)V

    .line 205
    :cond_2
    :goto_2
    return-void

    .line 187
    :cond_3
    const-string v7, "Info=WebLoginRequired"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v1

    .line 188
    goto :goto_1

    .line 193
    :cond_4
    if-eqz v2, :cond_2

    .line 195
    if-eqz v0, :cond_5

    .line 196
    iget-object v0, p0, Lio/casper/android/l/i$2;->this$0:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->k()V

    .line 197
    sget-object v0, Lio/casper/android/k/b;->GOOGLE_AUTHENTICATION_NEEDS_LESS_SECURE:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    invoke-virtual {p0, v0}, Lio/casper/android/l/i$2;->onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V

    goto :goto_2

    .line 199
    :cond_5
    iget-object v0, p0, Lio/casper/android/l/i$2;->this$0:Lio/casper/android/l/i;

    invoke-virtual {v0}, Lio/casper/android/l/i;->k()V

    .line 200
    sget-object v0, Lio/casper/android/k/b;->GOOGLE_AUTHENTICATION_ERROR:Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;

    invoke-virtual {p0, v0}, Lio/casper/android/l/i$2;->onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V

    goto :goto_2
.end method

.method public onFailure(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lio/casper/android/l/i$2;->val$callback:Lio/casper/android/l/i$a;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lio/casper/android/l/i$2;->val$callback:Lio/casper/android/l/i$a;

    invoke-interface {v0, p1}, Lio/casper/android/l/i$a;->a(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;)V

    .line 214
    :cond_0
    return-void
.end method

.method public synthetic onSuccess(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/casper/android/l/i$2;->a(Lcom/liamcottle/lib/okhttpwrapper/response/ResponseStatus;Ljava/lang/String;)V

    return-void
.end method

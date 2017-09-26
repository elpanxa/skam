.class public Lio/casper/android/n/a/c/i;
.super Lio/casper/android/n/a/c/a/a;
.source "LoginResponse.java"


# instance fields
.field private background_fetch_secret_key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "background_fetch_secret_key"
    .end annotation
.end field

.field private conversations_response:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversations_response"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/f;",
            ">;"
        }
    .end annotation
.end field

.field private dtoken1i:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dtoken1i"
    .end annotation
.end field

.field private dtoken1v:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dtoken1v"
    .end annotation
.end field

.field private friends_response:Lio/casper/android/n/a/c/g;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "friends_response"
    .end annotation
.end field

.field private get_channels:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "get_channels"
    .end annotation
.end field

.field private messaging_gateway_info:Lio/casper/android/n/a/c/b/s;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messaging_gateway_info"
    .end annotation
.end field

.field private phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_number"
    .end annotation
.end field

.field private preAuthToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pre_auth_token"
    .end annotation
.end field

.field private secInfo:Lio/casper/android/n/a/c/b/u;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sec_info"
    .end annotation
.end field

.field private server_info:Lio/casper/android/n/a/c/b/v;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server_info"
    .end annotation
.end field

.field private stories_response:Lio/casper/android/n/a/c/j;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stories_response"
    .end annotation
.end field

.field private twoFactorAuthNeeded:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "two_fa_needed"
    .end annotation
.end field

.field private updates_response:Lio/casper/android/n/a/c/k;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updates_response"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lio/casper/android/n/a/c/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/casper/android/n/a/c/k;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/casper/android/n/a/c/i;->updates_response:Lio/casper/android/n/a/c/k;

    return-object v0
.end method

.method public b()Lio/casper/android/n/a/c/g;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lio/casper/android/n/a/c/i;->friends_response:Lio/casper/android/n/a/c/g;

    return-object v0
.end method

.method public c()Lio/casper/android/n/a/c/j;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lio/casper/android/n/a/c/i;->stories_response:Lio/casper/android/n/a/c/j;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lio/casper/android/n/a/c/b/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lio/casper/android/n/a/c/i;->conversations_response:Ljava/util/List;

    return-object v0
.end method

.method public e()Lio/casper/android/n/a/c/b/s;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lio/casper/android/n/a/c/i;->messaging_gateway_info:Lio/casper/android/n/a/c/b/s;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lio/casper/android/n/a/c/i;->dtoken1i:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lio/casper/android/n/a/c/i;->dtoken1v:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lio/casper/android/n/a/c/i;->twoFactorAuthNeeded:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lio/casper/android/n/a/c/i;->preAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lio/casper/android/n/a/c/i;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lio/casper/android/n/a/c/i;->dtoken1i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/casper/android/n/a/c/i;->dtoken1v:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lio/casper/android/n/a/c/b/u;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lio/casper/android/n/a/c/i;->secInfo:Lio/casper/android/n/a/c/b/u;

    return-object v0
.end method

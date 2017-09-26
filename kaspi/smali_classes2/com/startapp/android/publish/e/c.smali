.class public abstract Lcom/startapp/android/publish/e/c;
.super Lcom/startapp/android/publish/e/d;
.source "StartAppSDK"


# instance fields
.field private g:I

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/startapp/android/publish/e/d;-><init>(Landroid/content/Context;Lcom/startapp/android/publish/Ad;Lcom/startapp/android/publish/model/AdPreferences;Lcom/startapp/android/publish/AdEventListener;Lcom/startapp/android/publish/model/AdPreferences$Placement;)V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/startapp/android/publish/e/c;->g:I

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/e/c;->h:Ljava/util/Set;

    .line 38
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/startapp/android/publish/e/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/startapp/android/publish/e/c;->g:I

    .line 115
    invoke-virtual {p0}, Lcom/startapp/android/publish/e/c;->d()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/startapp/android/publish/e/c;->e()Lcom/startapp/android/publish/model/GetAdRequest;

    move-result-object v2

    .line 45
    iget-object v3, p0, Lcom/startapp/android/publish/e/c;->h:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 46
    iget-object v3, p0, Lcom/startapp/android/publish/e/c;->h:Ljava/util/Set;

    iget-object v4, p0, Lcom/startapp/android/publish/e/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_0
    iget v3, p0, Lcom/startapp/android/publish/e/c;->g:I

    if-lez v3, :cond_1

    .line 51
    invoke-virtual {v2, v0}, Lcom/startapp/android/publish/model/GetAdRequest;->setEngInclude(Z)V

    .line 56
    :cond_1
    iget-object v3, p0, Lcom/startapp/android/publish/e/c;->h:Ljava/util/Set;

    invoke-virtual {v2, v3}, Lcom/startapp/android/publish/model/GetAdRequest;->setPackageExclude(Ljava/util/Set;)V

    .line 57
    iget v3, p0, Lcom/startapp/android/publish/e/c;->g:I

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v2, v0}, Lcom/startapp/android/publish/model/GetAdRequest;->setEngInclude(Z)V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/e/c;->a:Landroid/content/Context;

    sget-object v3, Lcom/startapp/android/publish/d$a;->b:Lcom/startapp/android/publish/d$a;

    invoke-static {v3}, Lcom/startapp/android/publish/d;->a(Lcom/startapp/android/publish/d$a;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-class v5, Lcom/startapp/android/publish/model/GetAdResponse;

    invoke-static {v0, v3, v2, v4, v5}, Lcom/startapp/android/publish/g/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/android/publish/model/BaseRequest;Ljava/util/Map;Ljava/lang/Class;)Lcom/startapp/android/publish/model/BaseResponse;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/GetAdResponse;
    :try_end_0
    .catch Lcom/startapp/android/publish/h/p; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v2, "AppPresence"

    const/4 v3, 0x6

    const-string v4, "Unable to handle GetAdsSetService command!!!!"

    invoke-static {v2, v3, v4, v0}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    invoke-virtual {v0}, Lcom/startapp/android/publish/h/p;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/e/c;->f:Ljava/lang/String;

    move-object v0, v1

    .line 73
    goto :goto_0
.end method

.method protected a(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/AdDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 124
    const/4 v0, 0x0

    .line 126
    const-string v1, "AppPresence"

    const/4 v2, 0x3

    const-string v3, "in getAdsToDisplay"

    invoke-static {v1, v2, v3}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/AdDetails;

    .line 129
    new-instance v9, Lcom/startapp/android/publish/c;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getTrackingUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getAppPresencePackage()Ljava/lang/String;

    move-result-object v3

    iget v10, p0, Lcom/startapp/android/publish/e/c;->g:I

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getMinAppVersion()I

    move-result v11

    invoke-direct {v9, v2, v3, v10, v11}, Lcom/startapp/android/publish/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 130
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getAppPresencePackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getAppPresencePackage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move v3, v2

    .line 131
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getAppPresencePackage()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    :goto_2
    iget-object v10, p0, Lcom/startapp/android/publish/e/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getMinAppVersion()I

    move-result v11

    invoke-static {v10, v2, v11}, Lcom/startapp/android/publish/e/c;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v10

    .line 134
    if-eqz v10, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    if-nez v10, :cond_5

    if-eqz v3, :cond_5

    :cond_1
    const/4 v2, 0x1

    .line 136
    :goto_3
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    if-eqz v2, :cond_6

    .line 138
    invoke-virtual {v9, v10}, Lcom/startapp/android/publish/c;->b(Z)V

    .line 139
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/startapp/android/publish/c;->a(Z)V

    .line 140
    if-nez v3, :cond_2

    .line 141
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_2
    iget-object v1, p0, Lcom/startapp/android/publish/e/c;->h:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 146
    const-string v1, "AppPresence"

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App Presence:["

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 148
    const/4 v0, 0x1

    :goto_4
    move v1, v0

    .line 153
    goto/16 :goto_0

    .line 130
    :cond_3
    const/4 v2, 0x0

    move v3, v2

    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getAppPresencePackage()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 134
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 150
    :cond_6
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v2, "AppPresence"

    const/4 v3, 0x3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App Not Presence:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "]"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v1

    goto :goto_4

    .line 156
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    iget v0, p0, Lcom/startapp/android/publish/e/c;->g:I

    if-lez v0, :cond_9

    .line 158
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 159
    const/4 v2, 0x0

    invoke-interface {v5, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    const/4 v2, 0x0

    invoke-interface {v7, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/c;

    .line 162
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/startapp/android/publish/c;->a(Z)V

    goto :goto_5

    .line 166
    :cond_9
    if-eqz v1, :cond_a

    .line 168
    iget-object v0, p0, Lcom/startapp/android/publish/e/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/android/publish/h/u;->d(Landroid/content/Context;)V

    .line 171
    new-instance v0, Lcom/startapp/android/publish/e/a;

    iget-object v1, p0, Lcom/startapp/android/publish/e/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v6}, Lcom/startapp/android/publish/e/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/startapp/android/publish/e/a;->a()V

    .line 174
    :cond_a
    return-object v4
.end method

.method protected abstract a(Lcom/startapp/android/publish/Ad;)V
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/startapp/android/publish/e/d;->a(Ljava/lang/Boolean;)V

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.OnReceiveResponseBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    const-string v1, "adHashcode"

    iget-object v2, p0, Lcom/startapp/android/publish/e/c;->b:Lcom/startapp/android/publish/Ad;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    const-string v1, "adResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/startapp/android/publish/e/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Context;)Lcom/startapp/android/publish/h/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/android/publish/h/j;->a(Landroid/content/Intent;)Z

    .line 186
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/e/c;->b:Lcom/startapp/android/publish/Ad;

    check-cast v0, Lcom/startapp/android/publish/a/f;

    .line 190
    invoke-virtual {p0, v0}, Lcom/startapp/android/publish/e/c;->a(Lcom/startapp/android/publish/Ad;)V

    .line 192
    iget-object v0, p0, Lcom/startapp/android/publish/e/c;->d:Lcom/startapp/android/publish/AdEventListener;

    iget-object v1, p0, Lcom/startapp/android/publish/e/c;->b:Lcom/startapp/android/publish/Ad;

    invoke-interface {v0, v1}, Lcom/startapp/android/publish/AdEventListener;->onReceiveAd(Lcom/startapp/android/publish/Ad;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v2, 0x0

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/startapp/android/publish/model/GetAdResponse;

    .line 84
    if-nez p1, :cond_1

    .line 85
    const-string v0, "Empty Response"

    iput-object v0, p0, Lcom/startapp/android/publish/e/c;->f:Ljava/lang/String;

    .line 86
    const-string v0, "AppPresence"

    const-string v1, "Error Empty Response"

    invoke-static {v0, v4, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v2

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/GetAdResponse;->isValidResponse()Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/GetAdResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/e/c;->f:Ljava/lang/String;

    .line 91
    const-string v0, "AppPresence"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error msg = ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/startapp/android/publish/e/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    move v0, v2

    .line 92
    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/startapp/android/publish/e/c;->b:Lcom/startapp/android/publish/Ad;

    check-cast v1, Lcom/startapp/android/publish/a/f;

    .line 97
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/startapp/android/publish/e/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 98
    invoke-virtual {v1, v3}, Lcom/startapp/android/publish/a/f;->a(Ljava/util/List;)V

    .line 99
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/GetAdResponse;->getAdInfoOverride()Lcom/startapp/android/publish/adinformation/b;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/startapp/android/publish/a/f;->setAdInfoOverride(Lcom/startapp/android/publish/adinformation/b;)V

    .line 101
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/GetAdResponse;->getAdsDetails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    .line 103
    :goto_1
    if-nez v0, :cond_3

    .line 104
    const-string v1, "Empty Response"

    iput-object v1, p0, Lcom/startapp/android/publish/e/c;->f:Ljava/lang/String;

    .line 106
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/startapp/android/publish/e/c;->g:I

    if-nez v1, :cond_0

    .line 107
    const-string v0, "AppPresence"

    const/4 v1, 0x3

    const-string v2, "Packages exists - another request"

    invoke-static {v0, v1, v2}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/startapp/android/publish/e/c;->b()Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v2

    .line 101
    goto :goto_1
.end method

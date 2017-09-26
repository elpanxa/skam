.class public Lcom/startapp/android/publish/model/adrules/AdRules;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdRules"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private placements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/startapp/android/publish/model/AdPreferences$Placement;",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/adrules/AdRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient processedRuleTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/startapp/android/publish/model/adrules/AdRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private session:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/adrules/AdRule;",
            ">;"
        }
    .end annotation
.end field

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/adrules/AdRule;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/adrules/AdRules;->session:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/adrules/AdRules;->placements:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/adrules/AdRules;->tags:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/adrules/AdRules;->processedRuleTypes:Ljava/util/Set;

    .line 53
    return-void
.end method

.method private processRuleList(Ljava/util/List;Ljava/util/List;Lcom/startapp/android/publish/model/adrules/AdRuleLevel;Ljava/lang/String;)Lcom/startapp/android/publish/model/adrules/AdRulesResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/adrules/AdRule;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;",
            ">;",
            "Lcom/startapp/android/publish/model/adrules/AdRuleLevel;",
            "Ljava/lang/String;",
            ")",
            "Lcom/startapp/android/publish/model/adrules/AdRulesResult;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    invoke-direct {v0, v4}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;-><init>(Z)V

    .line 99
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/android/publish/model/adrules/AdRule;

    .line 89
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRule;->shouldProcessEntireHierarchy()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/startapp/android/publish/model/adrules/AdRules;->processedRuleTypes:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    :cond_2
    invoke-virtual {v0, p2}, Lcom/startapp/android/publish/model/adrules/AdRule;->shouldDisplayAd(Ljava/util/List;)Z

    move-result v2

    .line 93
    if-nez v2, :cond_4

    .line 94
    new-instance v1, Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/startapp/android/publish/d;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;-><init>(ZLjava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 96
    :cond_4
    iget-object v2, p0, Lcom/startapp/android/publish/model/adrules/AdRules;->processedRuleTypes:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 99
    :cond_5
    new-instance v0, Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    invoke-direct {v0, v4}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;-><init>(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getPlacementRules()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/startapp/android/publish/model/AdPreferences$Placement;",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/adrules/AdRule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/startapp/android/publish/model/adrules/AdRules;->placements:Ljava/util/Map;

    return-object v0
.end method

.method public getSessionRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/adrules/AdRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/startapp/android/publish/model/adrules/AdRules;->session:Ljava/util/List;

    return-object v0
.end method

.method public getTagRules()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/adrules/AdRule;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/startapp/android/publish/model/adrules/AdRules;->tags:Ljava/util/Map;

    return-object v0
.end method

.method public declared-synchronized shouldDisplayAd(Lcom/startapp/android/publish/model/AdPreferences$Placement;Ljava/lang/String;)Lcom/startapp/android/publish/model/adrules/AdRulesResult;
    .locals 6

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/startapp/android/publish/model/adrules/AdRules;->processedRuleTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 69
    iget-object v0, p0, Lcom/startapp/android/publish/model/adrules/AdRules;->tags:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getInstance()Lcom/startapp/android/publish/model/adrules/SessionManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getAdDisplayEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/model/adrules/AdRuleLevel;->TAG:Lcom/startapp/android/publish/model/adrules/AdRuleLevel;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/startapp/android/publish/model/adrules/AdRules;->processRuleList(Ljava/util/List;Ljava/util/List;Lcom/startapp/android/publish/model/adrules/AdRuleLevel;Ljava/lang/String;)Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->shouldDisplayAd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/startapp/android/publish/model/adrules/AdRules;->placements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getInstance()Lcom/startapp/android/publish/model/adrules/SessionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getAdDisplayEvents(Lcom/startapp/android/publish/model/AdPreferences$Placement;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/model/adrules/AdRuleLevel;->PLACEMENT:Lcom/startapp/android/publish/model/adrules/AdRuleLevel;

    invoke-virtual {p1}, Lcom/startapp/android/publish/model/AdPreferences$Placement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/startapp/android/publish/model/adrules/AdRules;->processRuleList(Ljava/util/List;Ljava/util/List;Lcom/startapp/android/publish/model/adrules/AdRuleLevel;Ljava/lang/String;)Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->shouldDisplayAd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    iget-object v0, p0, Lcom/startapp/android/publish/model/adrules/AdRules;->session:Ljava/util/List;

    invoke-static {}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getInstance()Lcom/startapp/android/publish/model/adrules/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/adrules/SessionManager;->getAdDisplayEvents()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/startapp/android/publish/model/adrules/AdRuleLevel;->SESSION:Lcom/startapp/android/publish/model/adrules/AdRuleLevel;

    const-string v3, "session"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/startapp/android/publish/model/adrules/AdRules;->processRuleList(Ljava/util/List;Ljava/util/List;Lcom/startapp/android/publish/model/adrules/AdRuleLevel;Ljava/lang/String;)Lcom/startapp/android/publish/model/adrules/AdRulesResult;

    move-result-object v0

    move-object v1, v0

    .line 76
    :goto_0
    const-string v2, "AdRules"

    const/4 v3, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldDisplayAd result: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->shouldDisplayAd()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->shouldDisplayAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/startapp/android/publish/h/k;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-object v1

    .line 76
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " because of rule "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/startapp/android/publish/model/adrules/AdRulesResult;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

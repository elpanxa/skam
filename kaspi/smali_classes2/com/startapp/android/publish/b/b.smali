.class public Lcom/startapp/android/publish/b/b;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private a:Lcom/startapp/android/publish/model/AdPreferences$Placement;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/startapp/android/publish/Ad$AdType;


# direct methods
.method public constructor <init>(Lcom/startapp/android/publish/model/AdPreferences$Placement;Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/startapp/android/publish/b/b;->d:Z

    .line 17
    iput-boolean v0, p0, Lcom/startapp/android/publish/b/b;->e:Z

    .line 18
    iput-boolean v0, p0, Lcom/startapp/android/publish/b/b;->f:Z

    .line 19
    iput-boolean v0, p0, Lcom/startapp/android/publish/b/b;->g:Z

    .line 20
    iput-boolean v0, p0, Lcom/startapp/android/publish/b/b;->h:Z

    .line 22
    iput-object v1, p0, Lcom/startapp/android/publish/b/b;->i:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/startapp/android/publish/b/b;->j:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/startapp/android/publish/b/b;->k:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/startapp/android/publish/b/b;->l:Lcom/startapp/android/publish/Ad$AdType;

    .line 29
    iput-object p1, p0, Lcom/startapp/android/publish/b/b;->a:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    .line 30
    invoke-virtual {p2}, Lcom/startapp/android/publish/model/AdPreferences;->getCategories()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/b/b;->b:Ljava/util/Set;

    .line 31
    invoke-virtual {p2}, Lcom/startapp/android/publish/model/AdPreferences;->getCategoriesExclude()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/b/b;->c:Ljava/util/Set;

    .line 33
    const-string v0, "forceOfferWall3D"

    invoke-static {p2, v0}, Lcom/startapp/android/publish/h/u;->a(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/b/b;->d:Z

    .line 34
    const-string v0, "forceOfferWall2D"

    invoke-static {p2, v0}, Lcom/startapp/android/publish/h/u;->a(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/b/b;->e:Z

    .line 35
    const-string v0, "forceFullpage"

    invoke-static {p2, v0}, Lcom/startapp/android/publish/h/u;->a(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/b/b;->f:Z

    .line 36
    const-string v0, "forceOverlay"

    invoke-static {p2, v0}, Lcom/startapp/android/publish/h/u;->a(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/b/b;->g:Z

    .line 37
    const-string v0, "testMode"

    invoke-static {p2, v0}, Lcom/startapp/android/publish/h/u;->a(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/android/publish/b/b;->h:Z

    .line 39
    const-string v0, "country"

    invoke-static {p2, v0}, Lcom/startapp/android/publish/h/u;->b(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/b/b;->i:Ljava/lang/String;

    .line 40
    const-string v0, "advertiserId"

    invoke-static {p2, v0}, Lcom/startapp/android/publish/h/u;->b(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/b/b;->j:Ljava/lang/String;

    .line 41
    const-string v0, "template"

    invoke-static {p2, v0}, Lcom/startapp/android/publish/h/u;->b(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/b/b;->k:Ljava/lang/String;

    .line 42
    const-string v0, "type"

    invoke-static {p2, v0}, Lcom/startapp/android/publish/h/u;->c(Lcom/startapp/android/publish/model/AdPreferences;Ljava/lang/String;)Lcom/startapp/android/publish/Ad$AdType;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/b/b;->l:Lcom/startapp/android/publish/Ad$AdType;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    if-ne p0, p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    check-cast p1, Lcom/startapp/android/publish/b/b;

    .line 92
    iget-object v2, p0, Lcom/startapp/android/publish/b/b;->j:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 93
    iget-object v2, p1, Lcom/startapp/android/publish/b/b;->j:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    iget-object v2, p0, Lcom/startapp/android/publish/b/b;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/startapp/android/publish/b/b;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    iget-object v2, p0, Lcom/startapp/android/publish/b/b;->b:Ljava/util/Set;

    if-nez v2, :cond_6

    .line 98
    iget-object v2, p1, Lcom/startapp/android/publish/b/b;->b:Ljava/util/Set;

    if-eqz v2, :cond_7

    move v0, v1

    .line 99
    goto :goto_0

    .line 100
    :cond_6
    iget-object v2, p0, Lcom/startapp/android/publish/b/b;->b:Ljava/util/Set;

    iget-object v3, p1, Lcom/startapp/android/publish/b/b;->b:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 101
    goto :goto_0

    .line 102
    :cond_7
    iget-object v2, p0, Lcom/startapp/android/publish/b/b;->c:Ljava/util/Set;

    if-nez v2, :cond_8

    .line 103
    iget-object v2, p1, Lcom/startapp/android/publish/b/b;->c:Ljava/util/Set;

    if-eqz v2, :cond_9

    move v0, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_8
    iget-object v2, p0, Lcom/startapp/android/publish/b/b;->c:Ljava/util/Set;

    iget-object v3, p1, Lcom/startapp/android/publish/b/b;->c:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 106
    goto :goto_0

    .line 107
    :cond_9
    iget-object v2, p0, Lcom/startapp/android/publish/b/b;->i:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 108
    iget-object v2, p1, Lcom/startapp/android/publish/b/b;->i:Ljava/lang/String;

    if-eqz v2, :cond_b

    move v0, v1

    .line 109
    goto :goto_0

    .line 110
    :cond_a
    iget-object v2, p0, Lcom/startapp/android/publish/b/b;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/startapp/android/publish/b/b;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move v0, v1

    .line 111
    goto :goto_0

    .line 112
    :cond_b
    iget-boolean v2, p0, Lcom/startapp/android/publish/b/b;->f:Z

    iget-boolean v3, p1, Lcom/startapp/android/publish/b/b;->f:Z

    if-eq v2, v3, :cond_c

    move v0, v1

    .line 113
    goto :goto_0

    .line 114
    :cond_c
    iget-boolean v2, p0, Lcom/startapp/android/publish/b/b;->e:Z

    iget-boolean v3, p1, Lcom/startapp/android/publish/b/b;->e:Z

    if-eq v2, v3, :cond_d

    move v0, v1

    .line 115
    goto :goto_0

    .line 116
    :cond_d
    iget-boolean v2, p0, Lcom/startapp/android/publish/b/b;->d:Z

    iget-boolean v3, p1, Lcom/startapp/android/publish/b/b;->d:Z

    if-eq v2, v3, :cond_e

    move v0, v1

    .line 117
    goto/16 :goto_0

    .line 118
    :cond_e
    iget-boolean v2, p0, Lcom/startapp/android/publish/b/b;->g:Z

    iget-boolean v3, p1, Lcom/startapp/android/publish/b/b;->g:Z

    if-eq v2, v3, :cond_f

    move v0, v1

    .line 119
    goto/16 :goto_0

    .line 120
    :cond_f
    iget-object v2, p0, Lcom/startapp/android/publish/b/b;->a:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    iget-object v3, p1, Lcom/startapp/android/publish/b/b;->a:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    if-eq v2, v3, :cond_10

    move v0, v1

    .line 121
    goto/16 :goto_0

    .line 122
    :cond_10
    iget-object v2, p0, Lcom/startapp/android/publish/b/b;->k:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 123
    iget-object v2, p1, Lcom/startapp/android/publish/b/b;->k:Ljava/lang/String;

    if-eqz v2, :cond_12

    move v0, v1

    .line 124
    goto/16 :goto_0

    .line 125
    :cond_11
    iget-object v2, p0, Lcom/startapp/android/publish/b/b;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/startapp/android/publish/b/b;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move v0, v1

    .line 126
    goto/16 :goto_0

    .line 127
    :cond_12
    iget-boolean v2, p0, Lcom/startapp/android/publish/b/b;->h:Z

    iget-boolean v3, p1, Lcom/startapp/android/publish/b/b;->h:Z

    if-eq v2, v3, :cond_13

    move v0, v1

    .line 128
    goto/16 :goto_0

    .line 129
    :cond_13
    iget-object v2, p0, Lcom/startapp/android/publish/b/b;->l:Lcom/startapp/android/publish/Ad$AdType;

    if-nez v2, :cond_14

    .line 130
    iget-object v2, p1, Lcom/startapp/android/publish/b/b;->l:Lcom/startapp/android/publish/Ad$AdType;

    if-eqz v2, :cond_0

    move v0, v1

    .line 131
    goto/16 :goto_0

    .line 132
    :cond_14
    iget-object v2, p0, Lcom/startapp/android/publish/b/b;->l:Lcom/startapp/android/publish/Ad$AdType;

    iget-object v3, p1, Lcom/startapp/android/publish/b/b;->l:Lcom/startapp/android/publish/Ad$AdType;

    invoke-virtual {v2, v3}, Lcom/startapp/android/publish/Ad$AdType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 133
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v1, 0x0

    .line 59
    .line 61
    iget-object v0, p0, Lcom/startapp/android/publish/b/b;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 63
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/startapp/android/publish/b/b;->b:Ljava/util/Set;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    .line 65
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/startapp/android/publish/b/b;->c:Ljava/util/Set;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v4

    .line 69
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/startapp/android/publish/b/b;->i:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v4

    .line 70
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/startapp/android/publish/b/b;->f:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_4
    add-int/2addr v0, v4

    .line 71
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/startapp/android/publish/b/b;->e:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_5
    add-int/2addr v0, v4

    .line 72
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/startapp/android/publish/b/b;->d:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_6
    add-int/2addr v0, v4

    .line 73
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/startapp/android/publish/b/b;->g:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_7
    add-int/2addr v0, v4

    .line 74
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/startapp/android/publish/b/b;->a:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v4

    .line 76
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/startapp/android/publish/b/b;->k:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v4

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/startapp/android/publish/b/b;->h:Z

    if-eqz v4, :cond_a

    :goto_a
    add-int/2addr v0, v2

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/startapp/android/publish/b/b;->l:Lcom/startapp/android/publish/Ad$AdType;

    if-nez v2, :cond_b

    :goto_b
    add-int/2addr v0, v1

    .line 80
    return v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/b/b;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/startapp/android/publish/b/b;->b:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/startapp/android/publish/b/b;->c:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/startapp/android/publish/b/b;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    move v0, v3

    .line 70
    goto :goto_4

    :cond_5
    move v0, v3

    .line 71
    goto :goto_5

    :cond_6
    move v0, v3

    .line 72
    goto :goto_6

    :cond_7
    move v0, v3

    .line 73
    goto :goto_7

    .line 74
    :cond_8
    iget-object v0, p0, Lcom/startapp/android/publish/b/b;->a:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v0}, Lcom/startapp/android/publish/model/AdPreferences$Placement;->hashCode()I

    move-result v0

    goto :goto_8

    .line 76
    :cond_9
    iget-object v0, p0, Lcom/startapp/android/publish/b/b;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_9

    :cond_a
    move v2, v3

    .line 78
    goto :goto_a

    .line 79
    :cond_b
    iget-object v1, p0, Lcom/startapp/android/publish/b/b;->l:Lcom/startapp/android/publish/Ad$AdType;

    invoke-virtual {v1}, Lcom/startapp/android/publish/Ad$AdType;->hashCode()I

    move-result v1

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CacheKey [placement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/b/b;->a:Lcom/startapp/android/publish/model/AdPreferences$Placement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/b/b;->b:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoriesExclude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/b/b;->c:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceOfferWall3D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/startapp/android/publish/b/b;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceOfferWall2D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/startapp/android/publish/b/b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceFullpage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/startapp/android/publish/b/b;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceOverlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/startapp/android/publish/b/b;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", testMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/startapp/android/publish/b/b;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/b/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", advertiserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/b/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/b/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/b/b;->l:Lcom/startapp/android/publish/Ad$AdType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

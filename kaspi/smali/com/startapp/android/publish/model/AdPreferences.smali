.class public Lcom/startapp/android/publish/model/AdPreferences;
.super Ljava/lang/Object;
.source "StartAppSDK"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/android/publish/model/AdPreferences$Placement;
    }
.end annotation


# static fields
.field public static final TYPE_APP_WALL:Ljava/lang/String; = "APP_WALL"

.field public static final TYPE_BANNER:Ljava/lang/String; = "BANNER"

.field public static final TYPE_INAPP_EXIT:Ljava/lang/String; = "INAPP_EXIT"

.field public static final TYPE_SCRINGO_TOOLBAR:Ljava/lang/String; = "SCRINGO_TOOLBAR"

.field public static final TYPE_TEXT:Ljava/lang/String; = "TEXT"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected advertiserId:Ljava/lang/String;

.field private age:Ljava/lang/String;

.field private categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private categoriesExclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected country:Ljava/lang/String;

.field protected forceFullpage:Z

.field protected forceOfferWall2D:Z

.field protected forceOfferWall3D:Z

.field protected forceOverlay:Z

.field private gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

.field private keywords:Ljava/lang/String;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field protected packageInclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private productId:Ljava/lang/String;

.field private publisherId:Ljava/lang/String;

.field protected template:Ljava/lang/String;

.field private testMode:Z

.field protected type:Lcom/startapp/android/publish/Ad$AdType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->country:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->template:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->type:Lcom/startapp/android/publish/Ad$AdType;

    .line 24
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->packageInclude:Ljava/util/Set;

    .line 26
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOfferWall3D:Z

    .line 27
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOfferWall2D:Z

    .line 28
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceFullpage:Z

    .line 29
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOverlay:Z

    .line 81
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->testMode:Z

    .line 84
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 85
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 86
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    .line 88
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->age:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    .line 91
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/startapp/android/publish/model/AdPreferences;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->country:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->template:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->type:Lcom/startapp/android/publish/Ad$AdType;

    .line 24
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->packageInclude:Ljava/util/Set;

    .line 26
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOfferWall3D:Z

    .line 27
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOfferWall2D:Z

    .line 28
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceFullpage:Z

    .line 29
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOverlay:Z

    .line 81
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->testMode:Z

    .line 84
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 85
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 86
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    .line 88
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->age:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    .line 91
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    .line 97
    iget-object v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->country:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->country:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->advertiserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->template:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->template:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->type:Lcom/startapp/android/publish/Ad$AdType;

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->type:Lcom/startapp/android/publish/Ad$AdType;

    .line 101
    iget-object v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->packageInclude:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/startapp/android/publish/model/AdPreferences;->packageInclude:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->packageInclude:Ljava/util/Set;

    .line 104
    :cond_0
    iget-boolean v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->forceOfferWall3D:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOfferWall3D:Z

    .line 105
    iget-boolean v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->forceOfferWall2D:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOfferWall2D:Z

    .line 106
    iget-boolean v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->forceFullpage:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceFullpage:Z

    .line 107
    iget-boolean v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->forceOverlay:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOverlay:Z

    .line 108
    iget-object v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    .line 110
    iget-boolean v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->testMode:Z

    iput-boolean v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->testMode:Z

    .line 111
    iget-object v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 112
    iget-object v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 113
    iget-object v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    .line 115
    iget-object v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->age:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->age:Ljava/lang/String;

    .line 116
    iget-object v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/startapp/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    .line 119
    :cond_1
    iget-object v0, p1, Lcom/startapp/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 120
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/startapp/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    .line 122
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->country:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->template:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->type:Lcom/startapp/android/publish/Ad$AdType;

    .line 24
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->packageInclude:Ljava/util/Set;

    .line 26
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOfferWall3D:Z

    .line 27
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOfferWall2D:Z

    .line 28
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceFullpage:Z

    .line 29
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOverlay:Z

    .line 81
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->testMode:Z

    .line 84
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 85
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 86
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    .line 88
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->age:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    .line 91
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    .line 129
    iput-object p1, p0, Lcom/startapp/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lcom/startapp/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->country:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->advertiserId:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->template:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->type:Lcom/startapp/android/publish/Ad$AdType;

    .line 24
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->packageInclude:Ljava/util/Set;

    .line 26
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOfferWall3D:Z

    .line 27
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOfferWall2D:Z

    .line 28
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceFullpage:Z

    .line 29
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->forceOverlay:Z

    .line 81
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    .line 83
    iput-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->testMode:Z

    .line 84
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 85
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 86
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    .line 88
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->age:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    .line 91
    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    .line 138
    iput-object p1, p0, Lcom/startapp/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/startapp/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)Lcom/startapp/android/publish/model/AdPreferences;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    return-object p0
.end method

.method public addCategoryExclude(Ljava/lang/String;)Lcom/startapp/android/publish/model/AdPreferences;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    return-object p0
.end method

.method public getAge(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->age:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 225
    invoke-static {}, Lcom/startapp/android/publish/StartAppSDK;->getInstance()Lcom/startapp/android/publish/StartAppSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/StartAppSDK;->getSDKAdPrefs(Landroid/content/Context;)Lcom/startapp/android/publish/SDKAdPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/SDKAdPreferences;->getAge()Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->age:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    return-object v0
.end method

.method public getCategoriesExclude()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    return-object v0
.end method

.method public getGender(Landroid/content/Context;)Lcom/startapp/android/publish/SDKAdPreferences$Gender;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Lcom/startapp/android/publish/StartAppSDK;->getInstance()Lcom/startapp/android/publish/StartAppSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/android/publish/StartAppSDK;->getSDKAdPrefs(Landroid/content/Context;)Lcom/startapp/android/publish/SDKAdPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/android/publish/SDKAdPreferences;->getGender()Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    return-object v0
.end method

.method public isSimpleToken()Z
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public isTestMode()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->testMode:Z

    return v0
.end method

.method public setAge(Ljava/lang/Integer;)Lcom/startapp/android/publish/model/AdPreferences;
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->age:Ljava/lang/String;

    .line 233
    return-object p0
.end method

.method public setAge(Ljava/lang/String;)Lcom/startapp/android/publish/model/AdPreferences;
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/startapp/android/publish/model/AdPreferences;->age:Ljava/lang/String;

    .line 238
    return-object p0
.end method

.method public setGender(Lcom/startapp/android/publish/SDKAdPreferences$Gender;)Lcom/startapp/android/publish/model/AdPreferences;
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/startapp/android/publish/model/AdPreferences;->gender:Lcom/startapp/android/publish/SDKAdPreferences$Gender;

    .line 220
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/startapp/android/publish/model/AdPreferences;
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/startapp/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public setLatitude(D)Lcom/startapp/android/publish/model/AdPreferences;
    .locals 1

    .prologue
    .line 197
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    .line 198
    return-object p0
.end method

.method public setLongitude(D)Lcom/startapp/android/publish/model/AdPreferences;
    .locals 1

    .prologue
    .line 188
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    .line 189
    return-object p0
.end method

.method public setProductId(Ljava/lang/String;)Lcom/startapp/android/publish/model/AdPreferences;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    iput-object p1, p0, Lcom/startapp/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public setPublisherId(Ljava/lang/String;)Lcom/startapp/android/publish/model/AdPreferences;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    iput-object p1, p0, Lcom/startapp/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setTestMode(Z)Lcom/startapp/android/publish/model/AdPreferences;
    .locals 0

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/startapp/android/publish/model/AdPreferences;->testMode:Z

    .line 180
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPreferences [publisherId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->publisherId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", testMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->testMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->longitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->latitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->keywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->categories:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoriesExclude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/android/publish/model/AdPreferences;->categoriesExclude:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/avocarrot/androidsdk/BaseController;
.super Ljava/lang/Object;
.source "BaseController.java"

# interfaces
.implements Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/avocarrot/androidsdk/BaseController$1;,
        Lcom/avocarrot/androidsdk/BaseController$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avocarrot/androidsdk/BaseListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;"
    }
.end annotation


# static fields
.field static placementPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/avocarrot/androidsdk/BaseModel;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private _listener:Lcom/avocarrot/androidsdk/BaseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field avocarrot:Lcom/avocarrot/androidsdk/Avocarrot;

.field private currentPlacementPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/avocarrot/androidsdk/BaseModel;",
            ">;"
        }
    .end annotation
.end field

.field imageManager:Lcom/avocarrot/androidsdk/ImageManager;

.field impressionManager:Lcom/avocarrot/androidsdk/ImpressionManager;

.field placementName:Ljava/lang/String;

.field status:Lcom/avocarrot/androidsdk/BaseController$Status;

.field weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avocarrot/androidsdk/BaseController;->placementPool:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/avocarrot/androidsdk/BaseController;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 48
    invoke-static {p1}, Lcom/avocarrot/androidsdk/Avocarrot;->getInstance(Landroid/content/Context;)Lcom/avocarrot/androidsdk/Avocarrot;

    move-result-object v0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->avocarrot:Lcom/avocarrot/androidsdk/Avocarrot;

    .line 49
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->avocarrot:Lcom/avocarrot/androidsdk/Avocarrot;

    invoke-virtual {v0, p2}, Lcom/avocarrot/androidsdk/Avocarrot;->setKey(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->avocarrot:Lcom/avocarrot/androidsdk/Avocarrot;

    invoke-virtual {v0, p4}, Lcom/avocarrot/androidsdk/Avocarrot;->setMediationAdapter(Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/avocarrot/androidsdk/ImpressionManager;

    invoke-direct {v0}, Lcom/avocarrot/androidsdk/ImpressionManager;-><init>()V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->impressionManager:Lcom/avocarrot/androidsdk/ImpressionManager;

    .line 52
    new-instance v0, Lcom/avocarrot/androidsdk/ImageManager;

    invoke-direct {v0, p1}, Lcom/avocarrot/androidsdk/ImageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 54
    iput-object p3, p0, Lcom/avocarrot/androidsdk/BaseController;->placementName:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/avocarrot/androidsdk/BaseController$Status;->IDLE:Lcom/avocarrot/androidsdk/BaseController$Status;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->status:Lcom/avocarrot/androidsdk/BaseController$Status;

    .line 57
    sget-object v0, Lcom/avocarrot/androidsdk/BaseController;->placementPool:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/avocarrot/androidsdk/BaseController;->placementPool:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->currentPlacementPool:Ljava/util/LinkedList;

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->currentPlacementPool:Ljava/util/LinkedList;

    .line 61
    sget-object v0, Lcom/avocarrot/androidsdk/BaseController;->placementPool:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/BaseController;->currentPlacementPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method bindAdModel2AdView(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->impressionManager:Lcom/avocarrot/androidsdk/ImpressionManager;

    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseController;->createVisibilityConditions()Lcom/avocarrot/androidsdk/VisibilityConditions;

    move-result-object v1

    invoke-virtual {v0, p0, p2, p1, v1}, Lcom/avocarrot/androidsdk/ImpressionManager;->observeView(Lcom/avocarrot/androidsdk/BaseController;Lcom/avocarrot/androidsdk/BaseModel;Landroid/view/View;Lcom/avocarrot/androidsdk/VisibilityConditions;)V

    .line 189
    const/4 v0, 0x1

    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->DEBUG:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Funnel|bindAdModel2AdView"

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(ZLcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Fail to observe View"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "id"

    aput-object v4, v3, v8

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v7, v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(ZLcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/ImageManager;->clear()V

    .line 80
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->impressionManager:Lcom/avocarrot/androidsdk/ImpressionManager;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/ImpressionManager;->clear()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->_listener:Lcom/avocarrot/androidsdk/BaseListener;

    .line 82
    return-void
.end method

.method connectExtraFieldsToView(Landroid/view/View;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/avocarrot/androidsdk/ExtraFieldModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 363
    :cond_0
    return-void

    .line 341
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/ExtraFieldModel;

    .line 343
    :try_start_0
    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/ExtraFieldModel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 344
    if-eqz v1, :cond_2

    .line 345
    sget-object v3, Lcom/avocarrot/androidsdk/BaseController$1;->$SwitchMap$com$avocarrot$androidsdk$ExtraFieldModel$Type:[I

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/ExtraFieldModel;->getType()Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avocarrot/androidsdk/ExtraFieldModel$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 347
    :pswitch_0
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 348
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/ExtraFieldModel;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    goto :goto_0

    .line 353
    :pswitch_1
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 354
    iget-object v3, p0, Lcom/avocarrot/androidsdk/BaseController;->imageManager:Lcom/avocarrot/androidsdk/ImageManager;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/ExtraFieldModel;->getValue()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v1}, Lcom/avocarrot/androidsdk/ImageManager;->loadImageInto(Ljava/lang/String;Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method createVisibilityConditions()Lcom/avocarrot/androidsdk/VisibilityConditions;
    .locals 6

    .prologue
    .line 317
    new-instance v0, Lcom/avocarrot/androidsdk/VisibilityConditions;

    iget-object v1, p0, Lcom/avocarrot/androidsdk/BaseController;->placementName:Ljava/lang/String;

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->visibilityPercentage:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v1, v2}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getIntFallbackToDefault(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/avocarrot/androidsdk/BaseController;->placementName:Ljava/lang/String;

    sget-object v4, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->visibilityMinTime:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v1, v4}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getIntFallbackToDefault(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/avocarrot/androidsdk/VisibilityConditions;-><init>(JJ)V

    return-object v0
.end method

.method displayAd()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 179
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->DEBUG:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "Funnel|displayAd"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(ZLcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 180
    return v4
.end method

.method protected getListener()Lcom/avocarrot/androidsdk/BaseListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->_listener:Lcom/avocarrot/androidsdk/BaseListener;

    return-object v0
.end method

.method protected getPlacementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->placementName:Ljava/lang/String;

    return-object v0
.end method

.method getPoolAds()Ljava/util/LinkedList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/avocarrot/androidsdk/BaseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->currentPlacementPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 371
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/BaseModel;

    .line 373
    iget-object v2, p0, Lcom/avocarrot/androidsdk/BaseController;->placementName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/avocarrot/androidsdk/BaseModel;->hasExpired(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    sget-object v2, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->WARN:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v3, "Ad has expired"

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/BaseModel;->getId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 375
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->currentPlacementPool:Ljava/util/LinkedList;

    return-object v0
.end method

.method handleClickOnAdView(Lcom/avocarrot/androidsdk/BaseModel;Landroid/view/View;)Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    if-nez p1, :cond_0

    .line 217
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "Could not click empty model"

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    .line 312
    :goto_0
    return v2

    .line 220
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->impressionManager:Lcom/avocarrot/androidsdk/ImpressionManager;

    invoke-virtual {v0, p1}, Lcom/avocarrot/androidsdk/ImpressionManager;->isModelConsideredVisible(Lcom/avocarrot/androidsdk/BaseModel;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 221
    :cond_1
    sget-object v3, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->WARN:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v4, "Could not perform click on view that doesn\'t fulfil the visibility conditions"

    const/4 v5, 0x0

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/String;

    const-string v0, "visibilityCondition"

    aput-object v0, v6, v2

    if-nez p2, :cond_2

    const-string v0, "null"

    :goto_1
    aput-object v0, v6, v1

    const-string v0, "model"

    aput-object v0, v6, v7

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/BaseModel;->getId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v3, v4, v5, v6}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseController;->createVisibilityConditions()Lcom/avocarrot/androidsdk/VisibilityConditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/VisibilityConditions;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 225
    :cond_3
    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/BaseModel;->getDestinationUrl()Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "Could not redirect to URL because: URL is empty"

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->weakActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 232
    :cond_5
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "Could not redirect to URL because Activity is not available"

    invoke-static {v0, v1}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_6
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 242
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/avocarrot/androidsdk/RedirectActivity;

    invoke-direct {v3, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    const-string v5, "URL"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-static {v0, v3}, Lcom/avocarrot/androidsdk/Utils;->isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    if-eqz v5, :cond_c

    .line 250
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v3, v1

    .line 257
    :goto_2
    if-nez v3, :cond_7

    .line 263
    :try_start_2
    instance-of v3, v0, Landroid/support/v4/app/FragmentActivity;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 267
    :goto_3
    if-eqz v3, :cond_a

    .line 269
    :try_start_3
    invoke-static {v4}, Lcom/avocarrot/androidsdk/RedirectFragmentCompat;->newInstance(Ljava/lang/String;)Lcom/avocarrot/androidsdk/RedirectFragmentCompat;

    move-result-object v3

    .line 270
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v5, 0x1020002

    const-string v6, "AVOCARROT_REDIRECT_FRAGMENT"

    invoke-virtual {v0, v5, v3, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_7
    :goto_4
    move v0, v1

    .line 306
    :goto_5
    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/BaseModel;->getClickUrls()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/BaseModel;->getClickUrls()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 307
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/avocarrot/androidsdk/UrlTrackerThread;

    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/BaseModel;->getClickUrls()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/avocarrot/androidsdk/UrlTrackerThread;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 309
    :cond_8
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseController;->getListener()Lcom/avocarrot/androidsdk/BaseListener;

    move-result-object v1

    .line 310
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/avocarrot/androidsdk/BaseListener;->onAdClicked()V

    :cond_9
    move v2, v0

    .line 312
    goto/16 :goto_0

    .line 252
    :catch_0
    move-exception v3

    move v3, v2

    goto :goto_2

    .line 264
    :catch_1
    move-exception v3

    move v3, v2

    goto :goto_3

    .line 279
    :cond_a
    :try_start_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v3, v5, :cond_b

    .line 281
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 282
    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 300
    :catch_2
    move-exception v0

    .line 302
    sget-object v3, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v5, "Could not redirect to URL"

    new-array v6, v7, [Ljava/lang/String;

    const-string v7, "url"

    aput-object v7, v6, v2

    aput-object v4, v6, v1

    invoke-static {v3, v5, v0, v6}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    move v0, v2

    goto :goto_5

    .line 287
    :cond_b
    :try_start_5
    invoke-static {v4}, Lcom/avocarrot/androidsdk/RedirectFragment;->newInstance(Ljava/lang/String;)Lcom/avocarrot/androidsdk/RedirectFragment;

    move-result-object v3

    .line 288
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v5, 0x1020002

    const-string v6, "AVOCARROT_REDIRECT_FRAGMENT"

    invoke-virtual {v0, v5, v3, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :cond_c
    move v3, v2

    goto/16 :goto_2
.end method

.method impressionRegistered(Landroid/view/View;Lcom/avocarrot/androidsdk/BaseModel;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 199
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->currentPlacementPool:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 200
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avocarrot/androidsdk/BaseModel;

    .line 202
    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/BaseModel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseController;->getListener()Lcom/avocarrot/androidsdk/BaseListener;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/BaseListener;->onAdImpression()V

    .line 208
    :cond_2
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->DEBUG:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "Funnel|onImpressionRegistered"

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "id"

    aput-object v5, v3, v4

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseModel;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v6, v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(ZLcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method loadAd()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0, v0}, Lcom/avocarrot/androidsdk/BaseController;->loadAd(IZ)V

    .line 86
    return-void
.end method

.method loadAd(IZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseController;->getPoolAds()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/avocarrot/androidsdk/BaseController;->placementName:Ljava/lang/String;

    sget-object v2, Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;->bufferMin:Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;

    invoke-static {v1, v2}, Lcom/avocarrot/androidsdk/DynamicConfiguration;->getIntFallbackToDefault(Ljava/lang/String;Lcom/avocarrot/androidsdk/DynamicConfiguration$Settings;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 91
    invoke-virtual {p0, p2}, Lcom/avocarrot/androidsdk/BaseController;->onLoadAdDone(Z)V

    .line 92
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->DEBUG:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v1, "Funnel|LoadAds but pool isn\'t empty"

    const/4 v2, 0x0

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v6, v0, v1, v2, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(ZLcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->status:Lcom/avocarrot/androidsdk/BaseController$Status;

    sget-object v1, Lcom/avocarrot/androidsdk/BaseController$Status;->IDLE:Lcom/avocarrot/androidsdk/BaseController$Status;

    if-ne v0, v1, :cond_0

    .line 100
    if-lt p1, v6, :cond_0

    .line 104
    new-instance v1, Lcom/avocarrot/androidsdk/AdLoadTask;

    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->avocarrot:Lcom/avocarrot/androidsdk/Avocarrot;

    invoke-virtual {v0}, Lcom/avocarrot/androidsdk/Avocarrot;->getApiKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/avocarrot/androidsdk/BaseAdRequest;

    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->placementName:Ljava/lang/String;

    iget-object v4, p0, Lcom/avocarrot/androidsdk/BaseController;->avocarrot:Lcom/avocarrot/androidsdk/Avocarrot;

    invoke-virtual {v4}, Lcom/avocarrot/androidsdk/Avocarrot;->getDeviceInfo()Lcom/avocarrot/androidsdk/DeviceInfo;

    move-result-object v4

    invoke-direct {v3, v0, p1, p2, v4}, Lcom/avocarrot/androidsdk/BaseAdRequest;-><init>(Ljava/lang/String;IZLcom/avocarrot/androidsdk/DeviceInfo;)V

    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/avocarrot/androidsdk/AdLoadTask;-><init>(Ljava/lang/String;Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/AdLoadTask$AdLoadTaskListener;Landroid/content/Context;)V

    .line 105
    sget-object v0, Lcom/avocarrot/androidsdk/BaseController$Status;->LOADING:Lcom/avocarrot/androidsdk/BaseController$Status;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->status:Lcom/avocarrot/androidsdk/BaseController$Status;

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    .line 107
    sget-object v0, Lcom/avocarrot/androidsdk/Avocarrot;->Executor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/avocarrot/androidsdk/AdLoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    sget-object v1, Lcom/avocarrot/androidsdk/BaseController$Status;->FAIL:Lcom/avocarrot/androidsdk/BaseController$Status;

    iput-object v1, p0, Lcom/avocarrot/androidsdk/BaseController;->status:Lcom/avocarrot/androidsdk/BaseController$Status;

    .line 114
    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Could not load Ad for placement"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "placement"

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/avocarrot/androidsdk/BaseController;->placementName:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v0, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/avocarrot/androidsdk/AdLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method onLoadAdDone(Z)V
    .locals 5

    .prologue
    .line 154
    const/4 v0, 0x1

    sget-object v1, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->DEBUG:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Funnel|onLoadAdDone"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(ZLcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 155
    if-nez p1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseController;->displayAd()Z

    .line 157
    :cond_0
    return-void
.end method

.method onLoadAdFail(Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/AdError;Ljava/lang/Exception;)V
    .locals 6

    .prologue
    .line 164
    if-eqz p2, :cond_0

    .line 165
    const-string v0, ""

    .line 167
    :try_start_0
    invoke-virtual {p1}, Lcom/avocarrot/androidsdk/BaseAdRequest;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :goto_0
    sget-object v2, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->ERROR:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadAdFail "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "request"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v4, "adError"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/AdError;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v1, p3, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/avocarrot/androidsdk/BaseController;->getListener()Lcom/avocarrot/androidsdk/BaseListener;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/avocarrot/androidsdk/BaseListener;->onAdError(Lcom/avocarrot/androidsdk/AdError;)V

    .line 173
    :cond_1
    return-void

    .line 169
    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 168
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onLoadAdFailure(Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/AdError;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/avocarrot/androidsdk/BaseController$Status;->FAIL:Lcom/avocarrot/androidsdk/BaseController$Status;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->status:Lcom/avocarrot/androidsdk/BaseController$Status;

    .line 145
    invoke-virtual {p0, p1, p2, p3}, Lcom/avocarrot/androidsdk/BaseController;->onLoadAdFail(Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/AdError;Ljava/lang/Exception;)V

    .line 146
    return-void
.end method

.method public final onLoadAdSuccess(Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/BaseAdResponse;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 121
    sget-object v0, Lcom/avocarrot/androidsdk/BaseController$Status;->IDLE:Lcom/avocarrot/androidsdk/BaseController$Status;

    iput-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->status:Lcom/avocarrot/androidsdk/BaseController$Status;

    .line 123
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseAdResponse;->getJSONSlots()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseAdResponse;->getJSONSlots()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    sget-object v0, Lcom/avocarrot/androidsdk/AdError;->GENERIC:Lcom/avocarrot/androidsdk/AdError;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Null Response OR Response without a slot"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, v2}, Lcom/avocarrot/androidsdk/BaseController;->onLoadAdFail(Lcom/avocarrot/androidsdk/BaseAdRequest;Lcom/avocarrot/androidsdk/AdError;Ljava/lang/Exception;)V

    .line 125
    sget-object v0, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->WARN:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v2, "Load ads list is empty"

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "placement"

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/avocarrot/androidsdk/BaseController;->placementName:Ljava/lang/String;

    aput-object v1, v3, v8

    invoke-static {v0, v2, v10, v3}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseAdResponse;->getJSONSlots()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v0, v1

    .line 130
    :goto_1
    if-ge v0, v2, :cond_3

    .line 131
    new-instance v3, Lcom/avocarrot/androidsdk/BaseModel;

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseAdResponse;->getJSONSlots()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p2}, Lcom/avocarrot/androidsdk/BaseAdResponse;->getRequestId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/avocarrot/androidsdk/BaseModel;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v3}, Lcom/avocarrot/androidsdk/BaseModel;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    iget-object v4, p0, Lcom/avocarrot/androidsdk/BaseController;->currentPlacementPool:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_2
    sget-object v4, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;->WARN:Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;

    const-string v5, "AdModel is not valid"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "id"

    aput-object v7, v6, v1

    invoke-virtual {v3}, Lcom/avocarrot/androidsdk/BaseModel;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v8

    invoke-static {v4, v5, v10, v6}, Lcom/avocarrot/androidsdk/logging/AvocarrotLogger;->AvocarrotLog(Lcom/avocarrot/androidsdk/logging/AvocarrotLogger$Levels;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_2

    .line 139
    :cond_3
    iget-boolean v0, p1, Lcom/avocarrot/androidsdk/BaseAdRequest;->preloading:Z

    invoke-virtual {p0, v0}, Lcom/avocarrot/androidsdk/BaseController;->onLoadAdDone(Z)V

    goto :goto_0
.end method

.method public setListener(Lcom/avocarrot/androidsdk/BaseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 324
    iput-object p1, p0, Lcom/avocarrot/androidsdk/BaseController;->_listener:Lcom/avocarrot/androidsdk/BaseListener;

    .line 325
    return-void
.end method

.method public setLogger(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->avocarrot:Lcom/avocarrot/androidsdk/Avocarrot;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/avocarrot/androidsdk/Avocarrot;->setLogger(ZLjava/lang/String;)V

    .line 68
    return-void
.end method

.method public setSandbox(Z)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/avocarrot/androidsdk/BaseController;->avocarrot:Lcom/avocarrot/androidsdk/Avocarrot;

    invoke-virtual {v0, p1}, Lcom/avocarrot/androidsdk/Avocarrot;->setSandbox(Z)V

    .line 72
    return-void
.end method

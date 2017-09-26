.class public abstract Lcom/startapp/android/publish/model/adrules/AdRule;
.super Ljava/lang/Object;
.source "StartAppSDK"


# instance fields
.field private transient shouldProcessEntireHierarchy:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/startapp/android/publish/model/adrules/AdRule;->shouldProcessEntireHierarchy:Z

    .line 12
    return-void
.end method


# virtual methods
.method public abstract shouldDisplayAd(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/startapp/android/publish/model/adrules/AdDisplayEvent;",
            ">;)Z"
        }
    .end annotation
.end method

.method public shouldProcessEntireHierarchy()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/startapp/android/publish/model/adrules/AdRule;->shouldProcessEntireHierarchy:Z

    return v0
.end method

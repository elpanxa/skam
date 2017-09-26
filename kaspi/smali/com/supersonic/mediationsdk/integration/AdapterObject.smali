.class Lcom/supersonic/mediationsdk/integration/AdapterObject;
.super Ljava/lang/Object;
.source "AdapterObject.java"


# static fields
.field private static final mAdapter:Ljava/lang/String; = "Adapter"

.field private static final mAdapterbase:Ljava/lang/String; = "com.supersonic.adapters."


# instance fields
.field private mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapterName:Ljava/lang/String;

.field private mBroadcastReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalLibraries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsAdapter:Z

.field private mName:Ljava/lang/String;

.field private mPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSdkName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mActivities:Ljava/util/List;

    .line 26
    iput-boolean p3, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mIsAdapter:Z

    .line 27
    if-eqz p3, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.supersonic.adapters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Adapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mAdapterName:Ljava/lang/String;

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method getActivities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mActivities:Ljava/util/List;

    return-object v0
.end method

.method getAdapterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mAdapterName:Ljava/lang/String;

    return-object v0
.end method

.method getBroadcastReceivers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mBroadcastReceivers:Ljava/util/List;

    return-object v0
.end method

.method getExternalLibraries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mExternalLibraries:Ljava/util/ArrayList;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mPermissions:Ljava/util/List;

    return-object v0
.end method

.method getSdkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mSdkName:Ljava/lang/String;

    return-object v0
.end method

.method isAdapter()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mIsAdapter:Z

    return v0
.end method

.method setActivities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mActivities:Ljava/util/List;

    .line 53
    return-void
.end method

.method setBroadcastReceivers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mBroadcastReceivers:Ljava/util/List;

    .line 85
    return-void
.end method

.method setExternalLibraries(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mExternalLibraries:Ljava/util/ArrayList;

    .line 61
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method setPermissions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mPermissions:Ljava/util/List;

    .line 45
    return-void
.end method

.method setSdkName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/supersonic/mediationsdk/integration/AdapterObject;->mSdkName:Ljava/lang/String;

    .line 69
    return-void
.end method

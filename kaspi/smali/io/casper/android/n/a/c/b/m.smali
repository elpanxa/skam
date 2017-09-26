.class public Lio/casper/android/n/a/c/b/m;
.super Lio/casper/android/e/a/d;
.source "GeoFilter.java"


# static fields
.field public static final POSITION_BOTTOM:Ljava/lang/String; = "BOTTOM"

.field public static final POSITION_BOTTOM_LEFT:Ljava/lang/String; = "BOTTOM_LEFT"

.field public static final POSITION_BOTTOM_RIGHT:Ljava/lang/String; = "BOTTOM_RIGHT"

.field public static final POSITION_TOP:Ljava/lang/String; = "TOP"

.field public static final POSITION_TOP_LEFT:Ljava/lang/String; = "TOP_LEFT"

.field public static final POSITION_TOP_RIGHT:Ljava/lang/String; = "TOP_RIGHT"

.field public static final SCALE_ASPECT_FILL:Ljava/lang/String; = "SCALE_ASPECT_FILL"

.field public static final SCALE_ASPECT_FIT:Ljava/lang/String; = "SCALE_ASPECT_FIT"

.field public static final SCALE_TO_FILL:Ljava/lang/String; = "SCALE_TO_FILL"


# instance fields
.field private filterId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filter_id"
    .end annotation
.end field

.field private image:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field

.field private isDynamicGeofilter:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_dynamic_geofilter"
    .end annotation
.end field

.field private isLens:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_lens"
    .end annotation
.end field

.field private position:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lio/casper/android/e/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lio/casper/android/n/a/c/b/m;->filterId:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lio/casper/android/n/a/c/b/m;->filterId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public a(Ljava/util/List;)V
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
    .line 65
    iput-object p1, p0, Lio/casper/android/n/a/c/b/m;->position:Ljava/util/List;

    .line 66
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lio/casper/android/n/a/c/b/m;->image:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lio/casper/android/n/a/c/b/m;->image:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public c()Ljava/util/List;
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
    .line 45
    iget-object v0, p0, Lio/casper/android/n/a/c/b/m;->position:Ljava/util/List;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lio/casper/android/n/a/c/b/m;->isDynamicGeofilter:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lio/casper/android/n/a/c/b/m;->isLens:Z

    return v0
.end method

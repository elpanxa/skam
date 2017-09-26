.class public Lio/casper/android/n/a/c/b/u;
.super Ljava/lang/Object;
.source "SecInfo.java"


# instance fields
.field private capricornEndpoints:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capricorn_endpoints"
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

.field private capricornNumber:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capricorn_number"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

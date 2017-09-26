.class public Lio/casper/android/n/a/c/b/d;
.super Ljava/lang/Object;
.source "ChatMessageHeader.java"


# instance fields
.field private conv_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conv_id"
    .end annotation
.end field

.field private from:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "from"
    .end annotation
.end field

.field private to:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "to"
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

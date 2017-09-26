.class public Lio/casper/android/n/a/c/b/c;
.super Ljava/lang/Object;
.source "ChatMessageBody.java"


# static fields
.field public static TYPE_MEDIA:Ljava/lang/String;

.field public static TYPE_TEXT:Ljava/lang/String;


# instance fields
.field private media:Lio/casper/android/n/a/c/b/e;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "media"
    .end annotation
.end field

.field private text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "text"

    sput-object v0, Lio/casper/android/n/a/c/b/c;->TYPE_TEXT:Ljava/lang/String;

    .line 18
    const-string v0, "media"

    sput-object v0, Lio/casper/android/n/a/c/b/c;->TYPE_MEDIA:Ljava/lang/String;

    return-void
.end method

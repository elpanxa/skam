.class public final enum Lio/casper/android/o/a/a$a;
.super Ljava/lang/Enum;
.source "DownloadStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/o/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/o/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/o/a/a$a;

.field public static final enum DELETED:Lio/casper/android/o/a/a$a;

.field public static final enum DOWNLOADED:Lio/casper/android/o/a/a$a;

.field public static final enum DOWNLOADING:Lio/casper/android/o/a/a$a;

.field public static final enum FAILED:Lio/casper/android/o/a/a$a;

.field public static final enum NONE:Lio/casper/android/o/a/a$a;

.field public static final enum VOID:Lio/casper/android/o/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lio/casper/android/o/a/a$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lio/casper/android/o/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/o/a/a$a;->NONE:Lio/casper/android/o/a/a$a;

    new-instance v0, Lio/casper/android/o/a/a$a;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v4}, Lio/casper/android/o/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/o/a/a$a;->DOWNLOADING:Lio/casper/android/o/a/a$a;

    new-instance v0, Lio/casper/android/o/a/a$a;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lio/casper/android/o/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/o/a/a$a;->FAILED:Lio/casper/android/o/a/a$a;

    new-instance v0, Lio/casper/android/o/a/a$a;

    const-string v1, "DOWNLOADED"

    invoke-direct {v0, v1, v6}, Lio/casper/android/o/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    new-instance v0, Lio/casper/android/o/a/a$a;

    const-string v1, "DELETED"

    invoke-direct {v0, v1, v7}, Lio/casper/android/o/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/o/a/a$a;->DELETED:Lio/casper/android/o/a/a$a;

    new-instance v0, Lio/casper/android/o/a/a$a;

    const-string v1, "VOID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/casper/android/o/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/o/a/a$a;->VOID:Lio/casper/android/o/a/a$a;

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [Lio/casper/android/o/a/a$a;

    sget-object v1, Lio/casper/android/o/a/a$a;->NONE:Lio/casper/android/o/a/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lio/casper/android/o/a/a$a;->DOWNLOADING:Lio/casper/android/o/a/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lio/casper/android/o/a/a$a;->FAILED:Lio/casper/android/o/a/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lio/casper/android/o/a/a$a;->DOWNLOADED:Lio/casper/android/o/a/a$a;

    aput-object v1, v0, v6

    sget-object v1, Lio/casper/android/o/a/a$a;->DELETED:Lio/casper/android/o/a/a$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lio/casper/android/o/a/a$a;->VOID:Lio/casper/android/o/a/a$a;

    aput-object v2, v0, v1

    sput-object v0, Lio/casper/android/o/a/a$a;->$VALUES:[Lio/casper/android/o/a/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/o/a/a$a;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lio/casper/android/o/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/o/a/a$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/o/a/a$a;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lio/casper/android/o/a/a$a;->$VALUES:[Lio/casper/android/o/a/a$a;

    invoke-virtual {v0}, [Lio/casper/android/o/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/o/a/a$a;

    return-object v0
.end method

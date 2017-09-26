.class public final enum Lio/casper/android/c/c/f/b;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/c/c/f/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/c/c/f/b;

.field public static final enum DELETE:Lio/casper/android/c/c/f/b;

.field public static final enum GET:Lio/casper/android/c/c/f/b;

.field public static final enum POST:Lio/casper/android/c/c/f/b;

.field public static final enum POST_BODY:Lio/casper/android/c/c/f/b;

.field public static final enum PUT:Lio/casper/android/c/c/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lio/casper/android/c/c/f/b;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lio/casper/android/c/c/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/c/c/f/b;->GET:Lio/casper/android/c/c/f/b;

    new-instance v0, Lio/casper/android/c/c/f/b;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lio/casper/android/c/c/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/c/c/f/b;->POST:Lio/casper/android/c/c/f/b;

    new-instance v0, Lio/casper/android/c/c/f/b;

    const-string v1, "POST_BODY"

    invoke-direct {v0, v1, v4}, Lio/casper/android/c/c/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/c/c/f/b;->POST_BODY:Lio/casper/android/c/c/f/b;

    new-instance v0, Lio/casper/android/c/c/f/b;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v5}, Lio/casper/android/c/c/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/c/c/f/b;->PUT:Lio/casper/android/c/c/f/b;

    new-instance v0, Lio/casper/android/c/c/f/b;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lio/casper/android/c/c/f/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/c/c/f/b;->DELETE:Lio/casper/android/c/c/f/b;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lio/casper/android/c/c/f/b;

    sget-object v1, Lio/casper/android/c/c/f/b;->GET:Lio/casper/android/c/c/f/b;

    aput-object v1, v0, v2

    sget-object v1, Lio/casper/android/c/c/f/b;->POST:Lio/casper/android/c/c/f/b;

    aput-object v1, v0, v3

    sget-object v1, Lio/casper/android/c/c/f/b;->POST_BODY:Lio/casper/android/c/c/f/b;

    aput-object v1, v0, v4

    sget-object v1, Lio/casper/android/c/c/f/b;->PUT:Lio/casper/android/c/c/f/b;

    aput-object v1, v0, v5

    sget-object v1, Lio/casper/android/c/c/f/b;->DELETE:Lio/casper/android/c/c/f/b;

    aput-object v1, v0, v6

    sput-object v0, Lio/casper/android/c/c/f/b;->$VALUES:[Lio/casper/android/c/c/f/b;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lio/casper/android/c/c/f/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/c/c/f/b;

    return-object v0
.end method

.method public static values()[Lio/casper/android/c/c/f/b;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lio/casper/android/c/c/f/b;->$VALUES:[Lio/casper/android/c/c/f/b;

    invoke-virtual {v0}, [Lio/casper/android/c/c/f/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/c/c/f/b;

    return-object v0
.end method

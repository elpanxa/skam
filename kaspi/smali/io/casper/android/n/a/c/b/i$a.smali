.class public final enum Lio/casper/android/n/a/c/b/i$a;
.super Ljava/lang/Enum;
.source "Friend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/a/c/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/n/a/c/b/i$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/n/a/c/b/i$a;

.field public static final enum BESTS:Lio/casper/android/n/a/c/b/i$a;

.field public static final enum DEFAULT:Lio/casper/android/n/a/c/b/i$a;

.field public static final enum RECENTS:Lio/casper/android/n/a/c/b/i$a;

.field public static final enum REPLY:Lio/casper/android/n/a/c/b/i$a;

.field public static final enum TYPE:Lio/casper/android/n/a/c/b/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    new-instance v0, Lio/casper/android/n/a/c/b/i$a;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lio/casper/android/n/a/c/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/a/c/b/i$a;->DEFAULT:Lio/casper/android/n/a/c/b/i$a;

    new-instance v0, Lio/casper/android/n/a/c/b/i$a;

    const-string v1, "BESTS"

    invoke-direct {v0, v1, v3}, Lio/casper/android/n/a/c/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/a/c/b/i$a;->BESTS:Lio/casper/android/n/a/c/b/i$a;

    new-instance v0, Lio/casper/android/n/a/c/b/i$a;

    const-string v1, "RECENTS"

    invoke-direct {v0, v1, v4}, Lio/casper/android/n/a/c/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/a/c/b/i$a;->RECENTS:Lio/casper/android/n/a/c/b/i$a;

    new-instance v0, Lio/casper/android/n/a/c/b/i$a;

    const-string v1, "REPLY"

    invoke-direct {v0, v1, v5}, Lio/casper/android/n/a/c/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/a/c/b/i$a;->REPLY:Lio/casper/android/n/a/c/b/i$a;

    new-instance v0, Lio/casper/android/n/a/c/b/i$a;

    const-string v1, "TYPE"

    invoke-direct {v0, v1, v6}, Lio/casper/android/n/a/c/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/casper/android/n/a/c/b/i$a;->TYPE:Lio/casper/android/n/a/c/b/i$a;

    .line 182
    const/4 v0, 0x5

    new-array v0, v0, [Lio/casper/android/n/a/c/b/i$a;

    sget-object v1, Lio/casper/android/n/a/c/b/i$a;->DEFAULT:Lio/casper/android/n/a/c/b/i$a;

    aput-object v1, v0, v2

    sget-object v1, Lio/casper/android/n/a/c/b/i$a;->BESTS:Lio/casper/android/n/a/c/b/i$a;

    aput-object v1, v0, v3

    sget-object v1, Lio/casper/android/n/a/c/b/i$a;->RECENTS:Lio/casper/android/n/a/c/b/i$a;

    aput-object v1, v0, v4

    sget-object v1, Lio/casper/android/n/a/c/b/i$a;->REPLY:Lio/casper/android/n/a/c/b/i$a;

    aput-object v1, v0, v5

    sget-object v1, Lio/casper/android/n/a/c/b/i$a;->TYPE:Lio/casper/android/n/a/c/b/i$a;

    aput-object v1, v0, v6

    sput-object v0, Lio/casper/android/n/a/c/b/i$a;->$VALUES:[Lio/casper/android/n/a/c/b/i$a;

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
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/n/a/c/b/i$a;
    .locals 1

    .prologue
    .line 182
    const-class v0, Lio/casper/android/n/a/c/b/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/a/c/b/i$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/n/a/c/b/i$a;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lio/casper/android/n/a/c/b/i$a;->$VALUES:[Lio/casper/android/n/a/c/b/i$a;

    invoke-virtual {v0}, [Lio/casper/android/n/a/c/b/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/n/a/c/b/i$a;

    return-object v0
.end method

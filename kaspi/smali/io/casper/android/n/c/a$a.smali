.class public final enum Lio/casper/android/n/c/a$a;
.super Ljava/lang/Enum;
.source "SnapchatDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/casper/android/n/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/casper/android/n/c/a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/casper/android/n/c/a$a;

.field public static final enum SNAPCHAT_BACKGROUND_UPLOADS:Lio/casper/android/n/c/a$a;

.field public static final enum SNAPCHAT_FRIENDS:Lio/casper/android/n/c/a$a;

.field public static final enum SNAPCHAT_FRIENDS_ADDED_ME:Lio/casper/android/n/c/a$a;

.field public static final enum SNAPCHAT_FRIEND_STORIES:Lio/casper/android/n/c/a$a;

.field public static final enum SNAPCHAT_GEOFILTERS:Lio/casper/android/n/c/a$a;

.field public static final enum SNAPCHAT_SNAPS:Lio/casper/android/n/c/a$a;

.field public static final enum SNAPCHAT_STORIES:Lio/casper/android/n/c/a$a;

.field public static final enum SNAPCHAT_STORY_NOTES:Lio/casper/android/n/c/a$a;

.field public static final enum ZELTA:Lio/casper/android/n/c/a$a;


# instance fields
.field private mDatabaseTable:Lio/casper/android/n/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    new-instance v0, Lio/casper/android/n/c/a$a;

    const-string v1, "SNAPCHAT_FRIENDS"

    invoke-static {}, Lio/casper/android/n/c/a/d;->i()Lio/casper/android/n/c/a/d;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lio/casper/android/n/c/a$a;-><init>(Ljava/lang/String;ILio/casper/android/n/c/b;)V

    sput-object v0, Lio/casper/android/n/c/a$a;->SNAPCHAT_FRIENDS:Lio/casper/android/n/c/a$a;

    .line 20
    new-instance v0, Lio/casper/android/n/c/a$a;

    const-string v1, "SNAPCHAT_FRIENDS_ADDED_ME"

    invoke-static {}, Lio/casper/android/n/c/a/a;->i()Lio/casper/android/n/c/a/a;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lio/casper/android/n/c/a$a;-><init>(Ljava/lang/String;ILio/casper/android/n/c/b;)V

    sput-object v0, Lio/casper/android/n/c/a$a;->SNAPCHAT_FRIENDS_ADDED_ME:Lio/casper/android/n/c/a$a;

    .line 21
    new-instance v0, Lio/casper/android/n/c/a$a;

    const-string v1, "SNAPCHAT_SNAPS"

    invoke-static {}, Lio/casper/android/n/c/a/f;->i()Lio/casper/android/n/c/a/f;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lio/casper/android/n/c/a$a;-><init>(Ljava/lang/String;ILio/casper/android/n/c/b;)V

    sput-object v0, Lio/casper/android/n/c/a$a;->SNAPCHAT_SNAPS:Lio/casper/android/n/c/a$a;

    .line 22
    new-instance v0, Lio/casper/android/n/c/a$a;

    const-string v1, "SNAPCHAT_STORIES"

    invoke-static {}, Lio/casper/android/n/c/a/g;->i()Lio/casper/android/n/c/a/g;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lio/casper/android/n/c/a$a;-><init>(Ljava/lang/String;ILio/casper/android/n/c/b;)V

    sput-object v0, Lio/casper/android/n/c/a$a;->SNAPCHAT_STORIES:Lio/casper/android/n/c/a$a;

    .line 23
    new-instance v0, Lio/casper/android/n/c/a$a;

    const-string v1, "SNAPCHAT_STORY_NOTES"

    invoke-static {}, Lio/casper/android/n/c/a/h;->i()Lio/casper/android/n/c/a/h;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lio/casper/android/n/c/a$a;-><init>(Ljava/lang/String;ILio/casper/android/n/c/b;)V

    sput-object v0, Lio/casper/android/n/c/a$a;->SNAPCHAT_STORY_NOTES:Lio/casper/android/n/c/a$a;

    .line 24
    new-instance v0, Lio/casper/android/n/c/a$a;

    const-string v1, "SNAPCHAT_FRIEND_STORIES"

    const/4 v2, 0x5

    invoke-static {}, Lio/casper/android/n/c/a/c;->i()Lio/casper/android/n/c/a/c;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/casper/android/n/c/a$a;-><init>(Ljava/lang/String;ILio/casper/android/n/c/b;)V

    sput-object v0, Lio/casper/android/n/c/a$a;->SNAPCHAT_FRIEND_STORIES:Lio/casper/android/n/c/a$a;

    .line 25
    new-instance v0, Lio/casper/android/n/c/a$a;

    const-string v1, "SNAPCHAT_GEOFILTERS"

    const/4 v2, 0x6

    invoke-static {}, Lio/casper/android/n/c/a/e;->i()Lio/casper/android/n/c/a/e;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/casper/android/n/c/a$a;-><init>(Ljava/lang/String;ILio/casper/android/n/c/b;)V

    sput-object v0, Lio/casper/android/n/c/a$a;->SNAPCHAT_GEOFILTERS:Lio/casper/android/n/c/a$a;

    .line 26
    new-instance v0, Lio/casper/android/n/c/a$a;

    const-string v1, "SNAPCHAT_BACKGROUND_UPLOADS"

    const/4 v2, 0x7

    invoke-static {}, Lio/casper/android/n/c/a/b;->i()Lio/casper/android/n/c/a/b;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/casper/android/n/c/a$a;-><init>(Ljava/lang/String;ILio/casper/android/n/c/b;)V

    sput-object v0, Lio/casper/android/n/c/a$a;->SNAPCHAT_BACKGROUND_UPLOADS:Lio/casper/android/n/c/a$a;

    .line 27
    new-instance v0, Lio/casper/android/n/c/a$a;

    const-string v1, "ZELTA"

    const/16 v2, 0x8

    invoke-static {}, Lio/casper/android/n/c/a/i;->i()Lio/casper/android/n/c/a/i;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/casper/android/n/c/a$a;-><init>(Ljava/lang/String;ILio/casper/android/n/c/b;)V

    sput-object v0, Lio/casper/android/n/c/a$a;->ZELTA:Lio/casper/android/n/c/a$a;

    .line 17
    const/16 v0, 0x9

    new-array v0, v0, [Lio/casper/android/n/c/a$a;

    sget-object v1, Lio/casper/android/n/c/a$a;->SNAPCHAT_FRIENDS:Lio/casper/android/n/c/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lio/casper/android/n/c/a$a;->SNAPCHAT_FRIENDS_ADDED_ME:Lio/casper/android/n/c/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lio/casper/android/n/c/a$a;->SNAPCHAT_SNAPS:Lio/casper/android/n/c/a$a;

    aput-object v1, v0, v6

    sget-object v1, Lio/casper/android/n/c/a$a;->SNAPCHAT_STORIES:Lio/casper/android/n/c/a$a;

    aput-object v1, v0, v7

    sget-object v1, Lio/casper/android/n/c/a$a;->SNAPCHAT_STORY_NOTES:Lio/casper/android/n/c/a$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lio/casper/android/n/c/a$a;->SNAPCHAT_FRIEND_STORIES:Lio/casper/android/n/c/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/casper/android/n/c/a$a;->SNAPCHAT_GEOFILTERS:Lio/casper/android/n/c/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lio/casper/android/n/c/a$a;->SNAPCHAT_BACKGROUND_UPLOADS:Lio/casper/android/n/c/a$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lio/casper/android/n/c/a$a;->ZELTA:Lio/casper/android/n/c/a$a;

    aput-object v2, v0, v1

    sput-object v0, Lio/casper/android/n/c/a$a;->$VALUES:[Lio/casper/android/n/c/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILio/casper/android/n/c/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/casper/android/n/c/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lio/casper/android/n/c/a$a;->mDatabaseTable:Lio/casper/android/n/c/b;

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/casper/android/n/c/a$a;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lio/casper/android/n/c/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/casper/android/n/c/a$a;

    return-object v0
.end method

.method public static values()[Lio/casper/android/n/c/a$a;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lio/casper/android/n/c/a$a;->$VALUES:[Lio/casper/android/n/c/a$a;

    invoke-virtual {v0}, [Lio/casper/android/n/c/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/casper/android/n/c/a$a;

    return-object v0
.end method


# virtual methods
.method public final getTable()Lio/casper/android/n/c/b;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lio/casper/android/n/c/a$a;->mDatabaseTable:Lio/casper/android/n/c/b;

    return-object v0
.end method

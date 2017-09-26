.class abstract Lcom/supersonic/mediationsdk/events/SupersonicDbHelper$EventEntry;
.super Ljava/lang/Object;
.source "SupersonicDbHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonic/mediationsdk/events/SupersonicDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EventEntry"
.end annotation


# static fields
.field public static final COLUMN_NAME_EVENT_ID:Ljava/lang/String; = "eventid"

.field public static final COLUMN_NAME_PLACEMENT:Ljava/lang/String; = "placement"

.field public static final COLUMN_NAME_PROVIDER:Ljava/lang/String; = "provider"

.field public static final COLUMN_NAME_REWARD_AMOUNT:Ljava/lang/String; = "reward_amount"

.field public static final COLUMN_NAME_REWARD_NAME:Ljava/lang/String; = "reward_name"

.field public static final COLUMN_NAME_SESSION_DEPTH:Ljava/lang/String; = "sessiondepth"

.field public static final COLUMN_NAME_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_NAME_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final COLUMN_NAME_TRANS_ID:Ljava/lang/String; = "transId"

.field public static final NUMBER_OF_COLUMNS:I = 0x9

.field public static final TABLE_NAME:Ljava/lang/String; = "events"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

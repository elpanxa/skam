.class Lcom/startapp/android/publish/h/d$b;
.super Lcom/startapp/android/publish/h/d$a;
.source "StartAppSDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/android/publish/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final synthetic g:Z

.field private static final h:[B

.field private static final i:[B


# instance fields
.field c:I

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field private final j:[B

.field private k:I

.field private final l:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 529
    const-class v0, Lcom/startapp/android/publish/h/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/startapp/android/publish/h/d$b;->g:Z

    .line 541
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/startapp/android/publish/h/d$b;->h:[B

    .line 552
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/startapp/android/publish/h/d$b;->i:[B

    return-void

    .line 529
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 541
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 552
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 568
    invoke-direct {p0}, Lcom/startapp/android/publish/h/d$a;-><init>()V

    .line 569
    iput-object p2, p0, Lcom/startapp/android/publish/h/d$b;->a:[B

    .line 571
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/startapp/android/publish/h/d$b;->d:Z

    .line 572
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/startapp/android/publish/h/d$b;->e:Z

    .line 573
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/startapp/android/publish/h/d$b;->f:Z

    .line 574
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    sget-object v0, Lcom/startapp/android/publish/h/d$b;->h:[B

    :goto_3
    iput-object v0, p0, Lcom/startapp/android/publish/h/d$b;->l:[B

    .line 576
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/startapp/android/publish/h/d$b;->j:[B

    .line 577
    iput v2, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    .line 579
    iget-boolean v0, p0, Lcom/startapp/android/publish/h/d$b;->e:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    :goto_4
    iput v0, p0, Lcom/startapp/android/publish/h/d$b;->k:I

    .line 580
    return-void

    :cond_0
    move v0, v2

    .line 571
    goto :goto_0

    :cond_1
    move v0, v2

    .line 572
    goto :goto_1

    :cond_2
    move v1, v2

    .line 573
    goto :goto_2

    .line 574
    :cond_3
    sget-object v0, Lcom/startapp/android/publish/h/d$b;->i:[B

    goto :goto_3

    .line 579
    :cond_4
    const/4 v0, -0x1

    goto :goto_4
.end method


# virtual methods
.method public a([BIIZ)Z
    .locals 11

    .prologue
    .line 592
    iget-object v6, p0, Lcom/startapp/android/publish/h/d$b;->l:[B

    .line 593
    iget-object v7, p0, Lcom/startapp/android/publish/h/d$b;->a:[B

    .line 594
    const/4 v1, 0x0

    .line 595
    iget v0, p0, Lcom/startapp/android/publish/h/d$b;->k:I

    .line 598
    add-int v8, p3, p2

    .line 599
    const/4 v2, -0x1

    .line 605
    iget v3, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v3, p2

    .line 632
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_14

    .line 633
    const/4 v4, 0x1

    shr-int/lit8 v5, v2, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v1

    .line 634
    const/4 v1, 0x2

    shr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v4

    .line 635
    const/4 v4, 0x3

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v6, v5

    aput-byte v5, v7, v1

    .line 636
    const/4 v1, 0x4

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v4

    .line 637
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_14

    .line 638
    iget-boolean v0, p0, Lcom/startapp/android/publish/h/d$b;->f:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x5

    const/16 v2, 0xd

    aput-byte v2, v7, v1

    .line 639
    :goto_1
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    .line 640
    const/16 v0, 0x13

    move v5, v0

    move v4, v1

    .line 649
    :goto_2
    add-int/lit8 v0, v3, 0x3

    if-gt v0, v8, :cond_1

    .line 650
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, v3, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 653
    shr-int/lit8 v1, v0, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v6, v1

    aput-byte v1, v7, v4

    .line 654
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    .line 655
    add-int/lit8 v1, v4, 0x2

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v1

    .line 656
    add-int/lit8 v1, v4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v1

    .line 657
    add-int/lit8 v3, v3, 0x3

    .line 658
    add-int/lit8 v1, v4, 0x4

    .line 659
    add-int/lit8 v0, v5, -0x1

    if-nez v0, :cond_14

    .line 660
    iget-boolean v0, p0, Lcom/startapp/android/publish/h/d$b;->f:Z

    if-eqz v0, :cond_13

    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0xd

    aput-byte v2, v7, v1

    .line 661
    :goto_3
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    .line 662
    const/16 v0, 0x13

    move v5, v0

    move v4, v1

    goto :goto_2

    :pswitch_0
    move v3, p2

    .line 608
    goto/16 :goto_0

    .line 611
    :pswitch_1
    add-int/lit8 v3, p2, 0x2

    if-gt v3, v8, :cond_0

    .line 614
    iget-object v2, p0, Lcom/startapp/android/publish/h/d$b;->j:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 p2, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    .line 617
    const/4 v3, 0x0

    iput v3, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    move v3, p2

    goto/16 :goto_0

    .line 622
    :pswitch_2
    add-int/lit8 v3, p2, 0x1

    if-gt v3, v8, :cond_0

    .line 624
    iget-object v2, p0, Lcom/startapp/android/publish/h/d$b;->j:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lcom/startapp/android/publish/h/d$b;->j:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v2, v4

    .line 627
    const/4 v4, 0x0

    iput v4, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    goto/16 :goto_0

    .line 666
    :cond_1
    if-eqz p4, :cond_e

    .line 672
    iget v0, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    sub-int v0, v3, v0

    add-int/lit8 v1, v8, -0x1

    if-ne v0, v1, :cond_7

    .line 673
    const/4 v2, 0x0

    .line 674
    iget v0, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/startapp/android/publish/h/d$b;->j:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v2

    move v2, v3

    :goto_4
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x4

    .line 675
    iget v0, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    .line 676
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v0, v3, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v4

    .line 677
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, v7, v1

    .line 678
    iget-boolean v1, p0, Lcom/startapp/android/publish/h/d$b;->d:Z

    if-eqz v1, :cond_2

    .line 679
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v7, v0

    .line 680
    add-int/lit8 v0, v1, 0x1

    const/16 v3, 0x3d

    aput-byte v3, v7, v1

    .line 682
    :cond_2
    iget-boolean v1, p0, Lcom/startapp/android/publish/h/d$b;->e:Z

    if-eqz v1, :cond_4

    .line 683
    iget-boolean v1, p0, Lcom/startapp/android/publish/h/d$b;->f:Z

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0xd

    aput-byte v3, v7, v0

    move v0, v1

    .line 684
    :cond_3
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0xa

    aput-byte v3, v7, v0

    move v0, v1

    :cond_4
    move v3, v2

    move v4, v0

    .line 706
    :cond_5
    :goto_5
    sget-boolean v0, Lcom/startapp/android/publish/h/d$b;->g:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 674
    :cond_6
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, p1, v3

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_4

    .line 686
    :cond_7
    iget v0, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    sub-int v0, v3, v0

    add-int/lit8 v1, v8, -0x2

    if-ne v0, v1, :cond_c

    .line 687
    const/4 v2, 0x0

    .line 688
    iget v0, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    iget-object v0, p0, Lcom/startapp/android/publish/h/d$b;->j:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v2

    :goto_6
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v9, v0, 0xa

    iget v0, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/startapp/android/publish/h/d$b;->j:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, v0, v1

    move v1, v2

    :goto_7
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v9

    .line 690
    iget v2, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    .line 691
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v6, v2

    aput-byte v2, v7, v4

    .line 692
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v6, v4

    aput-byte v4, v7, v1

    .line 693
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v6, v0

    aput-byte v0, v7, v2

    .line 694
    iget-boolean v0, p0, Lcom/startapp/android/publish/h/d$b;->d:Z

    if-eqz v0, :cond_12

    .line 695
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x3d

    aput-byte v2, v7, v1

    .line 697
    :goto_8
    iget-boolean v1, p0, Lcom/startapp/android/publish/h/d$b;->e:Z

    if-eqz v1, :cond_9

    .line 698
    iget-boolean v1, p0, Lcom/startapp/android/publish/h/d$b;->f:Z

    if-eqz v1, :cond_8

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xd

    aput-byte v2, v7, v0

    move v0, v1

    .line 699
    :cond_8
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    aput-byte v2, v7, v0

    move v0, v1

    :cond_9
    move v4, v0

    .line 701
    goto :goto_5

    .line 688
    :cond_a
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, p1, v3

    move v3, v1

    move v1, v2

    goto :goto_6

    :cond_b
    add-int/lit8 v2, v3, 0x1

    aget-byte v0, p1, v3

    move v3, v2

    goto :goto_7

    .line 701
    :cond_c
    iget-boolean v0, p0, Lcom/startapp/android/publish/h/d$b;->e:Z

    if-eqz v0, :cond_5

    if-lez v4, :cond_5

    const/16 v0, 0x13

    if-eq v5, v0, :cond_5

    .line 702
    iget-boolean v0, p0, Lcom/startapp/android/publish/h/d$b;->f:Z

    if-eqz v0, :cond_11

    add-int/lit8 v0, v4, 0x1

    const/16 v1, 0xd

    aput-byte v1, v7, v4

    .line 703
    :goto_9
    add-int/lit8 v4, v0, 0x1

    const/16 v1, 0xa

    aput-byte v1, v7, v0

    goto/16 :goto_5

    .line 707
    :cond_d
    sget-boolean v0, Lcom/startapp/android/publish/h/d$b;->g:Z

    if-nez v0, :cond_f

    if-eq v3, v8, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 712
    :cond_e
    add-int/lit8 v0, v8, -0x1

    if-ne v3, v0, :cond_10

    .line 713
    iget-object v0, p0, Lcom/startapp/android/publish/h/d$b;->j:[B

    iget v1, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    .line 720
    :cond_f
    :goto_a
    iput v4, p0, Lcom/startapp/android/publish/h/d$b;->b:I

    .line 721
    iput v5, p0, Lcom/startapp/android/publish/h/d$b;->k:I

    .line 723
    const/4 v0, 0x1

    return v0

    .line 714
    :cond_10
    add-int/lit8 v0, v8, -0x2

    if-ne v3, v0, :cond_f

    .line 715
    iget-object v0, p0, Lcom/startapp/android/publish/h/d$b;->j:[B

    iget v1, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    .line 716
    iget-object v0, p0, Lcom/startapp/android/publish/h/d$b;->j:[B

    iget v1, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/startapp/android/publish/h/d$b;->c:I

    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    goto :goto_a

    :cond_11
    move v0, v4

    goto :goto_9

    :cond_12
    move v0, v1

    goto/16 :goto_8

    :cond_13
    move v0, v1

    goto/16 :goto_3

    :cond_14
    move v5, v0

    move v4, v1

    goto/16 :goto_2

    :cond_15
    move v0, v1

    goto/16 :goto_1

    .line 605
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

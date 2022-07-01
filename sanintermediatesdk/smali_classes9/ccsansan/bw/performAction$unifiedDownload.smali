.class Lccsansan/bw/performAction$unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/performAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "unifiedDownload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;
    }
.end annotation


# static fields
.field private static final IncentiveDownloadUtils:[B

.field private static final removeDownloadListener:[S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xff

    new-array v1, v0, [S

    fill-array-data v1, :array_0

    sput-object v1, Lccsansan/bw/performAction$unifiedDownload;->removeDownloadListener:[S

    .line 20
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lccsansan/bw/performAction$unifiedDownload;->IncentiveDownloadUtils:[B

    return-void

    nop

    :array_0
    .array-data 2
        0x200s
        0x200s
        0x1c8s
        0x200s
        0x148s
        0x1c8s
        0x14fs
        0x200s
        0x195s
        0x148s
        0x10fs
        0x1c8s
        0x184s
        0x14fs
        0x124s
        0x200s
        0x1c6s
        0x195s
        0x16cs
        0x148s
        0x12as
        0x10fs
        0x1f0s
        0x1c8s
        0x1a4s
        0x184s
        0x168s
        0x14fs
        0x138s
        0x124s
        0x111s
        0x200s
        0x1e2s
        0x1c6s
        0x1acs
        0x195s
        0x17fs
        0x16cs
        0x159s
        0x148s
        0x138s
        0x12as
        0x11cs
        0x10fs
        0x103s
        0x1f0s
        0x1dbs
        0x1c8s
        0x1b5s
        0x1a4s
        0x194s
        0x184s
        0x176s
        0x168s
        0x15bs
        0x14fs
        0x143s
        0x138s
        0x12es
        0x124s
        0x11as
        0x111s
        0x109s
        0x200s
        0x1f1s
        0x1e2s
        0x1d4s
        0x1c6s
        0x1b9s
        0x1acs
        0x1a1s
        0x195s
        0x18as
        0x17fs
        0x175s
        0x16cs
        0x162s
        0x159s
        0x151s
        0x148s
        0x140s
        0x138s
        0x131s
        0x12as
        0x123s
        0x11cs
        0x116s
        0x10fs
        0x109s
        0x103s
        0x1fbs
        0x1f0s
        0x1e5s
        0x1dbs
        0x1d1s
        0x1c8s
        0x1bes
        0x1b5s
        0x1acs
        0x1a4s
        0x19cs
        0x194s
        0x18cs
        0x184s
        0x17ds
        0x176s
        0x16fs
        0x168s
        0x162s
        0x15bs
        0x155s
        0x14fs
        0x149s
        0x143s
        0x13es
        0x138s
        0x133s
        0x12es
        0x129s
        0x124s
        0x11fs
        0x11as
        0x116s
        0x111s
        0x10ds
        0x109s
        0x105s
        0x200s
        0x1f9s
        0x1f1s
        0x1e9s
        0x1e2s
        0x1dbs
        0x1d4s
        0x1cds
        0x1c6s
        0x1bfs
        0x1b9s
        0x1b3s
        0x1acs
        0x1a6s
        0x1a1s
        0x19bs
        0x195s
        0x18fs
        0x18as
        0x185s
        0x17fs
        0x17as
        0x175s
        0x170s
        0x16cs
        0x167s
        0x162s
        0x15es
        0x159s
        0x155s
        0x151s
        0x14cs
        0x148s
        0x144s
        0x140s
        0x13cs
        0x138s
        0x135s
        0x131s
        0x12ds
        0x12as
        0x126s
        0x123s
        0x11fs
        0x11cs
        0x119s
        0x116s
        0x112s
        0x10fs
        0x10cs
        0x109s
        0x106s
        0x103s
        0x101s
        0x1fbs
        0x1f5s
        0x1f0s
        0x1ebs
        0x1e5s
        0x1e0s
        0x1dbs
        0x1d6s
        0x1d1s
        0x1ccs
        0x1c8s
        0x1c3s
        0x1bes
        0x1bas
        0x1b5s
        0x1b1s
        0x1acs
        0x1a8s
        0x1a4s
        0x1a0s
        0x19cs
        0x198s
        0x194s
        0x190s
        0x18cs
        0x188s
        0x184s
        0x181s
        0x17ds
        0x179s
        0x176s
        0x172s
        0x16fs
        0x16bs
        0x168s
        0x165s
        0x162s
        0x15es
        0x15bs
        0x158s
        0x155s
        0x152s
        0x14fs
        0x14cs
        0x149s
        0x146s
        0x143s
        0x140s
        0x13es
        0x13bs
        0x138s
        0x136s
        0x133s
        0x130s
        0x12es
        0x12bs
        0x129s
        0x126s
        0x124s
        0x121s
        0x11fs
        0x11ds
        0x11as
        0x118s
        0x116s
        0x113s
        0x111s
        0x10fs
        0x10ds
        0x10bs
        0x109s
        0x107s
        0x105s
        0x103s
    .end array-data

    nop

    :array_1
    .array-data 1
        0x9t
        0xbt
        0xct
        0xdt
        0xdt
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsansan/bw/performAction$addDownloadListener;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lccsansan/bw/performAction$unifiedDownload;-><init>()V

    return-void
.end method

.method static synthetic addDownloadListener([IIIIIII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lccsansan/bw/performAction$unifiedDownload;->unifiedDownload([IIIIIII)V

    return-void
.end method

.method private static unifiedDownload([IIIIIII)V
    .locals 42

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p6

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v1, -0x1

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 1
    sget-object v8, Lccsansan/bw/performAction$unifiedDownload;->removeDownloadListener:[S

    aget-short v8, v8, v2

    .line 2
    sget-object v9, Lccsansan/bw/performAction$unifiedDownload;->IncentiveDownloadUtils:[B

    aget-byte v9, v9, v2

    .line 3
    new-array v10, v6, [I

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x10

    if-ne v3, v7, :cond_8

    mul-int v3, p5, v1

    .line 6
    div-int v3, v3, p4

    add-int/lit8 v5, p5, 0x1

    mul-int v5, v5, v1

    .line 7
    div-int v5, v5, p4

    :goto_0
    if-ge v3, v5, :cond_11

    mul-int v1, v0, v3

    const/4 v12, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    :goto_1
    if-gt v12, v2, :cond_0

    .line 18
    aget v13, p0, v1

    aput v13, v10, v12

    .line 19
    aget v13, p0, v1

    ushr-int/lit8 v13, v13, 0x10

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v12, v12, 0x1

    mul-int v13, v13, v12

    int-to-long v14, v13

    add-long v19, v19, v14

    .line 20
    aget v13, p0, v1

    ushr-int/lit8 v13, v13, 0x8

    and-int/lit16 v13, v13, 0xff

    mul-int v13, v13, v12

    int-to-long v13, v13

    add-long v21, v21, v13

    .line 21
    aget v13, p0, v1

    and-int/lit16 v13, v13, 0xff

    mul-int v13, v13, v12

    int-to-long v13, v13

    add-long v23, v23, v13

    .line 22
    aget v13, p0, v1

    ushr-int/lit8 v13, v13, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-long v13, v13

    add-long v29, v29, v13

    .line 23
    aget v13, p0, v1

    ushr-int/lit8 v13, v13, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-long v13, v13

    add-long v27, v27, v13

    .line 24
    aget v13, p0, v1

    and-int/lit16 v13, v13, 0xff

    int-to-long v13, v13

    add-long v25, v25, v13

    goto :goto_1

    :cond_0
    move v13, v1

    const/4 v12, 0x1

    const-wide/16 v14, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    :goto_2
    if-gt v12, v2, :cond_2

    if-gt v12, v4, :cond_1

    add-int/lit8 v13, v13, 0x1

    :cond_1
    add-int v37, v12, v2

    .line 31
    aget v38, p0, v13

    aput v38, v10, v37

    .line 32
    aget v37, p0, v13

    ushr-int/lit8 v7, v37, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v37, v2, 0x1

    sub-int v37, v37, v12

    mul-int v7, v7, v37

    move/from16 p2, v12

    int-to-long v11, v7

    add-long v19, v19, v11

    .line 33
    aget v7, p0, v13

    ushr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    mul-int v7, v7, v37

    int-to-long v11, v7

    add-long v21, v21, v11

    .line 34
    aget v7, p0, v13

    and-int/lit16 v7, v7, 0xff

    mul-int v7, v7, v37

    int-to-long v11, v7

    add-long v23, v23, v11

    .line 35
    aget v7, p0, v13

    ushr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-long v11, v7

    add-long v33, v33, v11

    .line 36
    aget v7, p0, v13

    ushr-int/lit8 v7, v7, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-long v11, v7

    add-long v35, v35, v11

    .line 37
    aget v7, p0, v13

    and-int/lit16 v7, v7, 0xff

    int-to-long v11, v7

    add-long/2addr v14, v11

    add-int/lit8 v12, p2, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    if-le v2, v4, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    add-int v11, v7, v1

    move v13, v2

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v0, :cond_7

    .line 47
    aget v37, p0, v1

    move/from16 p2, v5

    const/high16 v39, -0x1000000

    and-int v5, v37, v39

    move-wide/from16 p4, v14

    int-to-long v14, v5

    move/from16 p6, v11

    move v5, v12

    int-to-long v11, v8

    mul-long v40, v19, v11

    ushr-long v40, v40, v9

    const-wide/16 v31, 0xff

    and-long v40, v40, v31

    shl-long v40, v40, v18

    or-long v14, v14, v40

    mul-long v40, v21, v11

    ushr-long v40, v40, v9

    and-long v40, v40, v31

    shl-long v40, v40, v17

    or-long v14, v14, v40

    mul-long v11, v11, v23

    ushr-long/2addr v11, v9

    and-long v11, v11, v31

    or-long/2addr v11, v14

    long-to-int v12, v11

    aput v12, p0, v1

    const/4 v11, 0x1

    add-int/2addr v1, v11

    sub-long v19, v19, v29

    sub-long v21, v21, v27

    sub-long v23, v23, v25

    add-int v11, v13, v6

    sub-int/2addr v11, v2

    if-lt v11, v6, :cond_4

    sub-int/2addr v11, v6

    .line 63
    :cond_4
    aget v12, v10, v11

    ushr-int/lit8 v12, v12, 0x10

    and-int/lit16 v12, v12, 0xff

    int-to-long v14, v12

    sub-long v29, v29, v14

    .line 64
    aget v12, v10, v11

    ushr-int/lit8 v12, v12, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-long v14, v12

    sub-long v27, v27, v14

    .line 65
    aget v12, v10, v11

    and-int/lit16 v12, v12, 0xff

    int-to-long v14, v12

    sub-long v25, v25, v14

    if-ge v7, v4, :cond_5

    add-int/lit8 v12, p6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    move/from16 v12, p6

    .line 72
    :goto_5
    aget v14, p0, v12

    aput v14, v10, v11

    .line 74
    aget v11, p0, v12

    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-long v14, v11

    add-long v33, v33, v14

    .line 75
    aget v11, p0, v12

    ushr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-long v14, v11

    add-long v35, v35, v14

    .line 76
    aget v11, p0, v12

    and-int/lit16 v11, v11, 0xff

    int-to-long v14, v11

    move-wide/from16 v40, p4

    add-long v14, v40, v14

    add-long v19, v19, v33

    add-long v21, v21, v35

    add-long v23, v23, v14

    add-int/lit8 v13, v13, 0x1

    if-lt v13, v6, :cond_6

    const/4 v13, 0x0

    .line 86
    :cond_6
    aget v11, v10, v13

    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    move/from16 p4, v12

    int-to-long v11, v11

    add-long v29, v29, v11

    .line 87
    aget v11, v10, v13

    ushr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    add-long v27, v27, v11

    .line 88
    aget v11, v10, v13

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    add-long v25, v25, v11

    .line 89
    aget v11, v10, v13

    ushr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    sub-long v33, v33, v11

    .line 90
    aget v11, v10, v13

    ushr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    sub-long v35, v35, v11

    .line 91
    aget v11, v10, v13

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    sub-long/2addr v14, v11

    add-int/lit8 v12, v5, 0x1

    move/from16 v5, p2

    move/from16 v11, p4

    goto/16 :goto_4

    :cond_7
    move/from16 p2, v5

    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x2

    if-ne v3, v4, :cond_11

    mul-int v3, p5, v0

    .line 99
    div-int v3, v3, p4

    const/4 v11, 0x1

    add-int/lit8 v4, p5, 0x1

    mul-int v4, v4, v0

    .line 100
    div-int v4, v4, p4

    :goto_6
    if-ge v3, v4, :cond_11

    const/4 v7, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    :goto_7
    if-gt v7, v2, :cond_9

    .line 110
    aget v27, p0, v3

    aput v27, v10, v7

    .line 111
    aget v27, p0, v3

    ushr-int/lit8 v11, v27, 0x10

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v7, v7, 0x1

    mul-int v11, v11, v7

    move/from16 v27, v8

    move/from16 v28, v9

    int-to-long v8, v11

    add-long/2addr v12, v8

    .line 112
    aget v8, p0, v3

    ushr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    mul-int v8, v8, v7

    int-to-long v8, v8

    add-long/2addr v14, v8

    .line 113
    aget v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    mul-int v8, v8, v7

    int-to-long v8, v8

    add-long v19, v19, v8

    .line 114
    aget v8, p0, v3

    ushr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    add-long v25, v25, v8

    .line 115
    aget v8, p0, v3

    ushr-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    add-long v23, v23, v8

    .line 116
    aget v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    add-long v21, v21, v8

    move/from16 v8, v27

    move/from16 v9, v28

    const/4 v11, 0x1

    goto :goto_7

    :cond_9
    move/from16 v27, v8

    move/from16 v28, v9

    move v7, v3

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const-wide/16 v29, 0x0

    const-wide/16 v33, 0x0

    :goto_8
    if-gt v11, v2, :cond_b

    if-gt v11, v5, :cond_a

    add-int/2addr v7, v0

    :cond_a
    add-int v35, v11, v2

    .line 123
    aget v36, p0, v7

    aput v36, v10, v35

    .line 124
    aget v35, p0, v7

    move/from16 p4, v4

    ushr-int/lit8 v4, v35, 0x10

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v35, v2, 0x1

    sub-int v35, v35, v11

    mul-int v4, v4, v35

    move/from16 v36, v3

    int-to-long v3, v4

    add-long/2addr v12, v3

    .line 125
    aget v3, p0, v7

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    mul-int v3, v3, v35

    int-to-long v3, v3

    add-long/2addr v14, v3

    .line 126
    aget v3, p0, v7

    and-int/lit16 v3, v3, 0xff

    mul-int v3, v3, v35

    int-to-long v3, v3

    add-long v19, v19, v3

    .line 127
    aget v3, p0, v7

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v8, v3

    .line 128
    aget v3, p0, v7

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long v29, v29, v3

    .line 129
    aget v3, p0, v7

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long v33, v33, v3

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, p4

    move/from16 v3, v36

    goto :goto_8

    :cond_b
    move/from16 v36, v3

    move/from16 p4, v4

    if-le v2, v5, :cond_c

    move v3, v5

    goto :goto_9

    :cond_c
    move v3, v2

    :goto_9
    mul-int v4, v3, v0

    add-int v4, v36, v4

    move v11, v2

    move/from16 v35, v36

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v1, :cond_10

    .line 139
    aget v37, p0, v35

    const/high16 v39, -0x1000000

    and-int v1, v37, v39

    move-wide/from16 p5, v8

    move v9, v7

    int-to-long v7, v1

    move/from16 v37, v4

    move/from16 v1, v27

    move/from16 v27, v3

    int-to-long v3, v1

    mul-long v40, v12, v3

    ushr-long v40, v40, v28

    const-wide/16 v31, 0xff

    and-long v40, v40, v31

    shl-long v40, v40, v18

    or-long v7, v7, v40

    mul-long v40, v14, v3

    ushr-long v40, v40, v28

    and-long v40, v40, v31

    shl-long v40, v40, v17

    or-long v7, v7, v40

    mul-long v3, v3, v19

    ushr-long v3, v3, v28

    and-long v3, v3, v31

    or-long/2addr v3, v7

    long-to-int v4, v3

    aput v4, p0, v35

    add-int v35, v35, v0

    sub-long v12, v12, v25

    sub-long v14, v14, v23

    sub-long v19, v19, v21

    add-int v3, v11, v6

    sub-int/2addr v3, v2

    if-lt v3, v6, :cond_d

    sub-int/2addr v3, v6

    .line 155
    :cond_d
    aget v4, v10, v3

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    sub-long v25, v25, v7

    .line 156
    aget v4, v10, v3

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    sub-long v23, v23, v7

    .line 157
    aget v4, v10, v3

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    sub-long v21, v21, v7

    move/from16 v4, v27

    if-ge v4, v5, :cond_e

    add-int v7, v37, v0

    add-int/lit8 v4, v4, 0x1

    move/from16 v37, v7

    .line 164
    :cond_e
    aget v7, p0, v37

    aput v7, v10, v3

    .line 166
    aget v3, p0, v37

    ushr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-long v7, v3

    move-wide/from16 v40, p5

    add-long v7, v40, v7

    .line 167
    aget v3, p0, v37

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    move/from16 v27, v1

    int-to-long v0, v3

    add-long v29, v29, v0

    .line 168
    aget v0, p0, v37

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long v33, v33, v0

    add-long/2addr v12, v7

    add-long v14, v14, v29

    add-long v19, v19, v33

    add-int/lit8 v11, v11, 0x1

    if-lt v11, v6, :cond_f

    const/4 v11, 0x0

    .line 178
    :cond_f
    aget v0, v10, v11

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long v25, v25, v0

    .line 179
    aget v0, v10, v11

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long v23, v23, v0

    .line 180
    aget v0, v10, v11

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-long v21, v21, v0

    .line 181
    aget v0, v10, v11

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    sub-long v0, v7, v0

    .line 182
    aget v3, v10, v11

    ushr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-long v7, v3

    sub-long v29, v29, v7

    .line 183
    aget v3, v10, v11

    and-int/lit16 v3, v3, 0xff

    int-to-long v7, v3

    sub-long v33, v33, v7

    add-int/lit8 v7, v9, 0x1

    move-wide v8, v0

    move v3, v4

    move/from16 v4, v37

    move/from16 v0, p1

    move/from16 v1, p2

    goto/16 :goto_a

    :cond_10
    const-wide/16 v31, 0xff

    const/high16 v39, -0x1000000

    add-int/lit8 v3, v36, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v4, p4

    move/from16 v8, v27

    move/from16 v9, v28

    const/4 v11, 0x1

    goto/16 :goto_6

    :cond_11
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsanandroid/graphics/Bitmap;I)Lccsanandroid/graphics/Bitmap;
    .locals 16

    .line 2
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 3
    invoke-virtual/range {p1 .. p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v1, v0, v9

    .line 4
    new-array v10, v1, [I

    .line 5
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Lccsanandroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 6
    invoke-static {}, Lccsansan/bw/performAction;->addDownloadListener()I

    move-result v11

    .line 8
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_0

    .line 11
    new-instance v15, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;

    const/4 v8, 0x1

    move-object v1, v15

    move-object v2, v10

    move v3, v0

    move v4, v9

    move/from16 v5, p2

    move v6, v11

    move v7, v14

    invoke-direct/range {v1 .. v8}, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;-><init>([IIIIIII)V

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v15, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;

    const/4 v8, 0x2

    move-object v1, v15

    invoke-direct/range {v1 .. v8}, Lccsansan/bw/performAction$unifiedDownload$IncentiveDownloadUtils;-><init>([IIIIIII)V

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/performAction;->unifiedDownload()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v12}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    :try_start_1
    invoke-static {}, Lccsansan/bw/performAction;->unifiedDownload()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v13}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 27
    sget-object v1, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v10, v0, v9, v1}, Lccsanandroid/graphics/Bitmap;->createBitmap([IIILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    return-object v1

    :catch_1
    move-exception v0

    return-object v1
.end method

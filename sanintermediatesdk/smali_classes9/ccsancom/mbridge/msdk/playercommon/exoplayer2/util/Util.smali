.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final CRC32_BYTES_MSBF:[I

.field public static final DEVICE:Ljava/lang/String;

.field public static final DEVICE_DEBUG_INFO:Ljava/lang/String;

.field private static final ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final SDK_INT:I

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static final XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final XS_DURATION_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 77
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    sget-object v0, Lccsanandroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    .line 78
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    :goto_0
    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    .line 84
    sget-object v1, Lccsanandroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->DEVICE:Ljava/lang/String;

    .line 90
    sget-object v2, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 96
    sget-object v3, Lccsanandroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 105
    const-string v0, "(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    .line 109
    nop

    .line 110
    const-string v0, "^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    .line 112
    const-string v0, "%([A-Fa-f0-9]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    .line 1552
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->CRC32_BYTES_MSBF:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x4c11db7
        0x9823b6e
        0xd4326d9
        0x130476dc
        0x17c56b6b
        0x1a864db2
        0x1e475005
        0x2608edb8
        0x22c9f00f
        0x2f8ad6d6
        0x2b4bcb61
        0x350c9b64
        0x31cd86d3
        0x3c8ea00a
        0x384fbdbd
        0x4c11db70    # 3.8235584E7f
        0x48d0c6c7
        0x4593e01e
        0x4152fda9
        0x5f15adac
        0x5bd4b01b
        0x569796c2
        0x52568b75
        0x6a1936c8
        0x6ed82b7f
        0x639b0da6
        0x675a1011
        0x791d4014
        0x7ddc5da3
        0x709f7b7a
        0x745e66cd
        -0x67dc4920
        -0x631d54a9    # -1.4999716E-21f
        -0x6e5e7272
        -0x6a9f6fc7
        -0x74d83fc4
        -0x70192275
        -0x7d5a04ae
        -0x799b191b
        -0x41d4a4a8
        -0x4515b911
        -0x48569fca
        -0x4c97827f
        -0x52d0d27c
        -0x5611cfcd
        -0x5b52e916
        -0x5f93f4a3    # -1.9993737E-19f
        -0x2bcd9270
        -0x2f0c8fd9
        -0x224fa902
        -0x268eb4b7
        -0x38c9e4b4
        -0x3c08f905
        -0x314bdfde
        -0x358ac26b
        -0xdc57fd8
        -0x9046261
        -0x44744ba
        -0x86590f
        -0x1ec1090c
        -0x1a0014bd
        -0x17433266
        -0x13822fd3
        0x34867077
        0x30476dc0
        0x3d044b19
        0x39c556ae
        0x278206ab
        0x23431b1c
        0x2e003dc5
        0x2ac12072
        0x128e9dcf    # 9.000363E-28f
        0x164f8078
        0x1b0ca6a1
        0x1fcdbb16
        0x18aeb13
        0x54bf6a4
        0x808d07d
        0xcc9cdca
        0x7897ab07
        0x7c56b6b0
        0x71159069
        0x75d48dde
        0x6b93dddb
        0x6f52c06c
        0x6211e6b5
        0x66d0fb02
        0x5e9f46bf
        0x5a5e5b08
        0x571d7dd1
        0x53dc6066
        0x4d9b3063    # 3.25454944E8f
        0x495a2dd4    # 893661.25f
        0x44190b0d
        0x40d816ba
        -0x535a3969
        -0x579b24e0
        -0x5ad80207
        -0x5e191fb2
        -0x405e4fb5
        -0x449f5204
        -0x49dc74db
        -0x4d1d696e
        -0x7552d4d1
        -0x7193c968
        -0x7cd0efbf
        -0x7811f20a
        -0x6656a20d
        -0x6297bfbc
        -0x6fd49963
        -0x6b1584d6
        -0x1f4be219
        -0x1b8affb0
        -0x16c9d977
        -0x1208c4c2
        -0xc4f94c5
        -0x88e8974
        -0x5cdafab
        -0x10cb21e
        -0x39430fa1
        -0x3d821218
        -0x30c134cf
        -0x3400297a
        -0x2a47797d
        -0x2e8664cc
        -0x23c54213
        -0x27045fa6
        0x690ce0ee
        0x6dcdfd59
        0x608edb80
        0x644fc637
        0x7a089632
        0x7ec98b85
        0x738aad5c
        0x774bb0eb
        0x4f040d56
        0x4bc510e1    # 2.5829826E7f
        0x46863638
        0x42472b8f
        0x5c007b8a
        0x58c1663d
        0x558240e4
        0x51435d53
        0x251d3b9e
        0x21dc2629
        0x2c9f00f0
        0x285e1d47
        0x36194d42
        0x32d850f5
        0x3f9b762c
        0x3b5a6b9b
        0x315d626
        0x7d4cb91
        0xa97ed48
        0xe56f0ff
        0x1011a0fa
        0x14d0bd4d
        0x19939b94
        0x1d528623
        -0xed0a9f2
        -0xa11b447
        -0x75292a0
        -0x3938f29
        -0x1dd4df2e
        -0x1915c29b
        -0x1456e444
        -0x1097f9f5
        -0x28d8444a
        -0x2c1959ff
        -0x215a7f28
        -0x259b6291
        -0x3bdc3296
        -0x3f1d2f23
        -0x325e09fc
        -0x369f144d
        -0x42c17282
        -0x46006f37
        -0x4b4349f0
        -0x4f825459
        -0x51c5045e
        -0x550419eb
        -0x58473f34
        -0x5c862285
        -0x64c99f3a
        -0x6008828f
        -0x6d4ba458
        -0x698ab9e1
        -0x77cde9e6
        -0x730cf453
        -0x7e4fd28c
        -0x7a8ecf3d
        0x5d8a9099
        0x594b8d2e
        0x5408abf7
        0x50c9b640
        0x4e8ee645
        0x4a4ffbf2    # 3407612.5f
        0x470cdd2b
        0x43cdc09c
        0x7b827d21
        0x7f436096
        0x7200464f
        0x76c15bf8
        0x68860bfd
        0x6c47164a
        0x61043093
        0x65c52d24
        0x119b4be9
        0x155a565e
        0x18197087
        0x1cd86d30
        0x29f3d35
        0x65e2082
        0xb1d065b
        0xfdc1bec
        0x3793a651
        0x3352bbe6
        0x3e119d3f
        0x3ad08088
        0x2497d08d
        0x2056cd3a
        0x2d15ebe3
        0x29d4f654
        -0x3a56d987
        -0x3e97c432
        -0x33d4e2e9    # -4.4856412E7f
        -0x3715ff60    # -479237.0f
        -0x2952af5b
        -0x2d93b2ee
        -0x20d09435
        -0x24118984
        -0x1c5e343f
        -0x189f298a
        -0x15dc0f51
        -0x111d12e8
        -0xf5a42e3
        -0xb9b5f56
        -0x6d8798d
        -0x219643c
        -0x764702f7
        -0x72861f42    # -7.6999573E-31f
        -0x7fc53999
        -0x7b042430
        -0x6543742b
        -0x6182699e
        -0x6cc14f45
        -0x680052f4
        -0x504fef4f
        -0x548ef2fa
        -0x59cdd421
        -0x5d0cc998
        -0x434b9993
        -0x478a8426
        -0x4ac9a2fd
        -0x4e08bf4c
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWithOverflowDefault(JJJ)J
    .locals 3

    .line 490
    add-long v0, p0, p2

    .line 492
    xor-long/2addr p0, v0

    xor-long/2addr p2, v0

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long v2, p0, p2

    if-gez v2, :cond_0

    .line 493
    return-wide p4

    .line 495
    :cond_0
    return-wide v0
.end method

.method public static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 195
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static binarySearchCeil(Ljava/util/List;Ljava/lang/Object;ZZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .line 667
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 668
    if-gez v0, :cond_0

    .line 669
    xor-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 671
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 672
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 673
    :cond_1
    if-eqz p2, :cond_2

    .line 674
    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 673
    :cond_2
    move p1, v0

    .line 677
    :goto_1
    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method public static binarySearchCeil([JJZZ)I
    .locals 4

    .line 633
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 634
    if-gez v0, :cond_0

    .line 635
    xor-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 637
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-wide v1, p0, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    goto :goto_0

    .line 638
    :cond_1
    if-eqz p3, :cond_2

    .line 639
    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 638
    :cond_2
    move p1, v0

    .line 642
    :goto_1
    if-eqz p4, :cond_3

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method public static binarySearchFloor(Ljava/util/List;Ljava/lang/Object;ZZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Comparable<",
            "-TT;>;>;TT;ZZ)I"
        }
    .end annotation

    .line 600
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 601
    if-gez v0, :cond_0

    .line 602
    add-int/lit8 v0, v0, 0x2

    neg-int p0, v0

    goto :goto_1

    .line 604
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {v1, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 605
    :cond_1
    if-eqz p2, :cond_2

    .line 606
    add-int/lit8 p0, v0, 0x1

    goto :goto_1

    .line 605
    :cond_2
    move p0, v0

    .line 609
    :goto_1
    if-eqz p3, :cond_3

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_3
    return p0
.end method

.method public static binarySearchFloor([IIZZ)I
    .locals 2

    .line 535
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 536
    if-gez v0, :cond_0

    .line 537
    add-int/lit8 v0, v0, 0x2

    neg-int p0, v0

    goto :goto_1

    .line 539
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    aget v1, p0, v0

    if-ne v1, p1, :cond_1

    goto :goto_0

    .line 540
    :cond_1
    if-eqz p2, :cond_2

    .line 541
    add-int/lit8 p0, v0, 0x1

    goto :goto_1

    .line 540
    :cond_2
    move p0, v0

    .line 544
    :goto_1
    if-eqz p3, :cond_3

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_3
    return p0
.end method

.method public static binarySearchFloor([JJZZ)I
    .locals 4

    .line 567
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 568
    if-gez v0, :cond_0

    .line 569
    add-int/lit8 v0, v0, 0x2

    neg-int p0, v0

    goto :goto_1

    .line 571
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    aget-wide v1, p0, v0

    cmp-long v3, v1, p1

    if-nez v3, :cond_1

    goto :goto_0

    .line 572
    :cond_1
    if-eqz p3, :cond_2

    .line 573
    add-int/lit8 p0, v0, 0x1

    goto :goto_1

    .line 572
    :cond_2
    move p0, v0

    .line 576
    :goto_1
    if-eqz p4, :cond_3

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_3
    return p0
.end method

.method public static ceilDivide(II)I
    .locals 0

    .line 431
    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, p1

    return p0
.end method

.method public static ceilDivide(JJ)J
    .locals 2

    .line 442
    add-long/2addr p0, p2

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    div-long/2addr p0, p2

    return-wide p0
.end method

.method public static closeQuietly(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V
    .locals 0

    .line 264
    if-eqz p0, :cond_0

    .line 265
    :try_start_0
    invoke-interface {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception p0

    goto :goto_1

    .line 269
    :cond_0
    :goto_0
    nop

    .line 270
    :goto_1
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 280
    if-eqz p0, :cond_0

    .line 281
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception p0

    goto :goto_1

    .line 285
    :cond_0
    :goto_0
    nop

    .line 286
    :goto_1
    return-void
.end method

.method public static compareLong(JJ)I
    .locals 1

    .line 689
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static constrainValue(FFF)F
    .locals 0

    .line 478
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static constrainValue(III)I
    .locals 0

    .line 454
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static constrainValue(JJJ)J
    .locals 0

    .line 466
    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 209
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 210
    invoke-static {v3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    const/4 p0, 0x1

    return p0

    .line 209
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    return v1
.end method

.method public static crc([BIII)I
    .locals 3

    .line 1447
    nop

    :goto_0
    if-ge p1, p2, :cond_0

    .line 1448
    shl-int/lit8 v0, p3, 0x8

    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->CRC32_BYTES_MSBF:[I

    ushr-int/lit8 p3, p3, 0x18

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr p3, v2

    and-int/lit16 p3, p3, 0xff

    aget p3, v1, p3

    xor-int/2addr p3, v0

    .line 1447
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1451
    :cond_0
    return p3
.end method

.method public static createTempDirectory(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1425
    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->createTempFile(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1426
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1427
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 1428
    return-object p0
.end method

.method public static createTempFile(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1433
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static escapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1314
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1315
    nop

    .line 1316
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1317
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->shouldEscapeCharacter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1318
    add-int/lit8 v3, v3, 0x1

    .line 1316
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1321
    :cond_1
    if-nez v3, :cond_2

    .line 1322
    return-object p0

    .line 1325
    :cond_2
    nop

    .line 1326
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v0

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1327
    :goto_1
    if-lez v3, :cond_4

    .line 1328
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1329
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->shouldEscapeCharacter(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1330
    const/16 v5, 0x25

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1333
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1335
    :goto_2
    move v1, v4

    goto :goto_1

    .line 1336
    :cond_4
    if-ge v1, v0, :cond_5

    .line 1337
    invoke-virtual {v2, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1339
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 420
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromUtf8Bytes([B)Ljava/lang/String;
    .locals 2

    .line 332
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static fromUtf8Bytes([BII)Ljava/lang/String;
    .locals 2

    .line 344
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static getAudioContentTypeForStreamType(I)I
    .locals 0

    .line 1137
    packed-switch p0, :pswitch_data_0

    .line 1149
    :pswitch_0
    const/4 p0, 0x2

    return p0

    .line 1143
    :pswitch_1
    const/4 p0, 0x4

    return p0

    .line 1145
    :pswitch_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getAudioUsageForStreamType(I)I
    .locals 0

    .line 1112
    packed-switch p0, :pswitch_data_0

    .line 1128
    :pswitch_0
    const/4 p0, 0x1

    return p0

    .line 1116
    :pswitch_1
    const/4 p0, 0x3

    return p0

    .line 1118
    :pswitch_2
    const/4 p0, 0x5

    return p0

    .line 1114
    :pswitch_3
    const/4 p0, 0x4

    return p0

    .line 1120
    :pswitch_4
    const/4 p0, 0x6

    return p0

    .line 1122
    :pswitch_5
    const/16 p0, 0xd

    return p0

    .line 1124
    :pswitch_6
    const/4 p0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getBytesFromHexString(Ljava/lang/String;)[B
    .locals 6

    .line 961
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 962
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 963
    mul-int/lit8 v3, v2, 0x2

    .line 964
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    .line 965
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput-byte v3, v1, v2

    .line 962
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 967
    :cond_0
    return-object v1
.end method

.method public static getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 1017
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1018
    return-object v1

    .line 1020
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "(\\s*,\\s*)"

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1022
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 1023
    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/MimeTypes;->getTrackTypeOfCodec(Ljava/lang/String;)I

    move-result v5

    if-ne p1, v5, :cond_2

    .line 1024
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1025
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1030
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public static getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 978
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 979
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 981
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 984
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultBufferSize(I)I
    .locals 1

    .line 1285
    const/high16 v0, 0x20000

    packed-switch p0, :pswitch_data_0

    .line 1297
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 1295
    :pswitch_0
    return v0

    .line 1293
    :pswitch_1
    return v0

    .line 1291
    :pswitch_2
    const/high16 p0, 0xc80000

    return p0

    .line 1289
    :pswitch_3
    const/high16 p0, 0x360000

    return p0

    .line 1287
    :pswitch_4
    const/high16 p0, 0x1000000

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getDisplaySizeV16(Lccsanandroid/view/Display;Lccsanandroid/graphics/Point;)V
    .locals 0

    .line 1539
    invoke-virtual {p0, p1}, Lccsanandroid/view/Display;->getSize(Lccsanandroid/graphics/Point;)V

    .line 1540
    return-void
.end method

.method private static getDisplaySizeV17(Lccsanandroid/view/Display;Lccsanandroid/graphics/Point;)V
    .locals 0

    .line 1534
    invoke-virtual {p0, p1}, Lccsanandroid/view/Display;->getRealSize(Lccsanandroid/graphics/Point;)V

    .line 1535
    return-void
.end method

.method private static getDisplaySizeV23(Lccsanandroid/view/Display;Lccsanandroid/graphics/Point;)V
    .locals 1

    .line 1527
    invoke-virtual {p0}, Lccsanandroid/view/Display;->getMode()Lccsanandroid/view/Display$Mode;

    move-result-object p0

    .line 1528
    invoke-virtual {p0}, Lccsanandroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    iput v0, p1, Lccsanandroid/graphics/Point;->x:I

    .line 1529
    invoke-virtual {p0}, Lccsanandroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    iput p0, p1, Lccsanandroid/graphics/Point;->y:I

    .line 1530
    return-void
.end method

.method private static getDisplaySizeV9(Lccsanandroid/view/Display;Lccsanandroid/graphics/Point;)V
    .locals 1

    .line 1544
    invoke-virtual {p0}, Lccsanandroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Lccsanandroid/graphics/Point;->x:I

    .line 1545
    invoke-virtual {p0}, Lccsanandroid/view/Display;->getHeight()I

    move-result p0

    iput p0, p1, Lccsanandroid/graphics/Point;->y:I

    .line 1546
    return-void
.end method

.method public static getDrmUuid(Ljava/lang/String;)Ljava/util/UUID;
    .locals 2

    .line 1194
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "clearkey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "widevine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "playready"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1203
    :try_start_0
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1200
    :pswitch_0
    sget-object p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->CLEARKEY_UUID:Ljava/util/UUID;

    return-object p0

    .line 1198
    :pswitch_1
    sget-object p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->PLAYREADY_UUID:Ljava/util/UUID;

    return-object p0

    .line 1196
    :pswitch_2
    sget-object p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    return-object p0

    .line 1203
    :goto_2
    return-object p0

    .line 1204
    :catch_0
    move-exception p0

    .line 1205
    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x6ee3d111 -> :sswitch_2
        -0x537ab703 -> :sswitch_1
        0x2f1b28f2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getIntegerCodeForString(Ljava/lang/String;)I
    .locals 4

    .line 944
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 945
    const/4 v1, 0x0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 946
    nop

    .line 947
    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 948
    shl-int/lit8 v2, v2, 0x8

    .line 949
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v2, v3

    .line 947
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 951
    :cond_1
    return v2
.end method

.method public static getMediaDurationForPlayoutDuration(JF)J
    .locals 2

    .line 862
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 863
    return-wide p0

    .line 865
    :cond_0
    long-to-double p0, p0

    float-to-double v0, p2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getPcmEncoding(I)I
    .locals 0

    .line 1044
    sparse-switch p0, :sswitch_data_0

    .line 1054
    const/4 p0, 0x0

    return p0

    .line 1052
    :sswitch_0
    const/high16 p0, 0x40000000    # 2.0f

    return p0

    .line 1050
    :sswitch_1
    const/high16 p0, -0x80000000

    return p0

    .line 1048
    :sswitch_2
    const/4 p0, 0x2

    return p0

    .line 1046
    :sswitch_3
    const/4 p0, 0x3

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x18 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getPcmFrameSize(II)I
    .locals 0

    .line 1090
    sparse-switch p0, :sswitch_data_0

    .line 1103
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 1099
    :sswitch_0
    mul-int/lit8 p1, p1, 0x4

    return p1

    .line 1092
    :sswitch_1
    return p1

    .line 1094
    :sswitch_2
    mul-int/lit8 p1, p1, 0x2

    return p1

    .line 1096
    :sswitch_3
    mul-int/lit8 p1, p1, 0x3

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getPhysicalDisplaySize(Lccsanandroid/content/Context;)Lccsanandroid/graphics/Point;
    .locals 1

    .line 1461
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/WindowManager;

    .line 1462
    invoke-interface {v0}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v0

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getPhysicalDisplaySize(Lccsanandroid/content/Context;Lccsanandroid/view/Display;)Lccsanandroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static getPhysicalDisplaySize(Lccsanandroid/content/Context;Lccsanandroid/view/Display;)Lccsanandroid/graphics/Point;
    .locals 7

    .line 1473
    const-string v0, "Util"

    sget v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_4

    invoke-virtual {p1}, Lccsanandroid/view/Display;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_4

    .line 1476
    sget-object v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Sony"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v3, "BRAVIA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1477
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.sony.dtv.hardware.panel.qfhd"

    invoke-virtual {p0, v2}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1478
    new-instance p0, Lccsanandroid/graphics/Point;

    const/16 p1, 0xf00

    const/16 v0, 0x870

    invoke-direct {p0, p1, v0}, Lccsanandroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 1479
    :cond_0
    const-string p0, "NVIDIA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    const-string v2, "SHIELD"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 1480
    :cond_1
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "philips"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->MODEL:Ljava/lang/String;

    .line 1481
    const-string v1, "QM1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1482
    const-string v1, "QV151E"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1483
    const-string v1, "TPM171E"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1485
    :cond_2
    const/4 p0, 0x0

    .line 1487
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1488
    const-string v4, "get"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1489
    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "sys.display-size"

    aput-object v6, v5, v1

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1492
    move-object p0, v3

    goto :goto_0

    .line 1490
    :catch_0
    move-exception v3

    .line 1491
    const-string v4, "Failed to read sys.display-size"

    invoke-static {v0, v4, v3}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1494
    :goto_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1496
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x"

    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1497
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1498
    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1499
    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1500
    if-lez v1, :cond_3

    if-lez v2, :cond_3

    .line 1501
    new-instance v3, Lccsanandroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Lccsanandroid/graphics/Point;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 1506
    :cond_3
    goto :goto_1

    .line 1504
    :catch_1
    move-exception v1

    .line 1507
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sys.display-size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :cond_4
    new-instance p0, Lccsanandroid/graphics/Point;

    invoke-direct {p0}, Lccsanandroid/graphics/Point;-><init>()V

    .line 1513
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5

    .line 1514
    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getDisplaySizeV23(Lccsanandroid/view/Display;Lccsanandroid/graphics/Point;)V

    goto :goto_2

    .line 1515
    :cond_5
    const/16 v1, 0x11

    if-lt v0, v1, :cond_6

    .line 1516
    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getDisplaySizeV17(Lccsanandroid/view/Display;Lccsanandroid/graphics/Point;)V

    goto :goto_2

    .line 1517
    :cond_6
    const/16 v1, 0x10

    if-lt v0, v1, :cond_7

    .line 1518
    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getDisplaySizeV16(Lccsanandroid/view/Display;Lccsanandroid/graphics/Point;)V

    goto :goto_2

    .line 1520
    :cond_7
    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getDisplaySizeV9(Lccsanandroid/view/Display;Lccsanandroid/graphics/Point;)V

    .line 1522
    :goto_2
    return-object p0
.end method

.method public static getPlayoutDurationForMediaDuration(JF)J
    .locals 2

    .line 875
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 876
    return-wide p0

    .line 878
    :cond_0
    long-to-double p0, p0

    float-to-double v0, p2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStreamTypeForAudioUsage(I)I
    .locals 1

    .line 1158
    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    .line 1182
    :pswitch_0
    return v0

    .line 1164
    :pswitch_1
    const/4 p0, 0x1

    return p0

    .line 1172
    :pswitch_2
    const/4 p0, 0x2

    return p0

    .line 1178
    :pswitch_3
    const/4 p0, 0x5

    return p0

    .line 1170
    :pswitch_4
    const/4 p0, 0x4

    return p0

    .line 1168
    :pswitch_5
    const/16 p0, 0x8

    return p0

    .line 1166
    :pswitch_6
    const/4 p0, 0x0

    return p0

    .line 1162
    :pswitch_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public static getStringForTime(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;
    .locals 9

    .line 1265
    const-wide/16 v0, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v2

    if-nez v4, :cond_0

    .line 1266
    move-wide p2, v0

    .line 1268
    :cond_0
    const-wide/16 v2, 0x1f4

    add-long/2addr p2, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr p2, v2

    .line 1269
    const-wide/16 v2, 0x3c

    rem-long v4, p2, v2

    .line 1270
    div-long v6, p2, v2

    rem-long/2addr v6, v2

    .line 1271
    const-wide/16 v2, 0xe10

    div-long/2addr p2, v2

    .line 1272
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1273
    const/4 p0, 0x1

    const/4 v3, 0x2

    cmp-long v8, p2, v0

    if-lez v8, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v0, v3

    const-string p0, "%d:%02d:%02d"

    invoke-virtual {p1, p0, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1274
    :cond_1
    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, p0

    const-string p0, "%02d:%02d"

    invoke-virtual {p1, p0, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1273
    :goto_0
    return-object p0
.end method

.method public static getUserAgent(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 997
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 998
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0

    .line 999
    iget-object p0, p0, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    goto :goto_0

    .line 1000
    :catch_0
    move-exception p0

    .line 1001
    const-string p0, "?"

    .line 1003
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Linux;Android "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lccsanandroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "ExoPlayerLib/2.8.4"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUtf8Bytes(Ljava/lang/String;)[B
    .locals 1

    .line 354
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static inferContentType(Lccsanandroid/net/Uri;)I
    .locals 0

    .line 1232
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 1233
    if-nez p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static inferContentType(Lccsanandroid/net/Uri;Ljava/lang/String;)I
    .locals 1

    .line 1219
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->inferContentType(Lccsanandroid/net/Uri;)I

    move-result p0

    goto :goto_0

    .line 1221
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result p0

    .line 1219
    :goto_0
    return p0
.end method

.method public static inferContentType(Ljava/lang/String;)I
    .locals 1

    .line 1244
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1245
    const-string v0, ".mpd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1246
    const/4 p0, 0x0

    return p0

    .line 1247
    :cond_0
    const-string v0, ".m3u8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1248
    const/4 p0, 0x2

    return p0

    .line 1249
    :cond_1
    const-string v0, ".*\\.ism(l)?(/manifest(\\(.+\\))?)?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1250
    const/4 p0, 0x1

    return p0

    .line 1252
    :cond_2
    const/4 p0, 0x3

    return p0
.end method

.method public static isEncodingHighResolutionIntegerPcm(I)Z
    .locals 1

    .line 1079
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEncodingPcm(I)Z
    .locals 1

    .line 1065
    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isLinebreak(I)Z
    .locals 1

    .line 391
    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isLocalFileUri(Lccsanandroid/net/Uri;)Z
    .locals 1

    .line 182
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static varargs maybeRequestReadExternalStoragePermission(Lccsanandroid/app/Activity;[Lccsanandroid/net/Uri;)Z
    .locals 0

    .line 173
    const/4 p0, 0x0

    return p0
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 249
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 319
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 238
    array-length v0, p0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 239
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static parseXsDateTime(Ljava/lang/String;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 732
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->XS_DATE_TIME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 733
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 738
    const/16 p0, 0x9

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 740
    goto :goto_0

    .line 741
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 742
    goto :goto_0

    .line 744
    :cond_1
    const/16 p0, 0xc

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    const/16 v1, 0xd

    .line 745
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int v2, p0, v1

    .line 746
    const/16 p0, 0xb

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 747
    mul-int/lit8 v2, v2, -0x1

    .line 751
    :cond_2
    :goto_0
    new-instance p0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 753
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 755
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v3, 0x2

    .line 756
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    .line 757
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v3, 0x4

    .line 758
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v3, 0x5

    .line 759
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v3, 0x6

    .line 760
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 755
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 761
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 762
    new-instance v4, Ljava/math/BigDecimal;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 764
    const/16 v0, 0xe

    invoke-virtual {v4, v1}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 767
    :cond_3
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 768
    if-eqz v2, :cond_4

    .line 769
    const p0, 0xea60

    mul-int v2, v2, p0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 772
    :cond_4
    return-wide v0

    .line 734
    :cond_5
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid date/time format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseXsDuration(Ljava/lang/String;)J
    .locals 14

    .line 699
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->XS_DURATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide v4, 0x40ac200000000000L    # 3600.0

    if-eqz v1, :cond_7

    .line 701
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 704
    xor-int/2addr p0, v1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 705
    const-wide/16 v6, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-wide v10, 0x417e1852c0000000L    # 3.1556908E7

    mul-double v8, v8, v10

    goto :goto_0

    :cond_0
    move-wide v8, v6

    .line 706
    :goto_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 707
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x4144103580000000L    # 2629739.0

    mul-double v10, v10, v12

    goto :goto_1

    :cond_1
    move-wide v10, v6

    :goto_1
    add-double/2addr v8, v10

    .line 708
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 709
    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-wide v12, 0x40f5180000000000L    # 86400.0

    mul-double v10, v10, v12

    goto :goto_2

    :cond_2
    move-wide v10, v6

    :goto_2
    add-double/2addr v8, v10

    .line 710
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 711
    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    mul-double v10, v10, v4

    goto :goto_3

    :cond_3
    move-wide v10, v6

    :goto_3
    add-double/2addr v8, v10

    .line 712
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 713
    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    mul-double v4, v4, v10

    goto :goto_4

    :cond_4
    move-wide v4, v6

    :goto_4
    add-double/2addr v8, v4

    .line 714
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 715
    if-eqz v0, :cond_5

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    :cond_5
    add-double/2addr v8, v6

    .line 716
    mul-double v8, v8, v2

    double-to-long v0, v8

    .line 717
    if-eqz p0, :cond_6

    neg-long v0, v0

    :cond_6
    return-wide v0

    .line 719
    :cond_7
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    mul-double v0, v0, v4

    mul-double v0, v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static readBoolean(Lccsanandroid/os/Parcel;)Z
    .locals 0

    .line 296
    invoke-virtual {p0}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static recursiveDelete(Ljava/io/File;)V
    .locals 4

    .line 1415
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1417
    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->recursiveDelete(Ljava/io/File;)V

    .line 1416
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1420
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 1421
    return-void
.end method

.method public static removeRange(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    .line 225
    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 226
    return-void
.end method

.method public static resolveSeekPositionUs(JLccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;JJ)J
    .locals 8

    .line 894
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->EXACT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    return-wide p0

    .line 897
    :cond_0
    iget-wide v3, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->toleranceBeforeUs:J

    const-wide/high16 v5, -0x8000000000000000L

    .line 898
    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->subtractWithOverflowDefault(JJJ)J

    move-result-wide v0

    .line 899
    iget-wide v4, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->toleranceAfterUs:J

    const-wide v6, 0x7fffffffffffffffL

    .line 900
    move-wide v2, p0

    invoke-static/range {v2 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->addWithOverflowDefault(JJJ)J

    move-result-wide v2

    .line 901
    const/4 p2, 0x1

    const/4 v4, 0x0

    cmp-long v5, v0, p3

    if-gtz v5, :cond_1

    cmp-long v5, p3, v2

    if-gtz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 902
    :goto_0
    cmp-long v6, v0, p5

    if-gtz v6, :cond_2

    cmp-long v6, p5, v2

    if-gtz v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 904
    :goto_1
    if-eqz v5, :cond_4

    if-eqz p2, :cond_4

    .line 905
    sub-long v0, p3, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long p0, p5, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p2, v0, p0

    if-gtz p2, :cond_3

    .line 906
    return-wide p3

    .line 908
    :cond_3
    return-wide p5

    .line 910
    :cond_4
    if-eqz v5, :cond_5

    .line 911
    return-wide p3

    .line 912
    :cond_5
    if-eqz p2, :cond_6

    .line 913
    return-wide p5

    .line 915
    :cond_6
    return-wide v0
.end method

.method public static scaleLargeTimestamp(JJJ)J
    .locals 5

    .line 787
    const-wide/16 v0, 0x0

    cmp-long v2, p4, p2

    if-ltz v2, :cond_0

    rem-long v2, p4, p2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 788
    div-long/2addr p4, p2

    .line 789
    div-long/2addr p0, p4

    return-wide p0

    .line 790
    :cond_0
    cmp-long v2, p4, p2

    if-gez v2, :cond_1

    rem-long v2, p2, p4

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    .line 791
    div-long/2addr p2, p4

    .line 792
    mul-long p0, p0, p2

    return-wide p0

    .line 794
    :cond_1
    long-to-double p2, p2

    long-to-double p4, p4

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p4, p5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p2, p4

    .line 795
    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p0, p0, p2

    double-to-long p0, p0

    return-wide p0
.end method

.method public static scaleLargeTimestamps(Ljava/util/List;JJ)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;JJ)[J"
        }
    .end annotation

    .line 808
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    .line 809
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, p3, p1

    if-ltz v5, :cond_1

    rem-long v5, p3, p1

    cmp-long v7, v5, v2

    if-nez v7, :cond_1

    .line 810
    div-long/2addr p3, p1

    .line 811
    nop

    :goto_0
    if-ge v4, v0, :cond_0

    .line 812
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    div-long/2addr p1, p3

    aput-wide p1, v1, v4

    .line 811
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 814
    :cond_0
    goto :goto_3

    :cond_1
    cmp-long v5, p3, p1

    if-gez v5, :cond_3

    rem-long v5, p1, p3

    cmp-long v7, v5, v2

    if-nez v7, :cond_3

    .line 815
    div-long/2addr p1, p3

    .line 816
    nop

    :goto_1
    if-ge v4, v0, :cond_2

    .line 817
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    mul-long p3, p3, p1

    aput-wide p3, v1, v4

    .line 816
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 819
    :cond_2
    goto :goto_3

    .line 820
    :cond_3
    long-to-double p1, p1

    long-to-double p3, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, p3

    .line 821
    nop

    :goto_2
    if-ge v4, v0, :cond_4

    .line 822
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    long-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, p1

    double-to-long p3, p3

    aput-wide p3, v1, v4

    .line 821
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 825
    :cond_4
    :goto_3
    return-object v1
.end method

.method public static scaleLargeTimestampsInPlace([JJJ)V
    .locals 6

    .line 836
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p3, p1

    if-ltz v3, :cond_1

    rem-long v3, p3, p1

    cmp-long v5, v3, v0

    if-nez v5, :cond_1

    .line 837
    div-long/2addr p3, p1

    .line 838
    nop

    :goto_0
    array-length p1, p0

    if-ge v2, p1, :cond_0

    .line 839
    aget-wide p1, p0, v2

    div-long/2addr p1, p3

    aput-wide p1, p0, v2

    .line 838
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 841
    :cond_0
    goto :goto_3

    :cond_1
    cmp-long v3, p3, p1

    if-gez v3, :cond_3

    rem-long v3, p1, p3

    cmp-long v5, v3, v0

    if-nez v5, :cond_3

    .line 842
    div-long/2addr p1, p3

    .line 843
    nop

    :goto_1
    array-length p3, p0

    if-ge v2, p3, :cond_2

    .line 844
    aget-wide p3, p0, v2

    mul-long p3, p3, p1

    aput-wide p3, p0, v2

    .line 843
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 846
    :cond_2
    goto :goto_3

    .line 847
    :cond_3
    long-to-double p1, p1

    long-to-double p3, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, p3

    .line 848
    nop

    :goto_2
    array-length p3, p0

    if-ge v2, p3, :cond_4

    .line 849
    aget-wide p3, p0, v2

    long-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p3, p3, p1

    double-to-long p3, p3

    aput-wide p3, p0, v2

    .line 848
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 852
    :cond_4
    :goto_3
    return-void
.end method

.method private static shouldEscapeCharacter(C)Z
    .locals 0

    .line 1343
    sparse-switch p0, :sswitch_data_0

    .line 1356
    const/4 p0, 0x0

    return p0

    .line 1354
    :sswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5c -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method public static sneakyThrow(Ljava/lang/Throwable;)V
    .locals 0

    .line 1405
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->sneakyThrowInternal(Ljava/lang/Throwable;)V

    .line 1406
    return-void
.end method

.method private static sneakyThrowInternal(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1410
    throw p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 367
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 381
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static startForegroundService(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;
    .locals 2

    .line 143
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startForegroundService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static subtractWithOverflowDefault(JJJ)J
    .locals 3

    .line 507
    sub-long v0, p0, p2

    .line 509
    xor-long/2addr p2, p0

    xor-long/2addr p0, v0

    and-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long v2, p0, p2

    if-gez v2, :cond_0

    .line 510
    return-wide p4

    .line 512
    :cond_0
    return-wide v0
.end method

.method public static toArray(Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 926
    if-nez p0, :cond_0

    .line 927
    const/4 p0, 0x0

    return-object p0

    .line 929
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 930
    new-array v1, v0, [I

    .line 931
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 932
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 931
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 934
    :cond_1
    return-object v1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 126
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 129
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 401
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 411
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static unescapeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1370
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1371
    nop

    .line 1372
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1373
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_0

    .line 1374
    add-int/lit8 v3, v3, 0x1

    .line 1372
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1377
    :cond_1
    if-nez v3, :cond_2

    .line 1378
    return-object p0

    .line 1381
    :cond_2
    mul-int/lit8 v2, v3, 0x2

    sub-int v2, v0, v2

    .line 1382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1383
    sget-object v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->ESCAPED_CHARACTER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1384
    nop

    .line 1385
    :goto_1
    if-lez v3, :cond_3

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1386
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    .line 1387
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v4, p0, v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1388
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 1389
    add-int/lit8 v3, v3, -0x1

    .line 1390
    goto :goto_1

    .line 1391
    :cond_3
    if-ge v1, v0, :cond_4

    .line 1392
    invoke-virtual {v4, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1394
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eq p0, v2, :cond_5

    .line 1395
    const/4 p0, 0x0

    return-object p0

    .line 1397
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeBoolean(Lccsanandroid/os/Parcel;Z)V
    .locals 0

    .line 307
    invoke-virtual {p0, p1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 308
    return-void
.end method

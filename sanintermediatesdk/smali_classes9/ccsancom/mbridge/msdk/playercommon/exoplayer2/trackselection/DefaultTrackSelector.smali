.class public Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    }
.end annotation


# static fields
.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field private static final NO_TRACKS:[I

.field private static final WITHIN_RENDERER_CAPABILITIES_BONUS:I = 0x3e8


# instance fields
.field private final adaptiveTrackSelectionFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;

.field private final parametersReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1055
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1065
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 1066
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;)V
    .locals 1

    .line 1085
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector;-><init>()V

    .line 1086
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;

    .line 1087
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1088
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter;)V
    .locals 1

    .line 1076
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/BandwidthMeter;)V

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 1077
    return-void
.end method

.method static synthetic access$300(II)I
    .locals 0

    .line 153
    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->compareInts(II)I

    move-result p0

    return p0
.end method

.method private static compareFormatValues(II)I
    .locals 1

    .line 1886
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 1887
    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 1888
    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, p0, p1

    .line 1886
    :cond_2
    :goto_0
    return v0
.end method

.method private static compareInts(II)I
    .locals 0

    .line 2097
    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-le p1, p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static filterAdaptiveVideoTrackCountForMimeType(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1472
    move-object/from16 v0, p7

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1473
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1474
    move-object v3, p0

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v4

    aget v6, p1, v2

    move-object v5, p3

    move v7, p2

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Ljava/lang/String;IIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1477
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1472
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1480
    :cond_1
    return-void
.end method

.method protected static formatHasLanguage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Ljava/lang/String;)Z
    .locals 0

    .line 1930
    if-eqz p1, :cond_0

    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    .line 1931
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1930
    :goto_0
    return p0
.end method

.method protected static formatHasNoLanguage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Z
    .locals 1

    .line 1917
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Ljava/lang/String;)Z

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

.method private static getAdaptiveAudioTrackCount(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[ILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)I
    .locals 4

    .line 1656
    nop

    .line 1657
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    if-ge v0, v2, :cond_1

    .line 1658
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v2

    aget v3, p1, v0

    invoke-static {v2, v3, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1659
    add-int/lit8 v1, v1, 0x1

    .line 1657
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1662
    :cond_1
    return v1
.end method

.method private static getAdaptiveAudioTracks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[IZ)[I
    .locals 10

    .line 1623
    nop

    .line 1624
    nop

    .line 1625
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1626
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    if-ge v3, v6, :cond_2

    .line 1627
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v6

    .line 1628
    new-instance v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    iget v8, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    iget v9, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    .line 1630
    if-eqz p2, :cond_0

    move-object v6, v1

    goto :goto_1

    :cond_0
    iget-object v6, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    :goto_1
    invoke-direct {v7, v8, v9, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;-><init>(IILjava/lang/String;)V

    .line 1631
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1632
    invoke-static {p0, p1, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveAudioTrackCount(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[ILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)I

    move-result v6

    .line 1633
    if-le v6, v4, :cond_1

    .line 1634
    nop

    .line 1635
    move v4, v6

    move-object v5, v7

    .line 1626
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1640
    :cond_2
    const/4 p2, 0x1

    if-le v4, p2, :cond_5

    .line 1641
    new-array p2, v4, [I

    .line 1642
    nop

    .line 1643
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    if-ge v2, v1, :cond_4

    .line 1644
    nop

    .line 1645
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v1

    aget v3, p1, v2

    invoke-static {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;

    .line 1644
    invoke-static {v1, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveAudioTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1646
    add-int/lit8 v1, v0, 0x1

    aput v2, p2, v0

    move v0, v1

    .line 1643
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1649
    :cond_4
    return-object p2

    .line 1651
    :cond_5
    sget-object p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-object p0
.end method

.method private static getAdaptiveVideoTrackCountForMimeType(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1451
    nop

    .line 1452
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1453
    move-object/from16 v2, p7

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1454
    move-object v4, p0

    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v5

    aget v7, p1, v3

    move-object v6, p3

    move v8, p2

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Ljava/lang/String;IIIII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1457
    add-int/lit8 v1, v1, 0x1

    .line 1452
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1460
    :cond_1
    return v1
.end method

.method private static getAdaptiveVideoTracksForGroup(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[IZIIIIIIZ)[I
    .locals 16

    .line 1405
    move-object/from16 v8, p0

    iget v0, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    const/4 v9, 0x2

    if-ge v0, v9, :cond_0

    .line 1406
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-object v0

    .line 1409
    :cond_0
    move/from16 v0, p7

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v8, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v10

    .line 1411
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v9, :cond_1

    .line 1412
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-object v0

    .line 1415
    :cond_1
    const/4 v0, 0x0

    .line 1416
    if-nez p2, :cond_4

    .line 1418
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1419
    nop

    .line 1420
    const/4 v1, 0x0

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_3

    .line 1421
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1422
    invoke-virtual {v8, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1423
    invoke-virtual {v11, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1424
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v15

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveVideoTrackCountForMimeType(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v0

    .line 1427
    if-le v0, v14, :cond_2

    .line 1428
    nop

    .line 1429
    move v14, v0

    move-object v12, v15

    .line 1420
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v12

    goto :goto_1

    .line 1416
    :cond_4
    move-object v3, v0

    .line 1436
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v10

    invoke-static/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->filterAdaptiveVideoTrackCountForMimeType(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)V

    .line 1439
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v9, :cond_5

    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_2

    :cond_5
    invoke-static {v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Lccsanandroid/graphics/Point;
    .locals 3

    .line 1987
    if-eqz p0, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-le p3, p4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-eq v1, p0, :cond_2

    .line 1989
    nop

    .line 1990
    nop

    .line 1991
    goto :goto_2

    .line 1994
    :cond_2
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_2
    mul-int p0, p3, p1

    mul-int v0, p4, p2

    if-lt p0, v0, :cond_3

    .line 1996
    new-instance p0, Lccsanandroid/graphics/Point;

    invoke-static {v0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lccsanandroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 1999
    :cond_3
    new-instance p2, Lccsanandroid/graphics/Point;

    invoke-static {p0, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->ceilDivide(II)I

    move-result p0

    invoke-direct {p2, p0, p1}, Lccsanandroid/graphics/Point;-><init>(II)V

    return-object p2
.end method

.method private static getViewportFilteredTrackIndices(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1937
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1938
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    if-ge v2, v3, :cond_0

    .line 1939
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1938
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1942
    :cond_0
    const v2, 0x7fffffff

    if-eq p1, v2, :cond_7

    if-ne p2, v2, :cond_1

    goto :goto_3

    .line 1947
    :cond_1
    nop

    .line 1948
    const v3, 0x7fffffff

    :goto_1
    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v4, :cond_3

    .line 1949
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v4

    .line 1953
    iget v5, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    if-lez v5, :cond_2

    iget v5, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    if-lez v5, :cond_2

    .line 1954
    iget v5, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    iget v6, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    invoke-static {p3, p1, p2, v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->getMaxVideoSizeInViewport(ZIIII)Lccsanandroid/graphics/Point;

    move-result-object v5

    .line 1956
    iget v6, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    iget v7, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    mul-int v6, v6, v7

    .line 1957
    iget v7, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    iget v8, v5, Lccsanandroid/graphics/Point;->x:I

    int-to-float v8, v8

    const v9, 0x3f7ae148    # 0.98f

    mul-float v8, v8, v9

    float-to-int v8, v8

    if-lt v7, v8, :cond_2

    iget v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    iget v5, v5, Lccsanandroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float v5, v5, v9

    float-to-int v5, v5

    if-lt v4, v5, :cond_2

    if-ge v6, v3, :cond_2

    .line 1960
    move v3, v6

    .line 1948
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1968
    :cond_3
    if-eq v3, v2, :cond_6

    .line 1969
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_6

    .line 1970
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object p2

    .line 1971
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->getPixelCount()I

    move-result p2

    .line 1972
    const/4 p3, -0x1

    if-eq p2, p3, :cond_4

    if-le p2, v3, :cond_5

    .line 1973
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1969
    :cond_5
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 1978
    :cond_6
    return-object v0

    .line 1944
    :cond_7
    :goto_3
    return-object v0
.end method

.method protected static isSupported(IZ)Z
    .locals 1

    .line 1905
    and-int/lit8 p0, p0, 0x7

    .line 1906
    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

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

.method private static isSupportedAdaptiveAudioTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;)Z
    .locals 2

    .line 1667
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->channelCount:I

    iget v1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->channelCount:I

    if-ne p1, v1, :cond_1

    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleRate:I

    iget v1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->sampleRate:I

    if-ne p1, v1, :cond_1

    iget-object p1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;->mimeType:Ljava/lang/String;

    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1670
    invoke-static {p1, p0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 1667
    :goto_0
    return v0
.end method

.method private static isSupportedAdaptiveVideoTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Ljava/lang/String;IIIII)Z
    .locals 2

    .line 1490
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v1

    if-eqz v1, :cond_4

    and-int/2addr p2, p3

    if-eqz p2, :cond_4

    if-eqz p1, :cond_0

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1491
    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_0
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    if-gt p1, p4, :cond_4

    :cond_1
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    if-eq p1, p2, :cond_2

    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    if-gt p1, p5, :cond_4

    :cond_2
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    if-eq p1, p2, :cond_3

    iget p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    if-gt p0, p6, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 1490
    :goto_0
    return v0
.end method

.method private static maybeConfigureRenderersForTunneling(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;I)V
    .locals 10

    .line 1809
    if-nez p4, :cond_0

    .line 1810
    return-void

    .line 1814
    :cond_0
    nop

    .line 1815
    nop

    .line 1816
    nop

    .line 1817
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v5

    const/4 v6, 0x1

    if-ge v2, v5, :cond_6

    .line 1818
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v5

    .line 1819
    aget-object v7, p3, v2

    .line 1820
    if-eq v5, v6, :cond_1

    const/4 v8, 0x2

    if-ne v5, v8, :cond_5

    :cond_1
    if-eqz v7, :cond_5

    .line 1822
    aget-object v8, p1, v2

    .line 1823
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    move-result-object v9

    .line 1822
    invoke-static {v8, v9, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->rendererSupportsTunneling([[ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1824
    if-ne v5, v6, :cond_3

    .line 1825
    if-eq v4, v1, :cond_2

    .line 1826
    nop

    .line 1827
    const/4 p0, 0x0

    goto :goto_2

    .line 1829
    :cond_2
    move v4, v2

    goto :goto_1

    .line 1832
    :cond_3
    if-eq v3, v1, :cond_4

    .line 1833
    nop

    .line 1834
    const/4 p0, 0x0

    goto :goto_2

    .line 1836
    :cond_4
    move v3, v2

    .line 1817
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    .line 1842
    :goto_2
    if-eq v4, v1, :cond_7

    if-eq v3, v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    and-int/2addr p0, v0

    .line 1843
    if-eqz p0, :cond_8

    .line 1844
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

    invoke-direct {p0, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;-><init>(I)V

    .line 1846
    aput-object p0, p2, v4

    .line 1847
    aput-object p0, p2, v3

    .line 1849
    :cond_8
    return-void
.end method

.method private static rendererSupportsTunneling([[ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;)Z
    .locals 4

    .line 1862
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1863
    return v0

    .line 1865
    :cond_0
    invoke-interface {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->indexOf(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;)I

    move-result p1

    .line 1866
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1867
    aget-object v2, p0, p1

    invoke-interface {p2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;->getIndexInTrackGroup(I)I

    move-result v3

    aget v2, v2, v3

    .line 1868
    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_1

    .line 1870
    return v0

    .line 1866
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1873
    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static selectAdaptiveVideoTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;[[IILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1381
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-boolean v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    if-eqz v2, :cond_0

    .line 1382
    const/16 v2, 0x18

    goto :goto_0

    .line 1383
    :cond_0
    const/16 v2, 0x10

    .line 1384
    :goto_0
    iget-boolean v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    and-int v3, p2, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 1387
    :goto_1
    const/4 v14, 0x0

    :goto_2
    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v14, v3, :cond_3

    .line 1388
    invoke-virtual {v0, v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    move-result-object v15

    .line 1389
    aget-object v4, p1, v14

    iget v7, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v8, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v9, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget v10, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v11, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v12, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    move-object v3, v15

    move v5, v13

    move v6, v2

    invoke-static/range {v3 .. v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveVideoTracksForGroup(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[IZIIIIIIZ)[I

    move-result-object v3

    .line 1393
    array-length v4, v3

    if-lez v4, :cond_2

    .line 1394
    invoke-static/range {p4 .. p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;

    .line 1395
    invoke-interface {v0, v15, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    .line 1394
    return-object v0

    .line 1387
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1398
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static selectFixedVideoTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;[[ILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;
    .locals 18

    .line 1499
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1500
    nop

    .line 1501
    nop

    .line 1502
    nop

    .line 1503
    nop

    .line 1504
    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    :goto_0
    iget v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v5, v11, :cond_10

    .line 1505
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    move-result-object v11

    .line 1506
    iget v12, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v13, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v14, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    invoke-static {v11, v12, v13, v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v12

    .line 1508
    aget-object v13, p1, v5

    .line 1509
    const/4 v14, 0x0

    :goto_1
    iget v15, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    if-ge v14, v15, :cond_f

    .line 1510
    aget v15, v13, v14

    iget-boolean v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v15, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1512
    invoke-virtual {v11, v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v2

    .line 1513
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    if-eqz v15, :cond_3

    iget v15, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    if-eq v15, v3, :cond_0

    iget v15, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->width:I

    iget v4, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-gt v15, v4, :cond_3

    :cond_0
    iget v4, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    if-eq v4, v3, :cond_1

    iget v4, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->height:I

    iget v15, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-gt v4, v15, :cond_3

    :cond_1
    iget v4, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    if-eq v4, v3, :cond_2

    iget v4, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    iget v15, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    if-gt v4, v15, :cond_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 1517
    :goto_2
    if-nez v4, :cond_4

    iget-boolean v15, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-nez v15, :cond_4

    .line 1519
    goto/16 :goto_a

    .line 1521
    :cond_4
    if-eqz v4, :cond_5

    const/4 v15, 0x2

    goto :goto_3

    :cond_5
    const/4 v15, 0x1

    .line 1522
    :goto_3
    aget v3, v13, v14

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v3

    .line 1523
    if-eqz v3, :cond_6

    .line 1524
    add-int/lit16 v15, v15, 0x3e8

    .line 1526
    :cond_6
    if-le v15, v8, :cond_7

    const/16 v17, 0x1

    goto :goto_4

    :cond_7
    const/16 v17, 0x0

    .line 1527
    :goto_4
    if-ne v15, v8, :cond_d

    .line 1528
    iget-boolean v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-eqz v0, :cond_9

    .line 1530
    iget v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    invoke-static {v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v0

    if-gez v0, :cond_8

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    :goto_5
    move/from16 v17, v16

    goto :goto_9

    .line 1536
    :cond_9
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->getPixelCount()I

    move-result v0

    .line 1537
    if-eq v0, v9, :cond_a

    .line 1538
    invoke-static {v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v0

    goto :goto_6

    .line 1539
    :cond_a
    iget v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    invoke-static {v0, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->compareFormatValues(II)I

    move-result v0

    .line 1540
    :goto_6
    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    .line 1541
    if-lez v0, :cond_c

    goto :goto_7

    :cond_b
    if-gez v0, :cond_c

    :goto_7
    goto :goto_8

    :cond_c
    const/16 v16, 0x0

    :goto_8
    move/from16 v17, v16

    .line 1544
    :cond_d
    :goto_9
    if-eqz v17, :cond_e

    .line 1545
    nop

    .line 1546
    nop

    .line 1547
    nop

    .line 1548
    iget v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->bitrate:I

    .line 1549
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->getPixelCount()I

    move-result v2

    move v10, v0

    move v9, v2

    move-object v6, v11

    move v7, v14

    move v8, v15

    .line 1509
    :cond_e
    :goto_a
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    const/4 v3, -0x1

    goto/16 :goto_1

    .line 1504
    :cond_f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    const/4 v3, -0x1

    goto/16 :goto_0

    .line 1554
    :cond_10
    if-nez v6, :cond_11

    const/4 v2, 0x0

    goto :goto_b

    .line 1555
    :cond_11
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v2, v6, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;I)V

    .line 1554
    :goto_b
    return-object v2
.end method


# virtual methods
.method public buildUponParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 1

    .line 1122
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final clearSelectionOverride(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;)V
    .locals 1

    .line 1163
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverride(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1164
    return-void
.end method

.method public final clearSelectionOverrides()V
    .locals 1

    .line 1175
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1176
    return-void
.end method

.method public final clearSelectionOverrides(I)V
    .locals 1

    .line 1169
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->clearSelectionOverrides(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1170
    return-void
.end method

.method public getParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .line 1117
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-object v0
.end method

.method public final getRendererDisabled(I)Z
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result p1

    return p1
.end method

.method public final getSelectionOverride(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
    .locals 1

    .line 1157
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object p1

    return-object p1
.end method

.method public final hasSelectionOverride(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;)Z
    .locals 1

    .line 1150
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->getParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;)Z

    move-result p1

    return p1
.end method

.method protected selectAllTracks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1274
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v9

    .line 1275
    new-array v10, v9, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    .line 1277
    nop

    .line 1278
    nop

    .line 1279
    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x1

    if-ge v12, v9, :cond_4

    .line 1280
    const/4 v1, 0x2

    invoke-virtual {v7, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1281
    if-nez v0, :cond_1

    .line 1282
    nop

    .line 1284
    invoke-virtual {v7, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    aget-object v2, p2, v12

    aget v3, p3, v12

    iget-object v5, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;

    .line 1283
    move-object/from16 v0, p0

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->selectVideoTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;[[IILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    aput-object v0, v10, v12

    .line 1289
    aget-object v0, v10, v12

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1291
    :cond_1
    :goto_1
    invoke-virtual {v7, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->length:I

    if-lez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    or-int/2addr v13, v14

    .line 1279
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1295
    :cond_4
    nop

    .line 1296
    nop

    .line 1297
    const/4 v0, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v12, v9, :cond_9

    .line 1298
    invoke-virtual {v7, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v1

    .line 1299
    packed-switch v1, :pswitch_data_0

    .line 1324
    nop

    .line 1326
    invoke-virtual {v7, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    aget-object v3, p2, v12

    .line 1325
    invoke-virtual {v6, v1, v2, v3, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->selectOtherTrack(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;[[ILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    aput-object v1, v10, v12

    goto :goto_5

    .line 1316
    :pswitch_0
    if-nez v15, :cond_8

    .line 1317
    nop

    .line 1319
    invoke-virtual {v7, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    aget-object v2, p2, v12

    .line 1318
    invoke-virtual {v6, v1, v2, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->selectTextTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;[[ILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    aput-object v1, v10, v12

    .line 1320
    aget-object v1, v10, v12

    if-eqz v1, :cond_5

    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    goto :goto_5

    .line 1302
    :pswitch_1
    goto :goto_5

    .line 1304
    :pswitch_2
    if-nez v0, :cond_8

    .line 1305
    nop

    .line 1307
    invoke-virtual {v7, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    aget-object v2, p2, v12

    aget v3, p3, v12

    .line 1311
    if-eqz v13, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    iget-object v0, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;

    :goto_4
    move-object v5, v0

    .line 1306
    move-object/from16 v0, p0

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->selectAudioTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;[[IILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    aput-object v0, v10, v12

    .line 1312
    aget-object v0, v10, v12

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    .line 1297
    :cond_8
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1331
    :cond_9
    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected selectAudioTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;[[IILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1582
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 1583
    nop

    .line 1584
    nop

    .line 1585
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v8, v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v9, -0x1

    :goto_0
    iget v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v6, v10, :cond_3

    .line 1586
    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    move-result-object v10

    .line 1587
    aget-object v11, p2, v6

    .line 1588
    const/4 v12, 0x0

    :goto_1
    iget v13, v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    if-ge v12, v13, :cond_2

    .line 1589
    aget v13, v11, v12

    iget-boolean v14, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v13, v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1591
    invoke-virtual {v10, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v13

    .line 1592
    new-instance v14, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;

    aget v15, v11, v12

    invoke-direct {v14, v13, v1, v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;I)V

    .line 1594
    if-eqz v8, :cond_0

    invoke-virtual {v14, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;->compareTo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$AudioTrackScore;)I

    move-result v13

    if-lez v13, :cond_1

    .line 1595
    :cond_0
    nop

    .line 1596
    nop

    .line 1597
    move v7, v6

    move v9, v12

    move-object v8, v14

    .line 1588
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1585
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1603
    :cond_3
    if-ne v7, v5, :cond_4

    .line 1604
    return-object v4

    .line 1607
    :cond_4
    invoke-virtual {v0, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    move-result-object v0

    .line 1608
    iget-boolean v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 1610
    aget-object v3, p2, v7

    iget-boolean v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    .line 1611
    invoke-static {v0, v3, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveAudioTracks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[IZ)[I

    move-result-object v1

    .line 1613
    array-length v3, v1

    if-lez v3, :cond_5

    .line 1614
    invoke-interface {v2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    return-object v0

    .line 1618
    :cond_5
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v1, v0, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;I)V

    return-object v1
.end method

.method protected selectOtherTrack(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;[[ILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1762
    nop

    .line 1763
    nop

    .line 1764
    nop

    .line 1765
    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, v5, :cond_5

    .line 1766
    invoke-virtual {p2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    move-result-object v5

    .line 1767
    aget-object v6, p3, v1

    .line 1768
    const/4 v7, 0x0

    :goto_1
    iget v8, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    if-ge v7, v8, :cond_4

    .line 1769
    aget v8, v6, v7

    iget-boolean v9, p4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v8, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1771
    invoke-virtual {v5, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v8

    .line 1772
    iget v8, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    .line 1773
    :goto_2
    if-eqz v8, :cond_1

    const/4 v9, 0x2

    .line 1774
    :cond_1
    aget v8, v6, v7

    invoke-static {v8, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1775
    add-int/lit16 v9, v9, 0x3e8

    .line 1777
    :cond_2
    if-le v9, v4, :cond_3

    .line 1778
    nop

    .line 1779
    nop

    .line 1780
    move-object v2, v5

    move v3, v7

    move v4, v9

    .line 1768
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1765
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1785
    :cond_5
    if-nez v2, :cond_6

    goto :goto_3

    .line 1786
    :cond_6
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {p1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;I)V

    .line 1785
    :goto_3
    return-object p1
.end method

.method protected selectTextTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;[[ILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1689
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    .line 1690
    nop

    .line 1691
    nop

    .line 1692
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    iget v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v4, v8, :cond_b

    .line 1693
    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 1694
    aget-object v9, p2, v4

    .line 1695
    const/4 v10, 0x0

    :goto_1
    iget v11, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->length:I

    if-ge v10, v11, :cond_a

    .line 1696
    aget v11, v9, v10

    iget-boolean v12, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {v11, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1698
    invoke-virtual {v8, v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;->getFormat(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v11

    .line 1699
    iget v12, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->selectionFlags:I

    iget v13, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    xor-int/lit8 v13, v13, -0x1

    and-int/2addr v12, v13

    .line 1701
    and-int/lit8 v13, v12, 0x1

    const/4 v14, 0x1

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    goto :goto_2

    :cond_0
    const/4 v13, 0x0

    .line 1702
    :goto_2
    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    goto :goto_3

    :cond_1
    const/4 v12, 0x0

    .line 1704
    :goto_3
    iget-object v15, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-static {v11, v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v15

    .line 1705
    if-nez v15, :cond_5

    iget-boolean v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    if-eqz v2, :cond_2

    .line 1706
    invoke-static {v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->formatHasNoLanguage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    .line 1718
    :cond_2
    if-eqz v13, :cond_3

    .line 1719
    const/4 v14, 0x3

    goto :goto_6

    .line 1720
    :cond_3
    if-eqz v12, :cond_9

    .line 1721
    iget-object v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-static {v11, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1722
    const/4 v14, 0x2

    goto :goto_6

    .line 1724
    :cond_4
    goto :goto_6

    .line 1707
    :cond_5
    :goto_4
    if-eqz v13, :cond_6

    .line 1708
    const/16 v2, 0x8

    goto :goto_5

    .line 1709
    :cond_6
    if-nez v12, :cond_7

    .line 1713
    const/4 v2, 0x6

    goto :goto_5

    .line 1715
    :cond_7
    const/4 v2, 0x4

    .line 1717
    :goto_5
    add-int v14, v2, v15

    .line 1730
    :goto_6
    aget v2, v9, v10

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1731
    add-int/lit16 v14, v14, 0x3e8

    .line 1733
    :cond_8
    if-le v14, v7, :cond_9

    .line 1734
    nop

    .line 1735
    nop

    .line 1736
    move-object v5, v8

    move v6, v10

    move v7, v14

    .line 1695
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1692
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1741
    :cond_b
    if-nez v5, :cond_c

    const/4 v2, 0x0

    goto :goto_7

    .line 1742
    :cond_c
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v2, v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;I)V

    .line 1741
    :goto_7
    return-object v2
.end method

.method protected final selectTracks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[I)Lccsanandroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I)",
            "Lccsanandroid/util/Pair<",
            "[",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;",
            "[",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1193
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 1194
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v1

    .line 1195
    nop

    .line 1196
    invoke-virtual {p0, p1, p2, p3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->selectAllTracks(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)[Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object p3

    .line 1203
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v1, :cond_4

    .line 1204
    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1205
    aput-object v4, p3, v3

    goto :goto_1

    .line 1207
    :cond_0
    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    move-result-object v6

    .line 1208
    invoke-virtual {v0, v3, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->hasSelectionOverride(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1209
    invoke-virtual {v0, v3, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getSelectionOverride(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v7

    .line 1210
    if-nez v7, :cond_1

    .line 1211
    aput-object v4, p3, v3

    goto :goto_1

    .line 1212
    :cond_1
    iget v4, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->length:I

    if-ne v4, v5, :cond_2

    .line 1213
    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;

    iget v5, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 1215
    invoke-virtual {v6, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    move-result-object v5

    iget-object v6, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    aget v6, v6, v2

    invoke-direct {v4, v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;I)V

    aput-object v4, p3, v3

    goto :goto_1

    .line 1217
    :cond_2
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveTrackSelectionFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;

    .line 1218
    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;

    iget v5, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 1220
    invoke-virtual {v6, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    move-result-object v5

    iget-object v6, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 1219
    invoke-interface {v4, v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;[I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object v4

    aput-object v4, p3, v3

    .line 1203
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1228
    :cond_4
    new-array v3, v1, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

    .line 1230
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_8

    .line 1231
    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->getRendererDisabled(I)Z

    move-result v7

    .line 1232
    if-nez v7, :cond_6

    .line 1234
    invoke-virtual {p1, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererType(I)I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_5

    aget-object v7, p3, v6

    if-eqz v7, :cond_6

    :cond_5
    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    .line 1236
    :goto_3
    if-eqz v7, :cond_7

    sget-object v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

    goto :goto_4

    :cond_7
    move-object v7, v4

    :goto_4
    aput-object v7, v3, v6

    .line 1230
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1240
    :cond_8
    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingAudioSessionId:I

    invoke-static {p1, p2, v3, p3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->maybeConfigureRenderersForTunneling(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;I)V

    .line 1247
    invoke-static {v3, p3}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected selectVideoTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;[[IILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1358
    nop

    .line 1359
    iget-boolean v0, p4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 1360
    nop

    .line 1361
    invoke-static {p1, p2, p3, p4, p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->selectAdaptiveVideoTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;[[IILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection$Factory;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object p3

    goto :goto_0

    .line 1368
    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    .line 1369
    invoke-static {p1, p2, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->selectFixedVideoTrack(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;[[ILccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object p3

    .line 1371
    :cond_1
    return-object p3
.end method

.method public setParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 1

    .line 1096
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->parametersReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1098
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->invalidate()V

    .line 1100
    :cond_0
    return-void
.end method

.method public setParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V
    .locals 0

    .line 1108
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->build()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    .line 1109
    return-void
.end method

.method public final setRendererDisabled(IZ)V
    .locals 1

    .line 1128
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setRendererDisabled(IZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1129
    return-void
.end method

.method public final setSelectionOverride(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)V
    .locals 1

    .line 1144
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setSelectionOverride(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1145
    return-void
.end method

.method public setTunnelingAudioSessionId(I)V
    .locals 1

    .line 1181
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->buildUponParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;->setTunnelingAudioSessionId(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;->setParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;)V

    .line 1182
    return-void
.end method
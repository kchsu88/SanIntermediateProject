.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;


# instance fields
.field public final allowMixedMimeAdaptiveness:Z

.field public final allowNonSeamlessAdaptiveness:Z

.field public final disabledTextTrackSelectionFlags:I

.field public final exceedRendererCapabilitiesIfNecessary:Z

.field public final exceedVideoConstraintsIfNecessary:Z

.field public final forceLowestBitrate:Z

.field public final maxVideoBitrate:I

.field public final maxVideoHeight:I

.field public final maxVideoWidth:I

.field public final preferredAudioLanguage:Ljava/lang/String;

.field public final preferredTextLanguage:Ljava/lang/String;

.field private final rendererDisabledFlags:Lccsanandroid/util/SparseBooleanArray;

.field public final selectUndeterminedTextLanguage:Z

.field private final selectionOverrides:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field public final tunnelingAudioSessionId:I

.field public final viewportHeight:I

.field public final viewportOrientationMayChange:Z

.field public final viewportWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 548
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 866
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 19

    move-object/from16 v0, p0

    .line 663
    new-instance v2, Lccsanandroid/util/SparseArray;

    move-object v1, v2

    invoke-direct {v2}, Lccsanandroid/util/SparseArray;-><init>()V

    new-instance v3, Lccsanandroid/util/SparseBooleanArray;

    move-object v2, v3

    invoke-direct {v3}, Lccsanandroid/util/SparseBooleanArray;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const/4 v13, 0x1

    const/4 v14, 0x1

    const v15, 0x7fffffff

    const v16, 0x7fffffff

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Lccsanandroid/util/SparseArray;Lccsanandroid/util/SparseBooleanArray;Ljava/lang/String;Ljava/lang/String;ZIZZZIIIZZIIZI)V

    .line 682
    return-void
.end method

.method constructor <init>(Lccsanandroid/os/Parcel;)V
    .locals 1

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 724
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->readSelectionOverrides(Lccsanandroid/os/Parcel;)Lccsanandroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Lccsanandroid/util/SparseArray;

    .line 725
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readSparseBooleanArray()Lccsanandroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Lccsanandroid/util/SparseBooleanArray;

    .line 726
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    .line 727
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    .line 728
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->readBoolean(Lccsanandroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    .line 729
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    .line 730
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->readBoolean(Lccsanandroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    .line 731
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->readBoolean(Lccsanandroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    .line 732
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->readBoolean(Lccsanandroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    .line 733
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    .line 734
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    .line 735
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    .line 736
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->readBoolean(Lccsanandroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    .line 737
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->readBoolean(Lccsanandroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    .line 738
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    .line 739
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    .line 740
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->readBoolean(Lccsanandroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    .line 741
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingAudioSessionId:I

    .line 742
    return-void
.end method

.method constructor <init>(Lccsanandroid/util/SparseArray;Lccsanandroid/util/SparseBooleanArray;Ljava/lang/String;Ljava/lang/String;ZIZZZIIIZZIIZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;",
            "Lccsanandroid/util/SparseBooleanArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIZZZIIIZZIIZI)V"
        }
    .end annotation

    .line 702
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    move-object v1, p1

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Lccsanandroid/util/SparseArray;

    .line 704
    move-object v1, p2

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Lccsanandroid/util/SparseBooleanArray;

    .line 705
    invoke-static {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    .line 706
    invoke-static {p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    .line 707
    move v1, p5

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    .line 708
    move v1, p6

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    .line 709
    move v1, p7

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    .line 710
    move v1, p8

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    .line 711
    move v1, p9

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    .line 712
    move v1, p10

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    .line 713
    move v1, p11

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    .line 714
    move v1, p12

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    .line 715
    move v1, p13

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    .line 716
    move/from16 v1, p14

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    .line 717
    move/from16 v1, p15

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    .line 718
    move/from16 v1, p16

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    .line 719
    move/from16 v1, p17

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    .line 720
    move/from16 v1, p18

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingAudioSessionId:I

    .line 721
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lccsanandroid/util/SparseArray;
    .locals 0

    .line 545
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Lccsanandroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lccsanandroid/util/SparseBooleanArray;
    .locals 0

    .line 545
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Lccsanandroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private static areRendererDisabledFlagsEqual(Lccsanandroid/util/SparseBooleanArray;Lccsanandroid/util/SparseBooleanArray;)Z
    .locals 4

    .line 920
    invoke-virtual {p0}, Lccsanandroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 921
    invoke-virtual {p1}, Lccsanandroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 922
    return v2

    .line 925
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 926
    invoke-virtual {p0, v1}, Lccsanandroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lccsanandroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1

    .line 927
    return v2

    .line 925
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 930
    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static areSelectionOverridesEqual(Lccsanandroid/util/SparseArray;Lccsanandroid/util/SparseArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;",
            "Lccsanandroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)Z"
        }
    .end annotation

    .line 936
    invoke-virtual {p0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v0

    .line 937
    invoke-virtual {p1}, Lccsanandroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 938
    return v2

    .line 940
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 941
    invoke-virtual {p0, v1}, Lccsanandroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lccsanandroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 942
    if-ltz v3, :cond_2

    .line 944
    invoke-virtual {p0, v1}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p1, v3}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 943
    invoke-static {v4, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->areSelectionOverridesEqual(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 940
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 945
    :cond_2
    :goto_1
    return v2

    .line 948
    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static areSelectionOverridesEqual(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;",
            "Ljava/util/Map<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;)Z"
        }
    .end annotation

    .line 954
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 955
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 956
    return v2

    .line 958
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 959
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    .line 960
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 963
    :cond_1
    goto :goto_0

    .line 961
    :cond_2
    :goto_1
    return v2

    .line 964
    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static readSelectionOverrides(Lccsanandroid/os/Parcel;)Lccsanandroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/os/Parcel;",
            ")",
            "Lccsanandroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation

    .line 884
    invoke-virtual {p0}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v0

    .line 885
    new-instance v1, Lccsanandroid/util/SparseArray;

    invoke-direct {v1, v0}, Lccsanandroid/util/SparseArray;-><init>(I)V

    .line 887
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 888
    invoke-virtual {p0}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v4

    .line 889
    invoke-virtual {p0}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v5

    .line 890
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 891
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    .line 892
    const-class v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {p0, v8}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    .line 893
    const-class v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {p0, v9}, Lccsanandroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Lccsanandroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    .line 894
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 896
    :cond_0
    invoke-virtual {v1, v4, v6}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 887
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 898
    :cond_1
    return-object v1
.end method

.method private static writeSelectionOverridesToParcel(Lccsanandroid/os/Parcel;Lccsanandroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/os/Parcel;",
            "Lccsanandroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)V"
        }
    .end annotation

    .line 903
    invoke-virtual {p1}, Lccsanandroid/util/SparseArray;->size()I

    move-result v0

    .line 904
    invoke-virtual {p0, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 905
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 906
    invoke-virtual {p1, v2}, Lccsanandroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 907
    invoke-virtual {p1, v2}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 908
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    .line 909
    invoke-virtual {p0, v3}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 910
    invoke-virtual {p0, v5}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 911
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 912
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/os/Parcelable;

    invoke-virtual {p0, v5, v1}, Lccsanandroid/os/Parcel;->writeParcelable(Lccsanandroid/os/Parcelable;I)V

    .line 913
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/os/Parcelable;

    invoke-virtual {p0, v4, v1}, Lccsanandroid/os/Parcel;->writeParcelable(Lccsanandroid/os/Parcelable;I)V

    .line 914
    goto :goto_1

    .line 905
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 916
    :cond_1
    return-void
.end method


# virtual methods
.method public final buildUpon()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    .locals 2

    .line 783
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$1;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 788
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 789
    return v0

    .line 791
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 794
    :cond_1
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 795
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    iget-boolean v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    iget-boolean v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget-boolean v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget-boolean v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iget-boolean v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    iget-boolean v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingAudioSessionId:I

    iget v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingAudioSessionId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    .line 809
    invoke-static {v2, v3}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    .line 810
    invoke-static {v2, v3}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Lccsanandroid/util/SparseBooleanArray;

    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Lccsanandroid/util/SparseBooleanArray;

    .line 811
    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->areRendererDisabledFlagsEqual(Lccsanandroid/util/SparseBooleanArray;Lccsanandroid/util/SparseBooleanArray;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Lccsanandroid/util/SparseArray;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Lccsanandroid/util/SparseArray;

    .line 812
    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->areSelectionOverridesEqual(Lccsanandroid/util/SparseArray;Lccsanandroid/util/SparseArray;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 795
    :goto_0
    return v0

    .line 792
    :cond_3
    :goto_1
    return v1
.end method

.method public final getRendererDisabled(I)Z
    .locals 1

    .line 751
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Lccsanandroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Lccsanandroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public final getSelectionOverride(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
    .locals 1

    .line 775
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 776
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final hasSelectionOverride(ILccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;)Z
    .locals 1

    .line 762
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 763
    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 817
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    .line 818
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    add-int/2addr v0, v1

    .line 819
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    add-int/2addr v0, v1

    .line 820
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    add-int/2addr v0, v1

    .line 821
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    add-int/2addr v0, v1

    .line 822
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    add-int/2addr v0, v1

    .line 823
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    add-int/2addr v0, v1

    .line 824
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    add-int/2addr v0, v1

    .line 825
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    add-int/2addr v0, v1

    .line 826
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    add-int/2addr v0, v1

    .line 827
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    add-int/2addr v0, v1

    .line 828
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    add-int/2addr v0, v1

    .line 829
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    add-int/2addr v0, v1

    .line 830
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingAudioSessionId:I

    add-int/2addr v0, v1

    .line 831
    mul-int/lit8 v0, v0, 0x1f

    .line 832
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 833
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 834
    return v0
.end method

.method public final writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 0

    .line 846
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Lccsanandroid/util/SparseArray;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->writeSelectionOverridesToParcel(Lccsanandroid/os/Parcel;Lccsanandroid/util/SparseArray;)V

    .line 847
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Lccsanandroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeSparseBooleanArray(Lccsanandroid/util/SparseBooleanArray;)V

    .line 848
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 849
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 850
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->selectUndeterminedTextLanguage:Z

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->writeBoolean(Lccsanandroid/os/Parcel;Z)V

    .line 851
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->disabledTextTrackSelectionFlags:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 852
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->writeBoolean(Lccsanandroid/os/Parcel;Z)V

    .line 853
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->writeBoolean(Lccsanandroid/os/Parcel;Z)V

    .line 854
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->writeBoolean(Lccsanandroid/os/Parcel;Z)V

    .line 855
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 856
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 857
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 858
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->writeBoolean(Lccsanandroid/os/Parcel;Z)V

    .line 859
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->writeBoolean(Lccsanandroid/os/Parcel;Z)V

    .line 860
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 861
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 862
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->writeBoolean(Lccsanandroid/os/Parcel;Z)V

    .line 863
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingAudioSessionId:I

    invoke-virtual {p1, p2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 864
    return-void
.end method

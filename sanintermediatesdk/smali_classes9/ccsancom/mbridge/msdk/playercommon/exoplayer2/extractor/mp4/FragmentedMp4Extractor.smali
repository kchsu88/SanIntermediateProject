.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$Flags;
    }
.end annotation


# static fields
.field private static final EMSG_FORMAT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field public static final FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_ENABLE_EMSG_TRACK:I = 0x4

.field private static final FLAG_SIDELOADED:I = 0x8

.field public static final FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME:I = 0x1

.field public static final FLAG_WORKAROUND_IGNORE_EDIT_LISTS:I = 0x10

.field public static final FLAG_WORKAROUND_IGNORE_TFDT_BOX:I = 0x2

.field private static final PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

.field private static final SAMPLE_GROUP_TYPE_seig:I

.field private static final STATE_READING_ATOM_HEADER:I = 0x0

.field private static final STATE_READING_ATOM_PAYLOAD:I = 0x1

.field private static final STATE_READING_ENCRYPTION_DATA:I = 0x2

.field private static final STATE_READING_SAMPLE_CONTINUE:I = 0x4

.field private static final STATE_READING_SAMPLE_START:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FragmentedMp4Extractor"


# instance fields
.field private final additionalEmsgTrackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field private atomData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final atomHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private atomHeaderBytesRead:I

.field private atomSize:J

.field private atomType:I

.field private cea608TrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final containerAtoms:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ">;"
        }
    .end annotation
.end field

.field private currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field private durationUs:J

.field private emsgTrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

.field private endOfMdatPosition:J

.field private final extendedTypeScratch:[B

.field private extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

.field private final flags:I

.field private haveOutputSeekMap:Z

.field private final nalBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final nalPrefix:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private final nalStartCode:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

.field private parserState:I

.field private pendingMetadataSampleBytes:I

.field private final pendingMetadataSampleInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingSeekTimeUs:J

.field private processSeiNalUnitPayload:Z

.field private sampleBytesWritten:I

.field private sampleCurrentNalBytesRemaining:I

.field private sampleSize:I

.field private segmentIndexEarliestPresentationTimeUs:J

.field private final sideloadedDrmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

.field private final sideloadedTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

.field private final timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

.field private final trackBundles:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->FACTORY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorsFactory;

    .line 108
    const-string v0, "seig"

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    .line 109
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    .line 111
    nop

    .line 112
    const/4 v0, 0x0

    const-string v1, "application/x-emsg"

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 111
    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    .line 174
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;)V

    .line 181
    return-void
.end method

.method public constructor <init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;)V
    .locals 1

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)V

    .line 189
    return-void
.end method

.method public constructor <init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)V
    .locals 6

    .line 204
    nop

    .line 205
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 204
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Ljava/util/List;)V

    .line 206
    return-void
.end method

.method public constructor <init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 224
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Ljava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;)V

    .line 226
    return-void
.end method

.method public constructor <init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;Ljava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;",
            ">;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;",
            ")V"
        }
    .end annotation

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    if-eqz p3, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    .line 249
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    .line 250
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

    .line 251
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedDrmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    .line 252
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    .line 253
    iput-object p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 254
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 255
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    sget-object p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 256
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 257
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 258
    new-array p1, p2, [B

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    .line 259
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    .line 260
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    .line 261
    new-instance p1, Lccsanandroid/util/SparseArray;

    invoke-direct {p1}, Lccsanandroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    .line 262
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 263
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 264
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 265
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 266
    return-void
.end method

.method private enterReadingAtomHeaderState()V
    .locals 1

    .line 328
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 329
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 330
    return-void
.end method

.method private getDefaultSampleValues(Lccsanandroid/util/SparseArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;",
            ">;I)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;"
        }
    .end annotation

    .line 521
    invoke-virtual {p1}, Lccsanandroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 524
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;

    return-object p1

    .line 526
    :cond_0
    invoke-virtual {p1, p2}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;

    return-object p1
.end method

.method private static getDrmInitDataFromAtoms(Ljava/util/List;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;",
            ">;)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .line 1343
    nop

    .line 1344
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1345
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1346
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 1347
    iget v5, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_pssh:I

    if-ne v5, v6, :cond_2

    .line 1348
    if-nez v3, :cond_0

    .line 1349
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    :cond_0
    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 1352
    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v5

    .line 1353
    if-nez v5, :cond_1

    .line 1354
    const-string v4, "FragmentedMp4Extractor"

    const-string v5, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v4, v5}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1356
    :cond_1
    new-instance v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1345
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1360
    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    invoke-direct {v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    :goto_2
    return-object v1
.end method

.method private static getNextFragmentRun(Lccsanandroid/util/SparseArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 1322
    nop

    .line 1323
    nop

    .line 1325
    invoke-virtual {p0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v0

    .line 1326
    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    .line 1327
    invoke-virtual {p0, v4}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1328
    iget v6, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iget-object v7, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;

    iget v7, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->trunCount:I

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 1331
    :cond_0
    iget-object v6, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v6, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v7, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v7, v6, v7

    .line 1332
    cmp-long v6, v7, v2

    if-gez v6, :cond_1

    .line 1333
    nop

    .line 1334
    move-object v1, v5

    move-wide v2, v7

    .line 1326
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1338
    :cond_2
    return-object v1
.end method

.method private static getTrackBundle(Lccsanandroid/util/SparseArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 844
    invoke-virtual {p0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 848
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    return-object p0

    .line 850
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    return-object p0
.end method

.method private maybeInitExtraTracks()V
    .locals 8

    .line 551
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 552
    const/4 v0, 0x2

    new-array v0, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 553
    nop

    .line 554
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->additionalEmsgTrackOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    if-eqz v3, :cond_0

    .line 555
    aput-object v3, v0, v1

    const/4 v3, 0x1

    goto :goto_0

    .line 554
    :cond_0
    const/4 v3, 0x0

    .line 557
    :goto_0
    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 558
    add-int/lit8 v4, v3, 0x1

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    .line 559
    invoke-virtual {v7}, Lccsanandroid/util/SparseArray;->size()I

    move-result v7

    invoke-interface {v6, v7, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    aput-object v5, v0, v3

    move v3, v4

    .line 561
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 563
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 564
    sget-object v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->EMSG_FORMAT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-interface {v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 563
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 567
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    if-nez v0, :cond_3

    .line 568
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 569
    nop

    :goto_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 570
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v3}, Lccsanandroid/util/SparseArray;->size()I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    const/4 v4, 0x3

    invoke-interface {v0, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 571
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->closedCaptionFormats:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-interface {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 572
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    aput-object v0, v3, v1

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 575
    :cond_3
    return-void
.end method

.method private onContainerAtomRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 452
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-ne v0, v1, :cond_0

    .line 453
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onMoovContainerAtomRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 454
    :cond_0
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v0, v1, :cond_1

    .line 455
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onMoofContainerAtomRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 456
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 457
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    .line 459
    :cond_2
    :goto_0
    return-void
.end method

.method private onEmsgLeafAtomRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V
    .locals 12

    .line 581
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 585
    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 586
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    .line 587
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 588
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 589
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    .line 590
    nop

    .line 591
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v1

    .line 594
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 595
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 596
    invoke-interface {v7, p1, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 594
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 600
    :cond_1
    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v3, v6

    if-eqz p1, :cond_4

    .line 601
    add-long/2addr v3, v1

    .line 602
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    if-eqz p1, :cond_2

    .line 603
    invoke-virtual {p1, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v3

    move-wide v9, v3

    goto :goto_1

    .line 602
    :cond_2
    move-wide v9, v3

    .line 605
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    array-length v0, p1

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v0, :cond_3

    aget-object v1, p1, v11

    .line 606
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v9

    move v5, v8

    invoke-interface/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 605
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 609
    :cond_3
    goto :goto_3

    .line 611
    :cond_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v0, v1, v2, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JI)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 613
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    add-int/2addr p1, v8

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 615
    :goto_3
    return-void

    .line 582
    :cond_5
    :goto_4
    return-void
.end method

.method private onLeafAtomRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->add(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto :goto_1

    .line 441
    :cond_0
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sidx:I

    if-ne v0, v1, :cond_1

    .line 442
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSidx(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;J)Lccsanandroid/util/Pair;

    move-result-object p1

    .line 443
    iget-object p2, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->segmentIndexEarliestPresentationTimeUs:J

    .line 444
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    iget-object p1, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->seekMap(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;)V

    .line 445
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    goto :goto_0

    .line 446
    :cond_1
    iget p2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_emsg:I

    if-ne p2, p3, :cond_2

    .line 447
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onEmsgLeafAtomRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    goto :goto_1

    .line 446
    :cond_2
    :goto_0
    nop

    .line 449
    :goto_1
    return-void
.end method

.method private onMoofContainerAtomRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extendedTypeScratch:[B

    invoke-static {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseMoof(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lccsanandroid/util/SparseArray;I[B)V

    .line 532
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedDrmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 533
    :cond_0
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    move-result-object p1

    .line 534
    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 535
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v1}, Lccsanandroid/util/SparseArray;->size()I

    move-result v1

    .line 536
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 537
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v3, v2}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->updateDrmInitData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;)V

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 541
    :cond_1
    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    .line 542
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {p1}, Lccsanandroid/util/SparseArray;->size()I

    move-result p1

    .line 543
    nop

    :goto_2
    if-ge v0, p1, :cond_2

    .line 544
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v1, v0}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    invoke-virtual {v1, v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->seek(J)V

    .line 543
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 546
    :cond_2
    iput-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 548
    :cond_3
    return-void
.end method

.method private onMoovContainerAtomRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 462
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Unexpected moov box."

    invoke-static {v2, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 464
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedDrmInitData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 465
    :cond_1
    iget-object v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDrmInitDataFromAtoms(Ljava/util/List;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;

    move-result-object v2

    .line 468
    :goto_1
    sget v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    invoke-virtual {v1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v5

    .line 469
    new-instance v12, Lccsanandroid/util/SparseArray;

    invoke-direct {v12}, Lccsanandroid/util/SparseArray;-><init>()V

    .line 470
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 471
    iget-object v8, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 472
    move-wide v13, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_4

    .line 473
    iget-object v7, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 474
    iget v9, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_trex:I

    if-ne v9, v10, :cond_2

    .line 475
    iget-object v7, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTrex(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsanandroid/util/Pair;

    move-result-object v7

    .line 476
    iget-object v9, v7, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v7, v7, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v12, v9, v7}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 477
    :cond_2
    iget v9, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mehd:I

    if-ne v9, v10, :cond_3

    .line 478
    iget-object v7, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseMehd(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v9

    move-wide v13, v9

    goto :goto_4

    .line 477
    :cond_3
    :goto_3
    nop

    .line 472
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 483
    :cond_4
    new-instance v15, Lccsanandroid/util/SparseArray;

    invoke-direct {v15}, Lccsanandroid/util/SparseArray;-><init>()V

    .line 484
    iget-object v5, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    .line 485
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v11, :cond_8

    .line 486
    iget-object v5, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 487
    iget v6, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-ne v6, v7, :cond_6

    .line 488
    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    invoke-virtual {v1, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v6

    iget v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_5

    const/16 v16, 0x1

    goto :goto_6

    :cond_5
    const/16 v16, 0x0

    :goto_6
    const/16 v17, 0x0

    move-wide v7, v13

    move-object v9, v2

    move/from16 v18, v10

    move/from16 v10, v16

    move/from16 v16, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/AtomParsers;->parseTrak(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;JLccsancom/mbridge/msdk/playercommon/exoplayer2/drm/DrmInitData;ZZ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

    move-result-object v5

    .line 490
    if-eqz v5, :cond_7

    .line 491
    iget v6, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v15, v6, v5}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 487
    :cond_6
    move/from16 v18, v10

    move/from16 v16, v11

    .line 485
    :cond_7
    :goto_7
    add-int/lit8 v10, v18, 0x1

    move/from16 v11, v16

    goto :goto_5

    .line 496
    :cond_8
    invoke-virtual {v15}, Lccsanandroid/util/SparseArray;->size()I

    move-result v1

    .line 497
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v2}, Lccsanandroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_a

    .line 499
    nop

    :goto_8
    if-ge v4, v1, :cond_9

    .line 500
    invoke-virtual {v15, v4}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

    .line 501
    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    iget v6, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->type:I

    invoke-interface {v5, v4, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object v5

    invoke-direct {v3, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;)V

    .line 502
    iget v5, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->id:I

    invoke-direct {v0, v12, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Lccsanandroid/util/SparseArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 503
    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    iget v6, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v5, v6, v3}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 504
    iget-wide v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    iget-wide v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->durationUs:J

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    .line 499
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 506
    :cond_9
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->maybeInitExtraTracks()V

    .line 507
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    goto :goto_b

    .line 509
    :cond_a
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v2}, Lccsanandroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v1, :cond_b

    goto :goto_9

    :cond_b
    const/4 v3, 0x0

    :goto_9
    invoke-static {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 510
    nop

    :goto_a
    if-ge v4, v1, :cond_c

    .line 511
    invoke-virtual {v15, v4}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

    .line 512
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    iget v5, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->id:I

    .line 513
    invoke-virtual {v3, v5}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v5, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->id:I

    .line 514
    invoke-direct {v0, v12, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getDefaultSampleValues(Lccsanandroid/util/SparseArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 510
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 517
    :cond_c
    :goto_b
    return-void
.end method

.method private outputPendingMetadataSamples(J)V
    .locals 13

    .line 1299
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1300
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    .line 1301
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 1302
    iget-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->presentationTimeDeltaUs:J

    add-long/2addr v1, p1

    .line 1303
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    if-eqz v3, :cond_0

    .line 1304
    invoke-virtual {v3, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v1

    .line 1306
    :cond_0
    iget-object v10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->emsgTrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    array-length v11, v10

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_1

    aget-object v3, v10, v12

    .line 1307
    const/4 v6, 0x1

    iget v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->size:I

    iget v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    const/4 v9, 0x0

    move-wide v4, v1

    invoke-interface/range {v3 .. v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 1306
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1314
    :cond_1
    goto :goto_0

    .line 1315
    :cond_2
    return-void
.end method

.method private static parseMehd(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    .line 636
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 637
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 638
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 639
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static parseMoof(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lccsanandroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 644
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 645
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 646
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 648
    iget v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    sget v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_traf:I

    if-ne v3, v4, :cond_0

    .line 649
    invoke-static {v2, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTraf(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lccsanandroid/util/SparseArray;I[B)V

    .line 645
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    :cond_1
    return-void
.end method

.method private static parseSaio(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 783
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 784
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 785
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v2

    .line 786
    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 787
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 790
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 791
    if-ne v0, v3, :cond_2

    .line 796
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 797
    iget-wide v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 798
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    :goto_0
    add-long/2addr v1, v3

    iput-wide v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 799
    return-void

    .line 793
    :cond_2
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected saio entry count: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseSaiz(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 746
    iget p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;->initializationVectorSize:I

    .line 747
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 748
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 749
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 750
    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 751
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 753
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 755
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 756
    iget v3, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v1, v3, :cond_5

    .line 760
    nop

    .line 761
    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 762
    iget-object v0, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    .line 763
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    .line 764
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 765
    add-int/2addr v5, v6

    .line 766
    if-le v6, p0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v0, v4

    .line 763
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 768
    :cond_2
    goto :goto_3

    .line 769
    :cond_3
    if-le v0, p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 770
    :goto_2
    mul-int v0, v0, v1

    add-int/lit8 v5, v0, 0x0

    .line 771
    iget-object p0, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {p0, v3, v1, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 773
    :goto_3
    invoke-virtual {p2, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 774
    return-void

    .line 757
    :cond_5
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length mismatch: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private static parseSenc(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 978
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 979
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 980
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result p1

    .line 982
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    .line 987
    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 988
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 989
    iget v2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    if-ne v1, v2, :cond_1

    .line 993
    iget-object v2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable:[Z

    invoke-static {v2, v0, v1, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 994
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->initEncryptionData(I)V

    .line 995
    invoke-virtual {p2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->fillEncryptionData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    .line 996
    return-void

    .line 990
    :cond_1
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length mismatch: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->sampleCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 984
    :cond_2
    new-instance p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string p1, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseSenc(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 973
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 974
    return-void
.end method

.method private static parseSgpd(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 1000
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 1002
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->SAMPLE_GROUP_TYPE_seig:I

    if-eq v5, v6, :cond_0

    .line 1004
    return-void

    .line 1006
    :cond_0
    invoke-static {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v4

    const/4 v5, 0x4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    .line 1007
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1009
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    if-ne v0, v7, :cond_a

    .line 1013
    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1014
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1015
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 1017
    return-void

    .line 1019
    :cond_2
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 1020
    if-ne v0, v7, :cond_4

    .line 1021
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1022
    :cond_3
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :cond_4
    const/4 v3, 0x2

    if-lt v0, v3, :cond_5

    .line 1025
    invoke-virtual {v1, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1027
    :cond_5
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    const-wide/16 v8, 0x1

    cmp-long v0, v3, v8

    if-nez v0, :cond_9

    .line 1031
    invoke-virtual {v1, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1032
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1033
    and-int/lit16 v3, v0, 0xf0

    shr-int/lit8 v13, v3, 0x4

    .line 1034
    and-int/lit8 v14, v0, 0xf

    .line 1035
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v7, :cond_6

    const/4 v9, 0x1

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    .line 1036
    :goto_1
    if-nez v9, :cond_7

    .line 1037
    return-void

    .line 1039
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    .line 1040
    const/16 v0, 0x10

    new-array v12, v0, [B

    .line 1041
    invoke-virtual {v1, v12, v3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1042
    const/4 v0, 0x0

    .line 1043
    if-eqz v9, :cond_8

    if-nez v11, :cond_8

    .line 1044
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1045
    new-array v4, v0, [B

    .line 1046
    invoke-virtual {v1, v4, v3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    move-object v15, v4

    goto :goto_2

    .line 1048
    :cond_8
    move-object v15, v0

    :goto_2
    iput-boolean v7, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    .line 1049
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v8, v0

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v15}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    .line 1051
    return-void

    .line 1028
    :cond_9
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_a
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseSidx(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;J)Lccsanandroid/util/Pair;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            "J)",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ChunkIndex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 1063
    move-object/from16 v0, p0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1065
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    .line 1067
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1068
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v9

    .line 1070
    nop

    .line 1071
    if-nez v1, :cond_0

    .line 1072
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 1073
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v5

    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    goto :goto_0

    .line 1075
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v3

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v5

    add-long v5, p1, v5

    move-wide v11, v3

    move-wide v13, v5

    .line 1078
    :goto_0
    const-wide/32 v5, 0xf4240

    move-wide v3, v11

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v15

    .line 1081
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 1084
    new-array v7, v1, [I

    .line 1085
    new-array v8, v1, [J

    .line 1086
    new-array v5, v1, [J

    .line 1087
    new-array v6, v1, [J

    .line 1089
    nop

    .line 1090
    nop

    .line 1091
    const/4 v3, 0x0

    move-wide v3, v11

    move-wide/from16 v17, v15

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v1, :cond_2

    .line 1092
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 1094
    const/high16 v19, -0x80000000

    and-int v19, v12, v19

    .line 1095
    if-nez v19, :cond_1

    .line 1098
    invoke-virtual/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v19

    .line 1100
    const v21, 0x7fffffff

    and-int v12, v12, v21

    aput v12, v7, v11

    .line 1101
    aput-wide v13, v8, v11

    .line 1105
    aput-wide v17, v6, v11

    .line 1106
    add-long v17, v3, v19

    .line 1107
    const-wide/32 v19, 0xf4240

    move-wide/from16 v3, v17

    move-object v12, v5

    move-object v2, v6

    move-wide/from16 v5, v19

    move/from16 p1, v1

    move-object v1, v7

    move-object/from16 v22, v8

    move-wide v7, v9

    invoke-static/range {v3 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v3

    .line 1108
    aget-wide v5, v2, v11

    sub-long v5, v3, v5

    aput-wide v5, v12, v11

    .line 1110
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1111
    aget v6, v1, v11

    int-to-long v6, v6

    add-long/2addr v13, v6

    .line 1091
    add-int/lit8 v11, v11, 0x1

    move-object v7, v1

    move-object v6, v2

    move-object v5, v12

    move-object/from16 v8, v22

    const/4 v2, 0x4

    move/from16 v1, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v17

    move-wide/from16 v17, v23

    goto :goto_1

    .line 1096
    :cond_1
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v1, "Unhandled indirect reference"

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_2
    move-object v12, v5

    move-object v2, v6

    move-object v1, v7

    move-object/from16 v22, v8

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ChunkIndex;

    move-object/from16 v4, v22

    invoke-direct {v3, v1, v4, v12, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ChunkIndex;-><init>([I[J[J[J)V

    invoke-static {v0, v3}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseTfdt(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    .line 860
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 861
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 862
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 863
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private static parseTfhd(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsanandroid/util/SparseArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;)",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;"
        }
    .end annotation

    .line 813
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 814
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 815
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v0

    .line 816
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 817
    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getTrackBundle(Lccsanandroid/util/SparseArray;I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object p1

    .line 818
    if-nez p1, :cond_0

    .line 819
    const/4 p0, 0x0

    return-object p0

    .line 821
    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 822
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v1

    .line 823
    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v1, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    .line 824
    iget-object v3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;

    iput-wide v1, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 827
    :cond_1
    iget-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 829
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 830
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 831
    :goto_0
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    .line 832
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    goto :goto_1

    :cond_3
    iget v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    .line 833
    :goto_1
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    .line 834
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    goto :goto_2

    :cond_4
    iget v4, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    .line 835
    :goto_2
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 836
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    goto :goto_3

    :cond_5
    iget p0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    .line 837
    :goto_3
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v1, v2, v3, v4, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 839
    return-object p1
.end method

.method private static parseTraf(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lccsanandroid/util/SparseArray;I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 659
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tfhd:I

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    .line 660
    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTfhd(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsanandroid/util/SparseArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object p1

    .line 661
    if-nez p1, :cond_0

    .line 662
    return-void

    .line 665
    :cond_0
    iget-object v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;

    .line 666
    iget-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 667
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 669
    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tfdt:I

    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    .line 670
    if-eqz v3, :cond_1

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_1

    .line 671
    sget v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tfdt:I

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTfdt(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v1

    .line 674
    :cond_1
    invoke-static {p0, p1, v1, v2, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTruns(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JI)V

    .line 676
    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

    iget-object p2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 677
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object p1

    .line 679
    sget p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_saiz:I

    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p2

    .line 680
    if-eqz p2, :cond_2

    .line 681
    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSaiz(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 684
    :cond_2
    sget p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_saio:I

    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p2

    .line 685
    if-eqz p2, :cond_3

    .line 686
    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSaio(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 689
    :cond_3
    sget p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_senc:I

    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p2

    .line 690
    if-eqz p2, :cond_4

    .line 691
    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 694
    :cond_4
    sget p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sbgp:I

    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p2

    .line 695
    sget v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sgpd:I

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    .line 696
    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    .line 697
    iget-object p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, v1, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSgpd(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 701
    :cond_6
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 702
    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_8

    .line 703
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 704
    iget v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_uuid:I

    if-ne v2, v3, :cond_7

    .line 705
    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-static {v1, v0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseUuid(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;[B)V

    .line 702
    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 708
    :cond_8
    return-void
.end method

.method private static parseTrex(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)Lccsanandroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;",
            ")",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;",
            ">;"
        }
    .end annotation

    .line 621
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 622
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 623
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 624
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 625
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    .line 626
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    .line 628
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v4, v1, v2, v3, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-static {v0, v4}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseTrun(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IJILccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)I
    .locals 31

    .line 879
    move-object/from16 v0, p0

    const/16 v1, 0x8

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 880
    invoke-virtual/range {p5 .. p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 881
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    .line 883
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

    .line 884
    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;

    .line 885
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;

    .line 887
    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    invoke-virtual/range {p5 .. p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    aput v6, v5, p1

    .line 888
    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget-wide v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    aput-wide v6, v5, p1

    .line 889
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_0

    .line 890
    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    aget-wide v6, v5, p1

    invoke-virtual/range {p5 .. p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    aput-wide v6, v5, p1

    .line 893
    :cond_0
    and-int/lit8 v5, v1, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 894
    :goto_0
    iget v8, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    .line 895
    if-eqz v5, :cond_2

    .line 896
    invoke-virtual/range {p5 .. p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    .line 899
    :cond_2
    and-int/lit16 v9, v1, 0x100

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 900
    :goto_1
    and-int/lit16 v10, v1, 0x200

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 901
    :goto_2
    and-int/lit16 v11, v1, 0x400

    if-eqz v11, :cond_5

    const/4 v11, 0x1

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    .line 902
    :goto_3
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 907
    :goto_4
    nop

    .line 911
    iget-object v12, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_7

    iget-object v12, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v12, v12

    if-ne v12, v7, :cond_7

    iget-object v12, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v15, v12, v6

    cmp-long v12, v15, v13

    if-nez v12, :cond_7

    .line 913
    iget-object v12, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v13, v12, v6

    const-wide/16 v15, 0x3e8

    iget-wide v6, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v17, v6

    invoke-static/range {v13 .. v18}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v13

    .line 916
    :cond_7
    iget-object v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    .line 917
    iget-object v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->sampleCompositionTimeOffsetTable:[I

    .line 918
    iget-object v15, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->sampleDecodingTimeTable:[J

    .line 919
    iget-object v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    .line 921
    iget v2, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->type:I

    move/from16 v17, v8

    const/4 v8, 0x2

    if-ne v2, v8, :cond_8

    const/4 v2, 0x1

    and-int/lit8 v8, p4, 0x1

    if-eqz v8, :cond_8

    const/16 v16, 0x1

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    .line 924
    :goto_5
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->trunLength:[I

    aget v8, v8, p1

    add-int v8, p6, v8

    .line 925
    iget-wide v2, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->timescale:J

    .line 926
    if-lez p1, :cond_9

    move-wide/from16 v24, v13

    move-object v14, v12

    iget-wide v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    goto :goto_6

    :cond_9
    move-wide/from16 v24, v13

    move-object v14, v12

    move-wide/from16 v12, p2

    .line 927
    :goto_6
    move-wide/from16 p1, v12

    move/from16 v12, p6

    :goto_7
    if-ge v12, v8, :cond_11

    .line 929
    if-eqz v9, :cond_a

    invoke-virtual/range {p5 .. p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v13

    goto :goto_8

    .line 930
    :cond_a
    iget v13, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;->duration:I

    .line 931
    :goto_8
    if-eqz v10, :cond_b

    invoke-virtual/range {p5 .. p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v18

    move/from16 v26, v9

    move/from16 v9, v18

    goto :goto_9

    :cond_b
    move/from16 v26, v9

    iget v9, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;->size:I

    .line 932
    :goto_9
    if-nez v12, :cond_c

    if-eqz v5, :cond_c

    move/from16 v27, v5

    move/from16 v5, v17

    goto :goto_a

    .line 933
    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual/range {p5 .. p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v18

    move/from16 v27, v5

    move/from16 v5, v18

    goto :goto_a

    :cond_d
    move/from16 v27, v5

    iget v5, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;->flags:I

    .line 934
    :goto_a
    if-eqz v1, :cond_e

    .line 940
    move/from16 v28, v1

    invoke-virtual/range {p5 .. p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 941
    move/from16 v29, v10

    move/from16 v30, v11

    int-to-long v10, v1

    const-wide/16 v18, 0x3e8

    mul-long v10, v10, v18

    div-long/2addr v10, v2

    long-to-int v1, v10

    aput v1, v7, v12

    .line 942
    const/4 v1, 0x0

    goto :goto_b

    .line 943
    :cond_e
    move/from16 v28, v1

    move/from16 v29, v10

    move/from16 v30, v11

    const/4 v1, 0x0

    aput v1, v7, v12

    .line 945
    :goto_b
    const-wide/16 v20, 0x3e8

    .line 946
    move-wide/from16 v18, p1

    move-wide/from16 v22, v2

    invoke-static/range {v18 .. v23}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    sub-long v10, v10, v24

    aput-wide v10, v15, v12

    .line 947
    aput v9, v6, v12

    .line 948
    shr-int/lit8 v5, v5, 0x10

    const/4 v9, 0x1

    and-int/2addr v5, v9

    if-nez v5, :cond_10

    if-eqz v16, :cond_f

    if-nez v12, :cond_10

    :cond_f
    const/4 v5, 0x1

    goto :goto_c

    :cond_10
    const/4 v5, 0x0

    :goto_c
    aput-boolean v5, v14, v12

    .line 950
    int-to-long v10, v13

    move-wide/from16 v18, v2

    move-wide/from16 v1, p1

    add-long/2addr v1, v10

    .line 927
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 p1, v1

    move-wide/from16 v2, v18

    move/from16 v9, v26

    move/from16 v5, v27

    move/from16 v1, v28

    move/from16 v10, v29

    move/from16 v11, v30

    goto/16 :goto_7

    .line 952
    :cond_11
    move-wide/from16 v1, p1

    iput-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->nextFragmentDecodeTime:J

    .line 953
    return v8
.end method

.method private static parseTruns(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;JI)V
    .locals 10

    .line 712
    nop

    .line 713
    nop

    .line 714
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->leafChildren:Ljava/util/List;

    .line 715
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 716
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 717
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 718
    iget v6, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_trun:I

    if-ne v6, v7, :cond_0

    .line 719
    iget-object v5, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 720
    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 721
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    .line 722
    if-lez v5, :cond_0

    .line 723
    add-int/2addr v4, v5

    .line 724
    add-int/lit8 v3, v3, 0x1

    .line 716
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 728
    :cond_1
    iput v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    .line 729
    iput v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    .line 730
    iput v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 731
    iget-object v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->initTables(II)V

    .line 733
    nop

    .line 734
    nop

    .line 735
    const/4 v3, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 736
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    .line 737
    iget v4, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->type:I

    sget v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_trun:I

    if-ne v4, v5, :cond_2

    .line 738
    add-int/lit8 v9, v3, 0x1

    iget-object v7, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-static/range {v2 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseTrun(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;IJILccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)I

    move-result v2

    move v8, v2

    move v3, v9

    .line 735
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 742
    :cond_3
    return-void
.end method

.method private static parseUuid(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 958
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 959
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p0, p2, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 962
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    .line 963
    return-void

    .line 969
    :cond_0
    invoke-static {p0, v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parseSenc(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;ILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;)V

    .line 970
    return-void
.end method

.method private processAtomEnded(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;
        }
    .end annotation

    .line 432
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 433
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onContainerAtomRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;)V

    goto :goto_0

    .line 435
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 436
    return-void
.end method

.method private readAtomHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 333
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 335
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v2, v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    return v2

    .line 338
    :cond_0
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 339
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 340
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    iput-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    .line 341
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    .line 344
    :cond_1
    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 346
    nop

    .line 347
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-interface {p1, v0, v1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 348
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    .line 349
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    iput-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    goto :goto_0

    .line 350
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 353
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    .line 354
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 355
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget-wide v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;->endPosition:J

    .line 357
    :cond_3
    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    .line 358
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    goto :goto_1

    .line 350
    :cond_4
    :goto_0
    nop

    .line 362
    :cond_5
    :goto_1
    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_f

    .line 366
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 367
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v0, v6, :cond_6

    .line 369
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v0

    .line 370
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_6

    .line 371
    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v7, v6}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v7, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;

    .line 372
    iput-wide v4, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->atomPosition:J

    .line 373
    iput-wide v4, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 374
    iput-wide v4, v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->dataPosition:J

    .line 370
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 378
    :cond_6
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    sget v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mdat:I

    const/4 v7, 0x0

    if-ne v0, v6, :cond_8

    .line 379
    iput-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 380
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    .line 381
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    if-nez p1, :cond_7

    .line 383
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->durationUs:J

    invoke-direct {v0, v1, v2, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->seekMap(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/SeekMap;)V

    .line 384
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->haveOutputSeekMap:Z

    .line 386
    :cond_7
    const/4 p1, 0x2

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 387
    return v3

    .line 390
    :cond_8
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->shouldParseContainerAtom(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 391
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    add-long/2addr v0, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v0, v4

    .line 392
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    iget v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-direct {v2, v4, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$ContainerAtom;-><init>(IJ)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 393
    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-nez p1, :cond_9

    .line 394
    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    goto :goto_3

    .line 397
    :cond_9
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 399
    :goto_3
    goto :goto_4

    :cond_a
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->shouldParseLeafAtom(I)Z

    move-result p1

    const-wide/32 v4, 0x7fffffff

    if-eqz p1, :cond_d

    .line 400
    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    if-ne p1, v1, :cond_c

    .line 403
    iget-wide v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long p1, v6, v4

    if-gtz p1, :cond_b

    .line 406
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    long-to-int v0, v6

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 407
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    iput v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    goto :goto_4

    .line 404
    :cond_b
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 401
    :cond_c
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_d
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    cmp-long p1, v0, v4

    if-gtz p1, :cond_e

    .line 413
    iput-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    .line 414
    iput v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 417
    :goto_4
    return v3

    .line 411
    :cond_e
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 363
    :cond_f
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v0, "Atom size less than header length (unsupported)."

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private readAtomPayload(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 421
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomSize:J

    long-to-int v1, v0

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomHeaderBytesRead:I

    sub-int/2addr v1, v0

    .line 422
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v2, 0x8

    invoke-interface {p1, v0, v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 424
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomType:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->atomData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;-><init>(ILccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;)V

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->onLeafAtomRead(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom$LeafAtom;J)V

    goto :goto_0

    .line 426
    :cond_0
    invoke-interface {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 428
    :goto_0
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processAtomEnded(J)V

    .line 429
    return-void
.end method

.method private readEncryptionData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1119
    nop

    .line 1120
    nop

    .line 1121
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0}, Lccsanandroid/util/SparseArray;->size()I

    move-result v0

    .line 1122
    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 1123
    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v5, v4}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;

    .line 1124
    iget-boolean v6, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->sampleEncryptionDataNeedsFill:Z

    if-eqz v6, :cond_0

    iget-wide v6, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    cmp-long v8, v6, v2

    if-gez v8, :cond_0

    .line 1126
    iget-wide v1, v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->auxiliaryDataPosition:J

    .line 1127
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v3, v4}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-wide v9, v1

    move-object v1, v3

    move-wide v2, v9

    .line 1122
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1130
    :cond_1
    if-nez v1, :cond_2

    .line 1131
    const/4 p1, 0x3

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1132
    return-void

    .line 1134
    :cond_2
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    .line 1135
    if-ltz v0, :cond_3

    .line 1138
    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1139
    iget-object v0, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->fillEncryptionData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)V

    .line 1140
    return-void

    .line 1136
    :cond_3
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v0, "Offset to encryption data was negative."

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private readSample(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1159
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v2, v4, :cond_7

    .line 1160
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v2, :cond_3

    .line 1161
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->getNextFragmentRun(Lccsanandroid/util/SparseArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-result-object v2

    .line 1162
    if-nez v2, :cond_1

    .line 1165
    iget-wide v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->endOfMdatPosition:J

    invoke-interface/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    .line 1166
    if-ltz v3, :cond_0

    .line 1169
    invoke-interface {v1, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1170
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 1171
    return v7

    .line 1167
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;

    const-string v2, "Offset to end of mdat was negative."

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1174
    :cond_1
    iget-object v8, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v8, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget v9, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v9, v8, v9

    .line 1177
    invoke-interface/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    sub-long/2addr v9, v11

    long-to-int v8, v9

    .line 1178
    if-gez v8, :cond_2

    .line 1180
    const-string v8, "FragmentedMp4Extractor"

    const-string v9, "Ignoring negative offset to sample data."

    invoke-static {v8, v9}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/4 v8, 0x0

    .line 1183
    :cond_2
    invoke-interface {v1, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1184
    iput-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1187
    :cond_3
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v2, v2, v8

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1190
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v8, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    if-ge v2, v8, :cond_5

    .line 1191
    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1192
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->access$000(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)V

    .line 1193
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1194
    iput-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1196
    :cond_4
    iput v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1197
    return v6

    .line 1200
    :cond_5
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

    iget v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->sampleTransformation:I

    if-ne v2, v6, :cond_6

    .line 1201
    iget v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/16 v8, 0x8

    sub-int/2addr v2, v8

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1202
    invoke-interface {v1, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 1204
    :cond_6
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->outputSampleEncryptionData()I

    move-result v2

    iput v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1205
    iget v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v8, v2

    iput v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    .line 1206
    iput v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1207
    iput v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1210
    :cond_7
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;

    .line 1211
    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v8, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

    .line 1212
    iget-object v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v10, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    .line 1213
    iget-object v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v9, v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1214
    invoke-virtual {v2, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->getSamplePresentationTime(I)J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long v11, v11, v13

    .line 1215
    iget-object v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->timestampAdjuster:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;

    if-eqz v13, :cond_8

    .line 1216
    invoke-virtual {v13, v11, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide v11

    move-wide v14, v11

    goto :goto_0

    .line 1215
    :cond_8
    move-wide v14, v11

    .line 1218
    :goto_0
    iget v11, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    if-eqz v11, :cond_d

    .line 1221
    iget-object v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v11, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    .line 1222
    aput-byte v7, v11, v7

    .line 1223
    aput-byte v7, v11, v6

    .line 1224
    const/4 v12, 0x2

    aput-byte v7, v11, v12

    .line 1225
    iget v12, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    add-int/2addr v12, v6

    .line 1226
    iget v13, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->nalUnitLengthFieldLength:I

    rsub-int/lit8 v13, v13, 0x4

    .line 1230
    :goto_1
    iget v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v4, v3, :cond_c

    .line 1231
    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    if-nez v3, :cond_a

    .line 1233
    invoke-interface {v1, v11, v13, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1234
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1235
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v3

    sub-int/2addr v3, v6

    iput v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1237
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1238
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalStartCode:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-interface {v10, v3, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 1240
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalPrefix:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-interface {v10, v3, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 1241
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    array-length v3, v3

    if-lez v3, :cond_9

    iget-object v3, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    aget-byte v4, v11, v5

    .line 1242
    invoke-static {v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil;->isNalUnitSei(Ljava/lang/String;B)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    .line 1243
    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1244
    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    add-int/2addr v3, v13

    iput v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    goto :goto_1

    .line 1247
    :cond_a
    iget-boolean v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->processSeiNalUnitPayload:Z

    if-eqz v4, :cond_b

    .line 1249
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->reset(I)V

    .line 1250
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v1, v3, v7, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 1251
    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    invoke-interface {v10, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;I)V

    .line 1252
    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1254
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->data:[B

    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-static {v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NalUnitUtil;->unescapeStream([BI)I

    move-result v4

    .line 1256
    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v6, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget-object v6, v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v7, "video/hevc"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1257
    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    .line 1258
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->nalBuffer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;

    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->cea608TrackOutputs:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    invoke-static {v14, v15, v4, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/CeaUtil;->consume(JLccsancom/mbridge/msdk/playercommon/exoplayer2/util/ParsableByteArray;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;)V

    .line 1259
    goto :goto_3

    .line 1261
    :cond_b
    const/4 v4, 0x0

    invoke-interface {v10, v1, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v3

    .line 1263
    :goto_3
    iget v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v4, v3

    iput v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1264
    iget v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    sub-int/2addr v4, v3

    iput v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleCurrentNalBytesRemaining:I

    .line 1265
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1267
    :cond_c
    const/4 v3, 0x0

    goto :goto_5

    .line 1268
    :cond_d
    :goto_4
    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    iget v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    if-ge v3, v4, :cond_e

    .line 1269
    sub-int/2addr v4, v3

    const/4 v3, 0x0

    invoke-interface {v10, v1, v4, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v4

    .line 1270
    iget v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    add-int/2addr v5, v4

    iput v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleBytesWritten:I

    .line 1271
    goto :goto_4

    .line 1268
    :cond_e
    const/4 v3, 0x0

    .line 1274
    :goto_5
    iget-object v1, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v1, v1, v9

    if-eqz v1, :cond_f

    .line 1275
    const/4 v7, 0x1

    goto :goto_6

    :cond_f
    const/4 v7, 0x0

    .line 1278
    :goto_6
    nop

    .line 1279
    iget-boolean v1, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->definesEncryptionData:Z

    if-eqz v1, :cond_11

    .line 1280
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v1, v7

    .line 1281
    iget-object v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    if-eqz v3, :cond_10

    .line 1282
    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->trackEncryptionBox:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    goto :goto_7

    .line 1283
    :cond_10
    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackFragment;->header:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;

    iget v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    invoke-virtual {v8, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v2

    .line 1284
    :goto_7
    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/TrackEncryptionBox;->cryptoData:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;

    move v13, v1

    move-object/from16 v16, v2

    goto :goto_8

    .line 1279
    :cond_11
    move v13, v7

    const/16 v16, 0x0

    .line 1287
    :goto_8
    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sampleSize:I

    const/4 v2, 0x0

    move-wide v11, v14

    move-wide v3, v14

    move v14, v1

    move v15, v2

    invoke-interface/range {v10 .. v16}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 1290
    invoke-direct {v0, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->outputPendingMetadataSamples(J)V

    .line 1291
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->next()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1292
    const/4 v1, 0x0

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->currentTrackBundle:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    .line 1294
    :cond_12
    const/4 v1, 0x3

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    .line 1295
    const/4 v1, 0x1

    return v1
.end method

.method private static shouldParseContainerAtom(I)Z
    .locals 1

    .line 1376
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_trak:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_traf:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

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

.method private static shouldParseLeafAtom(I)Z
    .locals 1

    .line 1365
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mvhd:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sidx:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tfdt:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tfhd:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_trex:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_trun:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_pssh:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_saiz:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_saio:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_senc:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_uuid:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sbgp:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_sgpd:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_mehd:I

    if-eq p0, v0, :cond_1

    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Atom;->TYPE_emsg:I

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


# virtual methods
.method public final init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;)V
    .locals 3

    .line 275
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    .line 276
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

    if-eqz v0, :cond_0

    .line 277
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;)V

    .line 278
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->sideloadedTrack:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;

    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;

    invoke-direct {v0, v2, v2, v2, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-virtual {v1, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Track;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/DefaultSampleValues;)V

    .line 279
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->maybeInitExtraTracks()V

    .line 281
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    .line 283
    :cond_0
    return-void
.end method

.method public final read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 307
    :cond_0
    :goto_0
    iget p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->parserState:I

    packed-switch p2, :pswitch_data_0

    .line 320
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readSample(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 321
    const/4 p1, 0x0

    return p1

    .line 317
    :pswitch_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readEncryptionData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)V

    .line 318
    goto :goto_0

    .line 314
    :pswitch_1
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readAtomPayload(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)V

    .line 315
    goto :goto_0

    .line 309
    :pswitch_2
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->readAtomHeader(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 310
    const/4 p1, -0x1

    return p1

    .line 320
    :cond_1
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final release()V
    .locals 0

    .line 301
    return-void
.end method

.method public final seek(JJ)V
    .locals 2

    .line 287
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {p1}, Lccsanandroid/util/SparseArray;->size()I

    move-result p1

    .line 288
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 289
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->trackBundles:Lccsanandroid/util/SparseArray;

    invoke-virtual {v1, v0}, Lccsanandroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleInfos:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 292
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingMetadataSampleBytes:I

    .line 293
    iput-wide p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->pendingSeekTimeUs:J

    .line 294
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->containerAtoms:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 295
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/FragmentedMp4Extractor;->enterReadingAtomHeaderState()V

    .line 296
    return-void
.end method

.method public final sniff(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 270
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/mp4/Sniffer;->sniffFragmented(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method

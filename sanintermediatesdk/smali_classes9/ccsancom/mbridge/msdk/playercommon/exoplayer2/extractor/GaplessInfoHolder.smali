.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"


# static fields
.field private static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final GAPLESS_DESCRIPTION:Ljava/lang/String; = "iTunSMPB"

.field private static final GAPLESS_DOMAIN:Ljava/lang/String; = "com.apple.iTunes"

.field public static final GAPLESS_INFO_ID3_FRAME_PREDICATE:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# instance fields
.field public encoderDelay:I

.field public encoderPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_INFO_ID3_FRAME_PREDICATE:Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 45
    nop

    .line 46
    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 65
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 66
    return-void
.end method

.method private setFromComment(Ljava/lang/String;)Z
    .locals 4

    .line 120
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 124
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    .line 125
    if-gtz v1, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    goto :goto_1

    .line 126
    :cond_1
    :goto_0
    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 127
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return v0

    .line 130
    :catch_0
    move-exception p1

    .line 134
    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final hasGaplessInfo()Z
    .locals 2

    .line 141
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setFromMetadata(Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)Z
    .locals 7

    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 93
    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 94
    instance-of v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;

    const-string v4, "iTunSMPB"

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 95
    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;

    .line 96
    iget-object v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    .line 97
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    return v5

    .line 100
    :cond_0
    instance-of v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/InternalFrame;

    if-eqz v3, :cond_1

    .line 101
    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/InternalFrame;

    .line 102
    iget-object v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/InternalFrame;->domain:Ljava/lang/String;

    const-string v6, "com.apple.iTunes"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/InternalFrame;->description:Ljava/lang/String;

    .line 103
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/id3/InternalFrame;->text:Ljava/lang/String;

    .line 104
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    return v5

    .line 100
    :cond_1
    nop

    .line 92
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_3
    return v0
.end method

.method public final setFromXingHeaderValue(I)Z
    .locals 1

    .line 75
    shr-int/lit8 v0, p1, 0xc

    .line 76
    and-int/lit16 p1, p1, 0xfff

    .line 77
    if-gtz v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 78
    :cond_1
    :goto_0
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 79
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 80
    const/4 p1, 0x1

    return p1
.end method

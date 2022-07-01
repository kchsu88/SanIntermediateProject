.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtractorHolder"
.end annotation


# instance fields
.field private extractor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

.field private final extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

.field private final extractors:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;


# direct methods
.method public constructor <init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    .line 894
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    .line 895
    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    .line 934
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_0

    .line 935
    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;->release()V

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    .line 938
    :cond_0
    return-void
.end method

.method public final selectExtractor(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsanandroid/net/Uri;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 910
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    if-eqz v0, :cond_0

    .line 911
    return-object v0

    .line 913
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 915
    :try_start_0
    invoke-interface {v3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;->sniff(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 916
    iput-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 917
    goto :goto_1

    .line 922
    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 923
    throw p2

    .line 919
    :catch_0
    move-exception v3

    .line 922
    :cond_1
    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 923
    nop

    .line 913
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 925
    :cond_2
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    if-eqz p1, :cond_3

    .line 929
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractorOutput:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;->init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorOutput;)V

    .line 930
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    return-object p1

    .line 926
    :cond_3
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/UnrecognizedInputFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "None of the available extractors ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->extractors:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    .line 927
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->getCommaDelimitedSimpleClassNames([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") could read the stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/UnrecognizedInputFormatException;-><init>(Ljava/lang/String;Lccsanandroid/net/Uri;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

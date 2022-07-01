.class final Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cea708CueInfo"
.end annotation


# static fields
.field private static final LEAST_IMPORTANT_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final cue:Lccsancom/google/android/exoplayer2/text/Cue;

.field public final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1391
    sget-object v0, Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo$$ExternalSyntheticLambda0;->INSTANCE:Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo$$ExternalSyntheticLambda0;

    sput-object v0, Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->LEAST_IMPORTANT_FIRST:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lccsanandroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "textAlignment"    # Lccsanandroid/text/Layout$Alignment;
    .param p3, "line"    # F
    .param p4, "lineType"    # I
    .param p5, "lineAnchor"    # I
    .param p6, "position"    # F
    .param p7, "positionAnchor"    # I
    .param p8, "size"    # F
    .param p9, "windowColorSet"    # Z
    .param p10, "windowColor"    # I
    .param p11, "priority"    # I

    .line 1429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1430
    new-instance v0, Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    .line 1432
    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 1433
    invoke-virtual {v0, p2}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setTextAlignment(Lccsanandroid/text/Layout$Alignment;)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 1434
    invoke-virtual {v0, p3, p4}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 1435
    invoke-virtual {v0, p5}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 1436
    invoke-virtual {v0, p6}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 1437
    invoke-virtual {v0, p7}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 1438
    invoke-virtual {v0, p8}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setSize(F)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 1439
    .local v0, "cueBuilder":Lccsancom/google/android/exoplayer2/text/Cue$Builder;
    if-eqz p9, :cond_0

    .line 1440
    invoke-virtual {v0, p10}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setWindowColor(I)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    .line 1442
    :cond_0
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->build()Lccsancom/google/android/exoplayer2/text/Cue;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->cue:Lccsancom/google/android/exoplayer2/text/Cue;

    .line 1443
    iput p11, p0, Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    .line 1444
    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    .line 1385
    sget-object v0, Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->LEAST_IMPORTANT_FIRST:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic lambda$static$0(Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;)I
    .locals 2
    .param p0, "thisInfo"    # Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;
    .param p1, "thatInfo"    # Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;

    .line 1392
    iget v0, p1, Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    iget v1, p0, Lccsancom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    invoke-static {v0, v1}, Lccsanandroidx/constraintlayout/motion/widget/KeyCycleOscillator$1$$ExternalSyntheticBackport0;->m(II)I

    move-result v0

    return v0
.end method

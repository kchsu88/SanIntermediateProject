.class final Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebvttCueInfoBuilder"
.end annotation


# instance fields
.field public endTimeUs:J

.field public line:F

.field public lineAnchor:I

.field public lineType:I

.field public position:F

.field public positionAnchor:I

.field public size:F

.field public startTimeUs:J

.field public text:Ljava/lang/CharSequence;

.field public textAlignment:I

.field public verticalType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    .line 781
    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J

    .line 783
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    .line 784
    const v0, -0x800001

    iput v0, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    .line 786
    const/4 v1, 0x1

    iput v1, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    .line 788
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    .line 789
    iput v0, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    .line 790
    const/high16 v0, -0x80000000

    iput v0, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    .line 792
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    .line 793
    iput v0, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    .line 794
    return-void
.end method

.method private static computeLine(FI)F
    .locals 3
    .param p0, "line"    # F
    .param p1, "lineType"    # I

    .line 827
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, -0x800001

    cmpl-float v2, p0, v1

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    const/4 v2, 0x0

    cmpg-float v2, p0, v2

    if-ltz v2, :cond_0

    cmpl-float v2, p0, v0

    if-lez v2, :cond_1

    .line 830
    :cond_0
    return v0

    .line 831
    :cond_1
    cmpl-float v2, p0, v1

    if-eqz v2, :cond_2

    .line 833
    return p0

    .line 834
    :cond_2
    if-nez p1, :cond_3

    .line 835
    return v0

    .line 839
    :cond_3
    return v1
.end method

.method private static convertTextAlignment(I)Lccsanandroid/text/Layout$Alignment;
    .locals 2
    .param p0, "textAlignment"    # I

    .line 876
    packed-switch p0, :pswitch_data_0

    .line 886
    const/16 v0, 0x22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown textAlignment: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebvttCueParser"

    invoke-static {v1, v0}, Lccsancom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const/4 v0, 0x0

    return-object v0

    .line 884
    :pswitch_0
    sget-object v0, Lccsanandroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Lccsanandroid/text/Layout$Alignment;

    return-object v0

    .line 881
    :pswitch_1
    sget-object v0, Lccsanandroid/text/Layout$Alignment;->ALIGN_CENTER:Lccsanandroid/text/Layout$Alignment;

    return-object v0

    .line 879
    :pswitch_2
    sget-object v0, Lccsanandroid/text/Layout$Alignment;->ALIGN_NORMAL:Lccsanandroid/text/Layout$Alignment;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static deriveMaxSize(IF)F
    .locals 3
    .param p0, "positionAnchor"    # I
    .param p1, "position"    # F

    .line 893
    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_0

    .line 906
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :pswitch_0
    return p1

    .line 899
    :pswitch_1
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 900
    mul-float v2, v2, p1

    return v2

    .line 902
    :cond_0
    sub-float/2addr v0, p1

    mul-float v0, v0, v2

    return v0

    .line 895
    :pswitch_2
    sub-float/2addr v0, p1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static derivePosition(I)F
    .locals 1
    .param p0, "textAlignment"    # I

    .line 845
    packed-switch p0, :pswitch_data_0

    .line 854
    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    .line 849
    :pswitch_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 847
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static derivePositionAnchor(I)I
    .locals 1
    .param p0, "textAlignment"    # I

    .line 861
    packed-switch p0, :pswitch_data_0

    .line 870
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 867
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 864
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public build()Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    .locals 7

    .line 797
    new-instance v6, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->build()Lccsancom/google/android/exoplayer2/text/Cue;

    move-result-object v1

    iget-wide v2, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    iget-wide v4, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;-><init>(Lccsancom/google/android/exoplayer2/text/Cue;JJ)V

    return-object v6
.end method

.method public toCueBuilder()Lccsancom/google/android/exoplayer2/text/Cue$Builder;
    .locals 5

    .line 802
    iget v0, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    const v1, -0x800001

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->derivePosition(I)F

    move-result v0

    .line 805
    .local v0, "position":F
    :goto_0
    iget v1, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 806
    goto :goto_1

    .line 807
    :cond_1
    iget v1, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->derivePositionAnchor(I)I

    move-result v1

    :goto_1
    nop

    .line 808
    .local v1, "positionAnchor":I
    new-instance v2, Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v2}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    iget v3, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    .line 810
    invoke-static {v3}, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->convertTextAlignment(I)Lccsanandroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setTextAlignment(Lccsanandroid/text/Layout$Alignment;)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    iget v4, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    .line 811
    invoke-static {v3, v4}, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->computeLine(FI)F

    move-result v3

    iget v4, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    invoke-virtual {v2, v3, v4}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    .line 812
    invoke-virtual {v2, v3}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    .line 813
    invoke-virtual {v2, v0}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    .line 814
    invoke-virtual {v2, v1}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    .line 815
    invoke-static {v1, v0}, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->deriveMaxSize(IF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setSize(F)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    .line 816
    invoke-virtual {v2, v3}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setVerticalType(I)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    .line 818
    .local v2, "cueBuilder":Lccsancom/google/android/exoplayer2/text/Cue$Builder;
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 819
    invoke-virtual {v2, v3}, Lccsancom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lccsancom/google/android/exoplayer2/text/Cue$Builder;

    .line 822
    :cond_2
    return-object v2
.end method

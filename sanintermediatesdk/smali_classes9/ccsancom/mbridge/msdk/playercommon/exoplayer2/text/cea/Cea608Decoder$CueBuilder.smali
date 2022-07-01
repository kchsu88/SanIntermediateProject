.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;
.super Ljava/lang/Object;
.source "Cea608Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;
    }
.end annotation


# static fields
.field private static final BASE_ROW:I = 0xf

.field private static final SCREEN_CHARWIDTH:I = 0x20


# instance fields
.field private captionMode:I

.field private captionRowCount:I

.field private final captionStringBuilder:Ljava/lang/StringBuilder;

.field private final cueStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;",
            ">;"
        }
    .end annotation
.end field

.field private indent:I

.field private final rolledUpCaptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private row:I

.field private tabOffset:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->reset(I)V

    .line 594
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setCaptionRowCount(I)V

    .line 595
    return-void
.end method

.method private static setColorSpan(Lccsanandroid/text/SpannableStringBuilder;III)V
    .locals 1

    .line 811
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 813
    return-void

    .line 815
    :cond_0
    new-instance v0, Lccsanandroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p3}, Lccsanandroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 p3, 0x21

    invoke-virtual {p0, v0, p1, p2, p3}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 816
    return-void
.end method

.method private static setItalicSpan(Lccsanandroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 806
    new-instance v0, Lccsanandroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lccsanandroid/text/style/StyleSpan;-><init>(I)V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 807
    return-void
.end method

.method private static setUnderlineSpan(Lccsanandroid/text/SpannableStringBuilder;II)V
    .locals 2

    .line 802
    new-instance v0, Lccsanandroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Lccsanandroid/text/style/UnderlineSpan;-><init>()V

    const/16 v1, 0x21

    invoke-virtual {p0, v0, p1, p2, v1}, Lccsanandroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 803
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 1

    .line 665
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    return-void
.end method

.method public backspace()V
    .locals 4

    .line 618
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 619
    if-lez v0, :cond_0

    .line 620
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 622
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 623
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    .line 624
    iget v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    if-ne v3, v0, :cond_0

    .line 625
    iget v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    .line 622
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 632
    :cond_0
    return-void
.end method

.method public build()Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;
    .locals 12

    .line 735
    new-instance v1, Lccsanandroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Lccsanandroid/text/SpannableStringBuilder;-><init>()V

    .line 737
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 738
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    .line 739
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lccsanandroid/text/SpannableStringBuilder;->append(C)Lccsanandroid/text/SpannableStringBuilder;

    .line 737
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->buildSpannableString()Lccsanandroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Lccsanandroid/text/SpannableStringBuilder;

    .line 744
    invoke-virtual {v1}, Lccsanandroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 746
    const/4 v0, 0x0

    return-object v0

    .line 752
    :cond_1
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->indent:I

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    add-int/2addr v2, v3

    .line 754
    rsub-int/lit8 v3, v2, 0x20

    invoke-virtual {v1}, Lccsanandroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v3, v4

    .line 755
    sub-int v4, v2, v3

    .line 756
    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v8, 0x3

    if-lt v5, v8, :cond_2

    if-gez v3, :cond_3

    .line 760
    :cond_2
    const/high16 v2, 0x3f000000    # 0.5f

    .line 761
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    goto :goto_1

    .line 762
    :cond_3
    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    const v8, 0x3dcccccd    # 0.1f

    const v9, 0x3f4ccccd    # 0.8f

    const/high16 v10, 0x42000000    # 32.0f

    if-ne v5, v7, :cond_4

    if-lez v4, :cond_4

    .line 764
    rsub-int/lit8 v2, v3, 0x20

    int-to-float v2, v2

    div-float/2addr v2, v10

    .line 766
    mul-float v2, v2, v9

    add-float/2addr v2, v8

    .line 767
    move v8, v2

    const/4 v9, 0x2

    goto :goto_1

    .line 770
    :cond_4
    int-to-float v2, v2

    div-float/2addr v2, v10

    .line 772
    mul-float v2, v2, v9

    add-float/2addr v2, v8

    .line 773
    move v8, v2

    const/4 v9, 0x0

    .line 779
    :goto_1
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    if-eq v2, v6, :cond_6

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_5

    goto :goto_2

    .line 786
    :cond_5
    nop

    .line 789
    const/4 v5, 0x0

    goto :goto_3

    .line 780
    :cond_6
    :goto_2
    nop

    .line 781
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    add-int/lit8 v0, v0, -0xf

    .line 784
    add-int/lit8 v2, v0, -0x2

    const/4 v5, 0x2

    .line 792
    :goto_3
    new-instance v10, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;

    sget-object v3, Lccsanandroid/text/Layout$Alignment;->ALIGN_NORMAL:Lccsanandroid/text/Layout$Alignment;

    int-to-float v4, v2

    const/4 v6, 0x1

    const/4 v11, 0x1

    move-object v0, v10

    move-object v2, v3

    move v3, v4

    move v4, v6

    move v6, v8

    move v7, v9

    move v8, v11

    invoke-direct/range {v0 .. v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Lccsanandroid/text/Layout$Alignment;FIIFIF)V

    return-object v10
.end method

.method public buildSpannableString()Lccsanandroid/text/SpannableString;
    .locals 15

    .line 669
    new-instance v0, Lccsanandroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Lccsanandroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 670
    invoke-virtual {v0}, Lccsanandroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 672
    nop

    .line 673
    nop

    .line 674
    nop

    .line 675
    nop

    .line 677
    nop

    .line 678
    nop

    .line 680
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    :goto_0
    iget-object v11, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_a

    .line 681
    iget-object v11, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    .line 682
    iget-boolean v12, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->underline:Z

    .line 683
    iget v13, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->style:I

    .line 684
    const/16 v14, 0x8

    if-eq v13, v14, :cond_2

    .line 686
    const/4 v10, 0x7

    if-ne v13, v10, :cond_0

    const/4 v14, 0x1

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    .line 688
    :goto_1
    if-ne v13, v10, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder;->access$000()[I

    move-result-object v9

    aget v9, v9, v13

    :goto_2
    move v10, v14

    .line 691
    :cond_2
    iget v11, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    .line 692
    add-int/lit8 v4, v4, 0x1

    iget-object v13, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_3

    iget-object v13, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget v13, v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;->start:I

    goto :goto_3

    :cond_3
    move v13, v1

    .line 693
    :goto_3
    if-ne v11, v13, :cond_4

    .line 695
    goto :goto_6

    .line 699
    :cond_4
    if-eq v5, v3, :cond_5

    if-nez v12, :cond_5

    .line 700
    invoke-static {v0, v5, v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setUnderlineSpan(Lccsanandroid/text/SpannableStringBuilder;II)V

    .line 701
    const/4 v5, -0x1

    goto :goto_4

    .line 702
    :cond_5
    if-ne v5, v3, :cond_6

    if-eqz v12, :cond_6

    .line 703
    move v5, v11

    .line 706
    :cond_6
    :goto_4
    if-eq v6, v3, :cond_7

    if-nez v10, :cond_7

    .line 707
    invoke-static {v0, v6, v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setItalicSpan(Lccsanandroid/text/SpannableStringBuilder;II)V

    .line 708
    const/4 v6, -0x1

    goto :goto_5

    .line 709
    :cond_7
    if-ne v6, v3, :cond_8

    if-eqz v10, :cond_8

    .line 710
    move v6, v11

    .line 713
    :cond_8
    :goto_5
    if-eq v9, v8, :cond_9

    .line 714
    invoke-static {v0, v7, v11, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setColorSpan(Lccsanandroid/text/SpannableStringBuilder;III)V

    .line 715
    nop

    .line 716
    move v8, v9

    move v7, v11

    .line 680
    :cond_9
    :goto_6
    goto :goto_0

    .line 721
    :cond_a
    if-eq v5, v3, :cond_b

    if-eq v5, v1, :cond_b

    .line 722
    invoke-static {v0, v5, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setUnderlineSpan(Lccsanandroid/text/SpannableStringBuilder;II)V

    .line 724
    :cond_b
    if-eq v6, v3, :cond_c

    if-eq v6, v1, :cond_c

    .line 725
    invoke-static {v0, v6, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setItalicSpan(Lccsanandroid/text/SpannableStringBuilder;II)V

    .line 727
    :cond_c
    if-eq v7, v1, :cond_d

    .line 728
    invoke-static {v0, v7, v1, v8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->setColorSpan(Lccsanandroid/text/SpannableStringBuilder;III)V

    .line 731
    :cond_d
    new-instance v1, Lccsanandroid/text/SpannableString;

    invoke-direct {v1, v0}, Lccsanandroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public getRow()I
    .locals 1

    .line 635
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 612
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    .line 613
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 612
    :goto_0
    return v0
.end method

.method public reset(I)V
    .locals 1

    .line 598
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionMode:I

    .line 599
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 600
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 601
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 602
    const/16 p1, 0xf

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    .line 603
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->indent:I

    .line 604
    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    .line 605
    return-void
.end method

.method public rollUp()V
    .locals 3

    .line 643
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->buildSpannableString()Lccsanandroid/text/SpannableString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 645
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 646
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 647
    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v0, :cond_0

    .line 648
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->rolledUpCaptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 650
    :cond_0
    return-void
.end method

.method public setCaptionRowCount(I)V
    .locals 0

    .line 608
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionRowCount:I

    .line 609
    return-void
.end method

.method public setIndent(I)V
    .locals 0

    .line 653
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->indent:I

    .line 654
    return-void
.end method

.method public setRow(I)V
    .locals 0

    .line 639
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->row:I

    .line 640
    return-void
.end method

.method public setStyle(IZ)V
    .locals 3

    .line 661
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->cueStyles:Ljava/util/List;

    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-direct {v1, p1, p2, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder$CueStyle;-><init>(IZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    return-void
.end method

.method public setTab(I)V
    .locals 0

    .line 657
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->tabOffset:I

    .line 658
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 798
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/text/cea/Cea608Decoder$CueBuilder;->captionStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

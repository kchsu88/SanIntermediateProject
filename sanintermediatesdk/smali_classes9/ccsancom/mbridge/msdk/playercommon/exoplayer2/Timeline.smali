.class public abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;
    }
.end annotation


# static fields
.field public static final EMPTY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 495
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->EMPTY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstWindowIndex(Z)I
    .locals 0

    .line 608
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract getIndexOfPeriod(Ljava/lang/Object;)I
.end method

.method public getLastWindowIndex(Z)I
    .locals 0

    .line 596
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindowCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method public final getNextPeriodIndex(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;IZ)I
    .locals 1

    .line 668
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->windowIndex:I

    .line 669
    invoke-virtual {p0, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object v0

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ne v0, p1, :cond_1

    .line 670
    invoke-virtual {p0, p2, p4, p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result p1

    .line 671
    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 672
    return p2

    .line 674
    :cond_0
    invoke-virtual {p0, p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object p1

    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    return p1

    .line 676
    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 0

    .line 548
    packed-switch p2, :pswitch_data_0

    .line 558
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 555
    :pswitch_0
    invoke-virtual {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 556
    invoke-virtual {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 555
    :goto_0
    return p1

    .line 553
    :pswitch_1
    return p1

    .line 550
    :pswitch_2
    invoke-virtual {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result p2

    if-ne p1, p2, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    .line 551
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 550
    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;
    .locals 1

    .line 749
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object p1

    return-object p1
.end method

.method public abstract getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;
.end method

.method public abstract getPeriodCount()I
.end method

.method public final getPeriodPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;IJ)Lccsanandroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;",
            "IJ)",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 702
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriodPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;IJJ)Lccsanandroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final getPeriodPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;IJJ)Lccsanandroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;",
            "IJJ)",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 721
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 722
    const/4 v5, 0x0

    move-object v2, p0

    move v3, p3

    move-object v4, p1

    move-wide v6, p6

    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;ZJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    .line 723
    const-wide p6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    .line 724
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide p4

    .line 725
    cmp-long p3, p4, p6

    if-nez p3, :cond_0

    .line 726
    const/4 p1, 0x0

    return-object p1

    .line 729
    :cond_0
    iget p3, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    .line 730
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v0

    add-long/2addr v0, p4

    .line 731
    invoke-virtual {p0, p3, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object p4

    invoke-virtual {p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide p4

    .line 732
    :goto_0
    cmp-long v2, p4, p6

    if-eqz v2, :cond_1

    cmp-long v2, v0, p4

    if-ltz v2, :cond_1

    iget v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    if-ge p3, v2, :cond_1

    .line 734
    sub-long/2addr v0, p4

    .line 735
    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0, p3, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object p4

    invoke-virtual {p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide p4

    goto :goto_0

    .line 737
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 0

    .line 573
    packed-switch p2, :pswitch_data_0

    .line 583
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 580
    :pswitch_0
    invoke-virtual {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 581
    invoke-virtual {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 580
    :goto_0
    return p1

    .line 578
    :pswitch_1
    return p1

    .line 575
    :pswitch_2
    invoke-virtual {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    if-ne p1, p2, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    .line 576
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 575
    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;
    .locals 1

    .line 620
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object p1

    return-object p1
.end method

.method public final getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;
    .locals 6

    .line 633
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;ZJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object p1

    return-object p1
.end method

.method public abstract getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;ZJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;
.end method

.method public abstract getWindowCount()I
.end method

.method public final isEmpty()Z
    .locals 1

    .line 529
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLastPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;IZ)Z
    .locals 0

    .line 692
    invoke-virtual/range {p0 .. p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getNextPeriodIndex(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;IZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

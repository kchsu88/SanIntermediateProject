.class public Lccsanandroidx/core/app/FrameMetricsAggregator;
.super Ljava/lang/Object;
.source "FrameMetricsAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;,
        Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;,
        Lccsanandroidx/core/app/FrameMetricsAggregator$MetricType;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0x100

.field public static final ANIMATION_INDEX:I = 0x8

.field public static final COMMAND_DURATION:I = 0x20

.field public static final COMMAND_INDEX:I = 0x5

.field public static final DELAY_DURATION:I = 0x80

.field public static final DELAY_INDEX:I = 0x7

.field public static final DRAW_DURATION:I = 0x8

.field public static final DRAW_INDEX:I = 0x3

.field public static final EVERY_DURATION:I = 0x1ff

.field public static final INPUT_DURATION:I = 0x2

.field public static final INPUT_INDEX:I = 0x1

.field private static final LAST_INDEX:I = 0x8

.field public static final LAYOUT_MEASURE_DURATION:I = 0x4

.field public static final LAYOUT_MEASURE_INDEX:I = 0x2

.field public static final SWAP_DURATION:I = 0x40

.field public static final SWAP_INDEX:I = 0x6

.field public static final SYNC_DURATION:I = 0x10

.field public static final SYNC_INDEX:I = 0x4

.field public static final TOTAL_DURATION:I = 0x1

.field public static final TOTAL_INDEX:I


# instance fields
.field private mInstance:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsanandroidx/core/app/FrameMetricsAggregator;-><init>(I)V

    .line 200
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "metricTypeFlags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metricTypeFlags"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 214
    new-instance v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;

    invoke-direct {v0, p1}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl;-><init>(I)V

    iput-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator;->mInstance:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-direct {v0}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;-><init>()V

    iput-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator;->mInstance:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    .line 218
    :goto_0
    return-void
.end method


# virtual methods
.method public add(Lccsanandroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator;->mInstance:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->add(Lccsanandroid/app/Activity;)V

    .line 227
    return-void
.end method

.method public getMetrics()[Lccsanandroid/util/SparseIntArray;
    .locals 1

    .line 301
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator;->mInstance:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->getMetrics()[Lccsanandroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lccsanandroid/app/Activity;)[Lccsanandroid/util/SparseIntArray;
    .locals 1
    .param p1, "activity"    # Lccsanandroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator;->mInstance:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->remove(Lccsanandroid/app/Activity;)[Lccsanandroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public reset()[Lccsanandroid/util/SparseIntArray;
    .locals 1

    .line 273
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator;->mInstance:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->reset()[Lccsanandroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public stop()[Lccsanandroid/util/SparseIntArray;
    .locals 1

    .line 260
    iget-object v0, p0, Lccsanandroidx/core/app/FrameMetricsAggregator;->mInstance:Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;

    invoke-virtual {v0}, Lccsanandroidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl;->stop()[Lccsanandroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

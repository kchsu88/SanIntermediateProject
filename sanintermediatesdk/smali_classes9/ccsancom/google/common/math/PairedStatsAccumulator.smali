.class public final Lccsancom/google/common/math/PairedStatsAccumulator;
.super Ljava/lang/Object;
.source "PairedStatsAccumulator.java"


# instance fields
.field private sumOfProductsOfDeltas:D

.field private final xStats:Lccsancom/google/common/math/StatsAccumulator;

.field private final yStats:Lccsancom/google/common/math/StatsAccumulator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lccsancom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lccsancom/google/common/math/StatsAccumulator;-><init>()V

    iput-object v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->xStats:Lccsancom/google/common/math/StatsAccumulator;

    .line 39
    new-instance v0, Lccsancom/google/common/math/StatsAccumulator;

    invoke-direct {v0}, Lccsancom/google/common/math/StatsAccumulator;-><init>()V

    iput-object v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->yStats:Lccsancom/google/common/math/StatsAccumulator;

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    return-void
.end method

.method private static ensureInUnitRange(D)D
    .locals 3
    .param p0, "value"    # D

    .line 239
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_0

    .line 240
    return-wide v0

    .line 242
    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_1

    .line 243
    return-wide v0

    .line 245
    :cond_1
    return-wide p0
.end method

.method private ensurePositive(D)D
    .locals 3
    .param p1, "value"    # D

    .line 231
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 232
    return-wide p1

    .line 234
    :cond_0
    const-wide/16 v0, 0x1

    return-wide v0
.end method


# virtual methods
.method public add(DD)V
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 55
    iget-object v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->xStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/math/StatsAccumulator;->add(D)V

    .line 56
    invoke-static {p1, p2}, Lccsancom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, Lccsancom/google/common/primitives/Doubles;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->xStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lccsancom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 58
    iget-wide v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    iget-object v2, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->xStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lccsancom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v2

    sub-double v2, p1, v2

    iget-object v4, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->yStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v4}, Lccsancom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v4

    sub-double v4, p3, v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    goto :goto_0

    .line 61
    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 63
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->yStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v0, p3, p4}, Lccsancom/google/common/math/StatsAccumulator;->add(D)V

    .line 64
    return-void
.end method

.method public addAll(Lccsancom/google/common/math/PairedStats;)V
    .locals 10
    .param p1, "values"    # Lccsancom/google/common/math/PairedStats;

    .line 71
    invoke-virtual {p1}, Lccsancom/google/common/math/PairedStats;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 72
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->xStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {p1}, Lccsancom/google/common/math/PairedStats;->xStats()Lccsancom/google/common/math/Stats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/math/StatsAccumulator;->addAll(Lccsancom/google/common/math/Stats;)V

    .line 76
    iget-object v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->yStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lccsancom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 77
    invoke-virtual {p1}, Lccsancom/google/common/math/PairedStats;->sumOfProductsOfDeltas()D

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    goto :goto_0

    .line 82
    :cond_1
    iget-wide v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 83
    invoke-virtual {p1}, Lccsancom/google/common/math/PairedStats;->sumOfProductsOfDeltas()D

    move-result-wide v2

    .line 84
    invoke-virtual {p1}, Lccsancom/google/common/math/PairedStats;->xStats()Lccsancom/google/common/math/Stats;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/google/common/math/Stats;->mean()D

    move-result-wide v4

    iget-object v6, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->xStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v6}, Lccsancom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v6

    sub-double/2addr v4, v6

    .line 85
    invoke-virtual {p1}, Lccsancom/google/common/math/PairedStats;->yStats()Lccsancom/google/common/math/Stats;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/google/common/math/Stats;->mean()D

    move-result-wide v6

    iget-object v8, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->yStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v8}, Lccsancom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double v4, v4, v6

    .line 86
    invoke-virtual {p1}, Lccsancom/google/common/math/PairedStats;->count()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v6

    add-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    .line 88
    :goto_0
    iget-object v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->yStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {p1}, Lccsancom/google/common/math/PairedStats;->yStats()Lccsancom/google/common/math/Stats;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/math/StatsAccumulator;->addAll(Lccsancom/google/common/math/Stats;)V

    .line 89
    return-void
.end method

.method public count()J
    .locals 2

    .line 98
    iget-object v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->xStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lccsancom/google/common/math/StatsAccumulator;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public final leastSquaresFit()Lccsancom/google/common/math/LinearTransformation;
    .locals 9

    .line 212
    invoke-virtual {p0}, Lccsancom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkState(Z)V

    .line 213
    iget-wide v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-static {}, Lccsancom/google/common/math/LinearTransformation;->forNaN()Lccsancom/google/common/math/LinearTransformation;

    move-result-object v0

    return-object v0

    .line 216
    :cond_1
    iget-object v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->xStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lccsancom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v0

    .line 217
    .local v0, "xSumOfSquaresOfDeltas":D
    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-lez v6, :cond_3

    .line 218
    iget-object v2, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->yStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lccsancom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-lez v6, :cond_2

    .line 219
    iget-object v2, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->xStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lccsancom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v2

    iget-object v4, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->yStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v4}, Lccsancom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lccsancom/google/common/math/LinearTransformation;->mapping(DD)Lccsancom/google/common/math/LinearTransformation$LinearTransformationBuilder;

    move-result-object v2

    iget-wide v3, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    div-double/2addr v3, v0

    .line 220
    invoke-virtual {v2, v3, v4}, Lccsancom/google/common/math/LinearTransformation$LinearTransformationBuilder;->withSlope(D)Lccsancom/google/common/math/LinearTransformation;

    move-result-object v2

    .line 219
    return-object v2

    .line 222
    :cond_2
    iget-object v2, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->yStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lccsancom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v2

    invoke-static {v2, v3}, Lccsancom/google/common/math/LinearTransformation;->horizontal(D)Lccsancom/google/common/math/LinearTransformation;

    move-result-object v2

    return-object v2

    .line 225
    :cond_3
    iget-object v6, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->yStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v6}, Lccsancom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v6

    cmpl-double v8, v6, v4

    if-lez v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lccsancom/google/common/base/Preconditions;->checkState(Z)V

    .line 226
    iget-object v2, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->xStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lccsancom/google/common/math/StatsAccumulator;->mean()D

    move-result-wide v2

    invoke-static {v2, v3}, Lccsancom/google/common/math/LinearTransformation;->vertical(D)Lccsancom/google/common/math/LinearTransformation;

    move-result-object v2

    return-object v2
.end method

.method public final pearsonsCorrelationCoefficient()D
    .locals 10

    .line 165
    invoke-virtual {p0}, Lccsancom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkState(Z)V

    .line 166
    iget-wide v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 169
    :cond_1
    iget-object v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->xStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lccsancom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v0

    .line 170
    .local v0, "xSumOfSquaresOfDeltas":D
    iget-object v4, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->yStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v4}, Lccsancom/google/common/math/StatsAccumulator;->sumOfSquaresOfDeltas()D

    move-result-wide v4

    .line 171
    .local v4, "ySumOfSquaresOfDeltas":D
    const-wide/16 v6, 0x0

    cmpl-double v8, v0, v6

    if-lez v8, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Lccsancom/google/common/base/Preconditions;->checkState(Z)V

    .line 172
    cmpl-double v8, v4, v6

    if-lez v8, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lccsancom/google/common/base/Preconditions;->checkState(Z)V

    .line 175
    mul-double v2, v0, v4

    .line 176
    invoke-direct {p0, v2, v3}, Lccsancom/google/common/math/PairedStatsAccumulator;->ensurePositive(D)D

    move-result-wide v2

    .line 177
    .local v2, "productOfSumsOfSquaresOfDeltas":D
    iget-wide v6, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lccsancom/google/common/math/PairedStatsAccumulator;->ensureInUnitRange(D)D

    move-result-wide v6

    return-wide v6
.end method

.method public populationCovariance()D
    .locals 5

    .line 126
    invoke-virtual {p0}, Lccsancom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkState(Z)V

    .line 127
    iget-wide v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-virtual {p0}, Lccsancom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final sampleCovariance()D
    .locals 6

    .line 144
    invoke-virtual {p0}, Lccsancom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkState(Z)V

    .line 145
    iget-wide v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-virtual {p0}, Lccsancom/google/common/math/PairedStatsAccumulator;->count()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public snapshot()Lccsancom/google/common/math/PairedStats;
    .locals 5

    .line 93
    new-instance v0, Lccsancom/google/common/math/PairedStats;

    iget-object v1, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->xStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v1}, Lccsancom/google/common/math/StatsAccumulator;->snapshot()Lccsancom/google/common/math/Stats;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->yStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v2}, Lccsancom/google/common/math/StatsAccumulator;->snapshot()Lccsancom/google/common/math/Stats;

    move-result-object v2

    iget-wide v3, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->sumOfProductsOfDeltas:D

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/google/common/math/PairedStats;-><init>(Lccsancom/google/common/math/Stats;Lccsancom/google/common/math/Stats;D)V

    return-object v0
.end method

.method public xStats()Lccsancom/google/common/math/Stats;
    .locals 1

    .line 103
    iget-object v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->xStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lccsancom/google/common/math/StatsAccumulator;->snapshot()Lccsancom/google/common/math/Stats;

    move-result-object v0

    return-object v0
.end method

.method public yStats()Lccsancom/google/common/math/Stats;
    .locals 1

    .line 108
    iget-object v0, p0, Lccsancom/google/common/math/PairedStatsAccumulator;->yStats:Lccsancom/google/common/math/StatsAccumulator;

    invoke-virtual {v0}, Lccsancom/google/common/math/StatsAccumulator;->snapshot()Lccsancom/google/common/math/Stats;

    move-result-object v0

    return-object v0
.end method

.class public final Lccsancom/google/common/base/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# instance fields
.field private elapsedNanos:J

.field private isRunning:Z

.field private startTick:J

.field private final ticker:Lccsancom/google/common/base/Ticker;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {}, Lccsancom/google/common/base/Ticker;->systemTicker()Lccsancom/google/common/base/Ticker;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/base/Stopwatch;->ticker:Lccsancom/google/common/base/Ticker;

    .line 125
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/base/Ticker;)V
    .locals 1
    .param p1, "ticker"    # Lccsancom/google/common/base/Ticker;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    const-string/jumbo v0, "ticker"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Ticker;

    iput-object v0, p0, Lccsancom/google/common/base/Stopwatch;->ticker:Lccsancom/google/common/base/Ticker;

    .line 129
    return-void
.end method

.method private static abbreviate(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 2
    .param p0, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 233
    sget-object v0, Lccsancom/google/common/base/Stopwatch$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-virtual {p0}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 249
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 247
    :pswitch_0
    const-string v0, "d"

    return-object v0

    .line 245
    :pswitch_1
    const-string v0, "h"

    return-object v0

    .line 243
    :pswitch_2
    const-string v0, "min"

    return-object v0

    .line 241
    :pswitch_3
    const-string/jumbo v0, "s"

    return-object v0

    .line 239
    :pswitch_4
    const-string v0, "ms"

    return-object v0

    .line 237
    :pswitch_5
    const-string/jumbo v0, "\u03bcs"

    return-object v0

    .line 235
    :pswitch_6
    const-string v0, "ns"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static chooseUnit(J)Ljava/util/concurrent/TimeUnit;
    .locals 5
    .param p0, "nanos"    # J

    .line 211
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 212
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 214
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 215
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 217
    :cond_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 218
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 220
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 221
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 223
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    .line 224
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 226
    :cond_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    .line 227
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0

    .line 229
    :cond_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public static createStarted()Lccsancom/google/common/base/Stopwatch;
    .locals 1

    .line 111
    new-instance v0, Lccsancom/google/common/base/Stopwatch;

    invoke-direct {v0}, Lccsancom/google/common/base/Stopwatch;-><init>()V

    invoke-virtual {v0}, Lccsancom/google/common/base/Stopwatch;->start()Lccsancom/google/common/base/Stopwatch;

    move-result-object v0

    return-object v0
.end method

.method public static createStarted(Lccsancom/google/common/base/Ticker;)Lccsancom/google/common/base/Stopwatch;
    .locals 1
    .param p0, "ticker"    # Lccsancom/google/common/base/Ticker;

    .line 120
    new-instance v0, Lccsancom/google/common/base/Stopwatch;

    invoke-direct {v0, p0}, Lccsancom/google/common/base/Stopwatch;-><init>(Lccsancom/google/common/base/Ticker;)V

    invoke-virtual {v0}, Lccsancom/google/common/base/Stopwatch;->start()Lccsancom/google/common/base/Stopwatch;

    move-result-object v0

    return-object v0
.end method

.method public static createUnstarted()Lccsancom/google/common/base/Stopwatch;
    .locals 1

    .line 93
    new-instance v0, Lccsancom/google/common/base/Stopwatch;

    invoke-direct {v0}, Lccsancom/google/common/base/Stopwatch;-><init>()V

    return-object v0
.end method

.method public static createUnstarted(Lccsancom/google/common/base/Ticker;)Lccsancom/google/common/base/Stopwatch;
    .locals 1
    .param p0, "ticker"    # Lccsancom/google/common/base/Ticker;

    .line 102
    new-instance v0, Lccsancom/google/common/base/Stopwatch;

    invoke-direct {v0, p0}, Lccsancom/google/common/base/Stopwatch;-><init>(Lccsancom/google/common/base/Ticker;)V

    return-object v0
.end method

.method private elapsedNanos()J
    .locals 4

    .line 182
    iget-boolean v0, p0, Lccsancom/google/common/base/Stopwatch;->isRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/common/base/Stopwatch;->ticker:Lccsancom/google/common/base/Ticker;

    invoke-virtual {v0}, Lccsancom/google/common/base/Ticker;->read()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/google/common/base/Stopwatch;->startTick:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lccsancom/google/common/base/Stopwatch;->elapsedNanos:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lccsancom/google/common/base/Stopwatch;->elapsedNanos:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public elapsed(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "desiredUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 195
    invoke-direct {p0}, Lccsancom/google/common/base/Stopwatch;->elapsedNanos()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lccsancom/google/common/base/Stopwatch;->isRunning:Z

    return v0
.end method

.method public reset()Lccsancom/google/common/base/Stopwatch;
    .locals 2

    .line 176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/google/common/base/Stopwatch;->elapsedNanos:J

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/common/base/Stopwatch;->isRunning:Z

    .line 178
    return-object p0
.end method

.method public start()Lccsancom/google/common/base/Stopwatch;
    .locals 3

    .line 147
    iget-boolean v0, p0, Lccsancom/google/common/base/Stopwatch;->isRunning:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "This stopwatch is already running."

    invoke-static {v0, v2}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 148
    iput-boolean v1, p0, Lccsancom/google/common/base/Stopwatch;->isRunning:Z

    .line 149
    iget-object v0, p0, Lccsancom/google/common/base/Stopwatch;->ticker:Lccsancom/google/common/base/Ticker;

    invoke-virtual {v0}, Lccsancom/google/common/base/Ticker;->read()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/common/base/Stopwatch;->startTick:J

    .line 150
    return-object p0
.end method

.method public stop()Lccsancom/google/common/base/Stopwatch;
    .locals 6

    .line 162
    iget-object v0, p0, Lccsancom/google/common/base/Stopwatch;->ticker:Lccsancom/google/common/base/Ticker;

    invoke-virtual {v0}, Lccsancom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 163
    .local v0, "tick":J
    iget-boolean v2, p0, Lccsancom/google/common/base/Stopwatch;->isRunning:Z

    const-string v3, "This stopwatch is already stopped."

    invoke-static {v2, v3}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 164
    const/4 v2, 0x0

    iput-boolean v2, p0, Lccsancom/google/common/base/Stopwatch;->isRunning:Z

    .line 165
    iget-wide v2, p0, Lccsancom/google/common/base/Stopwatch;->elapsedNanos:J

    iget-wide v4, p0, Lccsancom/google/common/base/Stopwatch;->startTick:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lccsancom/google/common/base/Stopwatch;->elapsedNanos:J

    .line 166
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 201
    invoke-direct {p0}, Lccsancom/google/common/base/Stopwatch;->elapsedNanos()J

    move-result-wide v0

    .line 203
    .local v0, "nanos":J
    invoke-static {v0, v1}, Lccsancom/google/common/base/Stopwatch;->chooseUnit(J)Ljava/util/concurrent/TimeUnit;

    move-result-object v2

    .line 204
    .local v2, "unit":Ljava/util/concurrent/TimeUnit;
    long-to-double v3, v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    .line 207
    .local v3, "value":D
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Lccsancom/google/common/base/Platform;->formatCompact4Digits(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lccsancom/google/common/base/Stopwatch;->abbreviate(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

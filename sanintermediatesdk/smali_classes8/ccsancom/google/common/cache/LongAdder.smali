.class final Lccsancom/google/common/cache/LongAdder;
.super Lccsancom/google/common/cache/Striped64;
.source "LongAdder.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lccsancom/google/common/cache/LongAddable;


# static fields
.field private static final serialVersionUID:J = 0x6499de12a37d0a3dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lccsancom/google/common/cache/Striped64;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 188
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/common/cache/LongAdder;->busy:I

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/cache/LongAdder;->cells:[Lccsancom/google/common/cache/Striped64$Cell;

    .line 191
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/common/cache/LongAdder;->base:J

    .line 192
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 184
    invoke-virtual {p0}, Lccsancom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 185
    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 12
    .param p1, "x"    # J

    .line 67
    iget-object v0, p0, Lccsancom/google/common/cache/LongAdder;->cells:[Lccsancom/google/common/cache/Striped64$Cell;

    move-object v1, v0

    .local v1, "as":[Lccsancom/google/common/cache/Striped64$Cell;
    if-nez v0, :cond_0

    iget-wide v2, p0, Lccsancom/google/common/cache/LongAdder;->base:J

    move-wide v4, v2

    .local v4, "b":J
    add-long v6, v4, p1

    invoke-virtual {p0, v2, v3, v6, v7}, Lccsancom/google/common/cache/LongAdder;->casBase(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    .end local v4    # "b":J
    :cond_0
    const/4 v0, 0x1

    .line 69
    .local v0, "uncontended":Z
    sget-object v2, Lccsancom/google/common/cache/LongAdder;->threadHashCode:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v3, v2

    .local v3, "hc":[I
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    array-length v2, v1

    move v4, v2

    .local v4, "n":I
    const/4 v5, 0x1

    if-lt v2, v5, :cond_1

    add-int/lit8 v2, v4, -0x1

    const/4 v5, 0x0

    aget v5, v3, v5

    and-int/2addr v2, v5

    aget-object v2, v1, v2

    move-object v5, v2

    .local v5, "a":Lccsancom/google/common/cache/Striped64$Cell;
    if-eqz v2, :cond_1

    iget-wide v6, v5, Lccsancom/google/common/cache/Striped64$Cell;->value:J

    move-wide v8, v6

    .local v8, "v":J
    add-long v10, v8, p1

    .line 73
    invoke-virtual {v5, v6, v7, v10, v11}, Lccsancom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v2

    move v0, v2

    if-nez v2, :cond_2

    .end local v4    # "n":I
    .end local v5    # "a":Lccsancom/google/common/cache/Striped64$Cell;
    .end local v8    # "v":J
    :cond_1
    invoke-virtual {p0, p1, p2, v3, v0}, Lccsancom/google/common/cache/LongAdder;->retryUpdate(J[IZ)V

    .line 75
    .end local v0    # "uncontended":Z
    .end local v3    # "hc":[I
    :cond_2
    return-void
.end method

.method public decrement()V
    .locals 2

    .line 85
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lccsancom/google/common/cache/LongAdder;->add(J)V

    .line 86
    return-void
.end method

.method public doubleValue()D
    .locals 2

    .line 179
    invoke-virtual {p0}, Lccsancom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .line 173
    invoke-virtual {p0}, Lccsancom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-float v0, v0

    return v0
.end method

.method final fn(JJ)J
    .locals 2
    .param p1, "v"    # J
    .param p3, "x"    # J

    .line 49
    add-long v0, p1, p3

    return-wide v0
.end method

.method public increment()V
    .locals 2

    .line 80
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lccsancom/google/common/cache/LongAdder;->add(J)V

    .line 81
    return-void
.end method

.method public intValue()I
    .locals 2

    .line 167
    invoke-virtual {p0}, Lccsancom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public longValue()J
    .locals 2

    .line 161
    invoke-virtual {p0}, Lccsancom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 116
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/google/common/cache/LongAdder;->internalReset(J)V

    .line 117
    return-void
.end method

.method public sum()J
    .locals 8

    .line 97
    iget-wide v0, p0, Lccsancom/google/common/cache/LongAdder;->base:J

    .line 98
    .local v0, "sum":J
    iget-object v2, p0, Lccsancom/google/common/cache/LongAdder;->cells:[Lccsancom/google/common/cache/Striped64$Cell;

    .line 99
    .local v2, "as":[Lccsancom/google/common/cache/Striped64$Cell;
    if-eqz v2, :cond_1

    .line 100
    array-length v3, v2

    .line 101
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 102
    aget-object v5, v2, v4

    .line 103
    .local v5, "a":Lccsancom/google/common/cache/Striped64$Cell;
    if-eqz v5, :cond_0

    iget-wide v6, v5, Lccsancom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v0, v6

    .line 101
    .end local v5    # "a":Lccsancom/google/common/cache/Striped64$Cell;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    .end local v3    # "n":I
    .end local v4    # "i":I
    :cond_1
    return-wide v0
.end method

.method public sumThenReset()J
    .locals 10

    .line 128
    iget-wide v0, p0, Lccsancom/google/common/cache/LongAdder;->base:J

    .line 129
    .local v0, "sum":J
    iget-object v2, p0, Lccsancom/google/common/cache/LongAdder;->cells:[Lccsancom/google/common/cache/Striped64$Cell;

    .line 130
    .local v2, "as":[Lccsancom/google/common/cache/Striped64$Cell;
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lccsancom/google/common/cache/LongAdder;->base:J

    .line 131
    if-eqz v2, :cond_1

    .line 132
    array-length v5, v2

    .line 133
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 134
    aget-object v7, v2, v6

    .line 135
    .local v7, "a":Lccsancom/google/common/cache/Striped64$Cell;
    if-eqz v7, :cond_0

    .line 136
    iget-wide v8, v7, Lccsancom/google/common/cache/Striped64$Cell;->value:J

    add-long/2addr v0, v8

    .line 137
    iput-wide v3, v7, Lccsancom/google/common/cache/Striped64$Cell;->value:J

    .line 133
    .end local v7    # "a":Lccsancom/google/common/cache/Striped64$Cell;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 141
    .end local v5    # "n":I
    .end local v6    # "i":I
    :cond_1
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 151
    invoke-virtual {p0}, Lccsancom/google/common/cache/LongAdder;->sum()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;
.super Lccsancom/google/common/math/LinearTransformation;
.source "LinearTransformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/math/LinearTransformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegularLinearTransformation"
.end annotation


# instance fields
.field inverse:Lccsancom/google/common/math/LinearTransformation;
    .annotation runtime Lccsancom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field final slope:D

.field final yIntercept:D


# direct methods
.method constructor <init>(DD)V
    .locals 1
    .param p1, "slope"    # D
    .param p3, "yIntercept"    # D

    .line 166
    invoke-direct {p0}, Lccsancom/google/common/math/LinearTransformation;-><init>()V

    .line 167
    iput-wide p1, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    .line 168
    iput-wide p3, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lccsancom/google/common/math/LinearTransformation;

    .line 170
    return-void
.end method

.method constructor <init>(DDLccsancom/google/common/math/LinearTransformation;)V
    .locals 0
    .param p1, "slope"    # D
    .param p3, "yIntercept"    # D
    .param p5, "inverse"    # Lccsancom/google/common/math/LinearTransformation;

    .line 172
    invoke-direct {p0}, Lccsancom/google/common/math/LinearTransformation;-><init>()V

    .line 173
    iput-wide p1, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    .line 174
    iput-wide p3, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    .line 175
    iput-object p5, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lccsancom/google/common/math/LinearTransformation;

    .line 176
    return-void
.end method

.method private createInverse()Lccsancom/google/common/math/LinearTransformation;
    .locals 11

    .line 210
    iget-wide v0, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    .line 211
    new-instance v2, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v6, v3, v0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    iget-wide v8, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    mul-double v8, v8, v3

    div-double/2addr v8, v0

    move-object v5, v2

    move-object v10, p0

    invoke-direct/range {v5 .. v10}, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;-><init>(DDLccsancom/google/common/math/LinearTransformation;)V

    return-object v2

    .line 213
    :cond_0
    new-instance v0, Lccsancom/google/common/math/LinearTransformation$VerticalLinearTransformation;

    iget-wide v1, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    invoke-direct {v0, v1, v2, p0}, Lccsancom/google/common/math/LinearTransformation$VerticalLinearTransformation;-><init>(DLccsancom/google/common/math/LinearTransformation;)V

    return-object v0
.end method


# virtual methods
.method public inverse()Lccsancom/google/common/math/LinearTransformation;
    .locals 2

    .line 200
    iget-object v0, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lccsancom/google/common/math/LinearTransformation;

    .line 201
    .local v0, "result":Lccsancom/google/common/math/LinearTransformation;
    if-nez v0, :cond_0

    invoke-direct {p0}, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->createInverse()Lccsancom/google/common/math/LinearTransformation;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->inverse:Lccsancom/google/common/math/LinearTransformation;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public isHorizontal()Z
    .locals 5

    .line 185
    iget-wide v0, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVertical()Z
    .locals 1

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public slope()D
    .locals 2

    .line 190
    iget-wide v0, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 206
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "y = %g * x + %g"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(D)D
    .locals 4
    .param p1, "x"    # D

    .line 195
    iget-wide v0, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->slope:D

    mul-double v0, v0, p1

    iget-wide v2, p0, Lccsancom/google/common/math/LinearTransformation$RegularLinearTransformation;->yIntercept:D

    add-double/2addr v0, v2

    return-wide v0
.end method

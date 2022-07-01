.class public final Lccsancom/mbridge/msdk/foundation/entity/l;
.super Ljava/lang/Object;
.source "VideoBean.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:I

.field private d:I

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/entity/l;->e:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 0

    .line 41
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/l;->c:I

    .line 42
    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/entity/l;->e:J

    .line 18
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/l;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public final b()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/entity/l;->b:J

    return-wide v0
.end method

.method public final b(I)V
    .locals 0

    .line 49
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/l;->d:I

    .line 50
    return-void
.end method

.method public final b(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/entity/l;->b:J

    .line 34
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/l;->f:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public final c()I
    .locals 1

    .line 37
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/l;->c:I

    return v0
.end method

.method public final d()I
    .locals 1

    .line 45
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/l;->d:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/l;->f:Ljava/lang/String;

    return-object v0
.end method

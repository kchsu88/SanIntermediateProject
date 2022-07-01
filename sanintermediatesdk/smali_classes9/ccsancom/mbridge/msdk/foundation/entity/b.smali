.class public final Lccsancom/mbridge/msdk/foundation/entity/b;
.super Ljava/lang/Object;
.source "BidCacheBean.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/entity/b;->d:J

    .line 11
    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/entity/b;->e:J

    .line 12
    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/entity/b;->f:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 27
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/b;->b:I

    .line 28
    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/entity/b;->d:J

    .line 44
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/b;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/b;->c:Ljava/util/List;

    .line 36
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/b;->c:Ljava/util/List;

    return-object v0
.end method

.method public final b(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/entity/b;->e:J

    .line 52
    return-void
.end method

.method public final c()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/entity/b;->e:J

    return-wide v0
.end method

.method public final c(J)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/entity/b;->f:J

    .line 60
    return-void
.end method

.method public final d()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/entity/b;->f:J

    return-wide v0
.end method

.class public Lccsancom/mbridge/msdk/mbbanner/common/b/g;
.super Ljava/lang/Object;
.source "ProxyBannerShowListener.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbbanner/common/b/c;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

.field private c:Lccsancom/mbridge/msdk/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lccsancom/mbridge/msdk/mbbanner/common/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbbanner/common/b/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/b/c;Lccsancom/mbridge/msdk/b/d;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/g;->c:Lccsancom/mbridge/msdk/b/d;

    .line 17
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/g;->b:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 36
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/g;->b:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->a()V

    .line 39
    :cond_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/g;->b:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 67
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/g;->b:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->a(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/g;->b:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->a(Ljava/util/List;)V

    .line 25
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 43
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/g;->b:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->b()V

    .line 46
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 50
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/g;->b:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->c()V

    .line 53
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 57
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/g;->b:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->d()V

    .line 60
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .line 71
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/b/g;->b:Lccsancom/mbridge/msdk/mbbanner/common/b/c;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0}, Lccsancom/mbridge/msdk/mbbanner/common/b/c;->e()V

    .line 74
    :cond_0
    return-void
.end method

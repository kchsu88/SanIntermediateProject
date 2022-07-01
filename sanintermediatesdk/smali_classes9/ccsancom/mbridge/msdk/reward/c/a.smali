.class public abstract Lccsancom/mbridge/msdk/reward/c/a;
.super Lccsancom/mbridge/msdk/reward/c/c;
.source "RewarLoadVideoResponseHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/lang/String;)V
.end method

.method public abstract a(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .line 24
    return-void
.end method

.method public final a(Ljava/util/List;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/net/c/b;",
            ">;",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/reward/c/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    .line 14
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/reward/c/a;->a(ILjava/lang/String;)V

    .line 19
    return-void
.end method

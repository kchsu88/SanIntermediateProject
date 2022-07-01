.class final Lccsancom/mbridge/msdk/reward/adapter/c$a;
.super Ljava/lang/Object;
.source "RewardCampaignsResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZIILjava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 1949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1950
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$a;->a:Z

    .line 1951
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$a;->b:Z

    .line 1952
    iput p3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$a;->c:I

    .line 1953
    iput p4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$a;->d:I

    .line 1954
    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$a;->e:Ljava/lang/String;

    .line 1955
    iput-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$a;->f:Ljava/lang/String;

    .line 1956
    iput p7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$a;->g:I

    .line 1957
    iput-object p8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$a;->h:Ljava/util/List;

    .line 1958
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1, p8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$a;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1959
    return-void
.end method

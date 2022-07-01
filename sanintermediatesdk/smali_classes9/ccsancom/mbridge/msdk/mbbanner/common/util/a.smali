.class public Lccsancom/mbridge/msdk/mbbanner/common/util/a;
.super Ljava/lang/Object;
.source "BannerDelivery.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lccsanandroid/os/Handler;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->b:Lccsanandroid/os/Handler;

    .line 22
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbbanner/common/util/a;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->c:Z

    return p0
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Ljava/lang/String;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->b:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/mbbanner/common/util/a$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lccsancom/mbridge/msdk/mbbanner/common/util/a$1;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/util/a;Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->b:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/mbbanner/common/util/a$3;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/util/a$3;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/util/a;Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->b:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/mbbanner/common/util/a$2;

    invoke-direct {v1, p0, p1, p3, p2}, Lccsancom/mbridge/msdk/mbbanner/common/util/a$2;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/util/a;Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->c:Z

    .line 19
    return-void
.end method

.method public final b(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->b:Lccsanandroid/os/Handler;

    new-instance v1, Lccsancom/mbridge/msdk/mbbanner/common/util/a$4;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/util/a$4;-><init>(Lccsancom/mbridge/msdk/mbbanner/common/util/a;Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

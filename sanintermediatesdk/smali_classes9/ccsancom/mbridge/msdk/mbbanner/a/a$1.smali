.class final Lccsancom/mbridge/msdk/mbbanner/a/a$1;
.super Ljava/lang/Object;
.source "BannerController.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbbanner/common/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbbanner/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbbanner/a/a;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/a/a;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 74
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/out/BannerAdListener;->onClick(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 77
    :cond_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->c()V

    .line 62
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object v0

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/out/BannerAdListener;->onLogImpression(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 65
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;Ljava/lang/String;)V

    .line 70
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

    .line 54
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object v0

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/out/BannerAdListener;->onLoadSuccessed(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 57
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 81
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/out/BannerAdListener;->onLeaveApp(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 84
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 8

    .line 88
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/out/BannerAdListener;->showFullScreen(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 90
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;Z)Z

    .line 91
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    .line 93
    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->c(Lccsancom/mbridge/msdk/mbbanner/a/a;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    .line 94
    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->d(Lccsancom/mbridge/msdk/mbbanner/a/a;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 91
    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V

    .line 98
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 8

    .line 102
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/out/BannerAdListener;->closeFullScreen(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 104
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;Z)Z

    .line 105
    invoke-static {}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a()Lccsancom/mbridge/msdk/mbbanner/common/c/a;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    .line 107
    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->c(Lccsancom/mbridge/msdk/mbbanner/a/a;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    .line 108
    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->d(Lccsancom/mbridge/msdk/mbbanner/a/a;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lccsancom/mbridge/msdk/mbbanner/common/a/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    .line 109
    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->e(Lccsancom/mbridge/msdk/mbbanner/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->f(Lccsancom/mbridge/msdk/mbbanner/a/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->g(Lccsancom/mbridge/msdk/mbbanner/a/a;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-direct {v6, v0, v1}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    .line 110
    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->h(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    move-result-object v7

    .line 105
    invoke-virtual/range {v2 .. v7}, Lccsancom/mbridge/msdk/mbbanner/common/c/a;->a(ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/b;)V

    .line 112
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 116
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$1;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/out/BannerAdListener;->onCloseBanner(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 119
    :cond_0
    return-void
.end method

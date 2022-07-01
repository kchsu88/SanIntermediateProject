.class final Lccsancom/mbridge/msdk/mbbanner/a/a$2;
.super Ljava/lang/Object;
.source "BannerController.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbbanner/common/b/b;


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

    .line 122
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Z)V
    .locals 0

    .line 126
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    .line 127
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 131
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lccsancom/mbridge/msdk/out/BannerAdListener;->onLoadFailed(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->c()V

    .line 135
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->d(Lccsancom/mbridge/msdk/mbbanner/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .line 140
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->i(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 141
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/a/a;->i(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAds()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->d(Lccsancom/mbridge/msdk/mbbanner/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/String;Z)V

    .line 143
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->j(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/MBBannerView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 144
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Lccsancom/mbridge/msdk/mbbanner/a/a;Z)Z

    .line 145
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->k(Lccsancom/mbridge/msdk/mbbanner/a/a;)V

    .line 148
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 2

    .line 152
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object p1

    const-string v0, "banner res load failed"

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->a(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/BannerAdListener;

    move-result-object p1

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->b(Lccsancom/mbridge/msdk/mbbanner/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lccsancom/mbridge/msdk/out/BannerAdListener;->onLoadFailed(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->c()V

    .line 156
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/a/a$2;->a:Lccsancom/mbridge/msdk/mbbanner/a/a;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/a/a;->d(Lccsancom/mbridge/msdk/mbbanner/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 157
    return-void
.end method

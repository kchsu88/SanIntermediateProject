.class final Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;
.super Lccsancom/mbridge/msdk/mbbanner/common/f/a;
.source "BannerLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/mbbanner/common/a/b;Lccsancom/mbridge/msdk/mbbanner/common/b/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/mbbanner/common/c/b;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbbanner/common/f/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    .line 155
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->c(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->b(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, v1}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->d(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Lccsancom/mbridge/msdk/mbbanner/common/b/d;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->d:Ljava/lang/String;

    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/mbbanner/common/b/d;->a(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    .locals 3

    .line 143
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->c(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->b(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->d:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->a(Lccsancom/mbridge/msdk/mbbanner/common/c/b;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 147
    :catch_0
    move-exception p1

    .line 148
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->c(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Lccsancom/mbridge/msdk/mbbanner/common/util/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->b(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Lccsancom/mbridge/msdk/mbbanner/common/b/b;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lccsancom/mbridge/msdk/mbbanner/common/util/a;->a(Lccsancom/mbridge/msdk/mbbanner/common/b/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->a:Lccsancom/mbridge/msdk/mbbanner/common/c/b;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbbanner/common/c/b;->d(Lccsancom/mbridge/msdk/mbbanner/common/c/b;)Lccsancom/mbridge/msdk/mbbanner/common/b/d;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/mbbanner/common/c/b$2;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/mbbanner/common/b/d;->a(Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void
.end method

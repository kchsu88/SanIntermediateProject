.class public Lccsancom/mbridge/msdk/mbbanner/common/a/d;
.super Ljava/lang/Object;
.source "BannerV3Params.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lccsancom/mbridge/msdk/mbbanner/common/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbbanner/common/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ZLccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILccsancom/mbridge/msdk/mbbanner/common/a/b;)Lccsancom/mbridge/msdk/foundation/same/net/h/d;
    .locals 5

    .line 27
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object p0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    const-string v1, "banner"

    invoke-static {p2, v1}, Lccsancom/mbridge/msdk/foundation/same/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-static {p2}, Lccsancom/mbridge/msdk/mbbanner/common/util/BannerUtils;->getCloseIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 35
    new-instance v3, Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    .line 37
    const-string v4, "app_id"

    invoke-static {v3, v4, p0}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string p0, "unit_id"

    invoke-static {v3, p0, p2}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p5}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 41
    sget-object p0, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {p5}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p0, p2}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    const-string p0, "sign"

    invoke-static {v3, p0, v0}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string p0, "only_impression"

    const-string p2, "1"

    invoke-static {v3, p0, p2}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string p0, "ping_mode"

    invoke-static {v3, p0, p2}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object p0, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->c:Ljava/lang/String;

    invoke-static {v3, p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string p0, "ad_source_id"

    invoke-static {v3, p0, p2}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object p0, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a:Ljava/lang/String;

    invoke-static {v3, p0, p3}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string p0, "ad_type"

    const-string p1, "296"

    invoke-static {v3, p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "offset"

    invoke-static {v3, p2, p0}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object p0, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b:Ljava/lang/String;

    invoke-static {v3, p0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string p0, "close_id"

    invoke-static {v3, p0, v2}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "unit_size"

    invoke-static {v3, p2, p0}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;->b()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "refresh_time"

    invoke-static {v3, p2, p0}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p5}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 60
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lccsancom/mbridge/msdk/mbbanner/common/a/b;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "token"

    invoke-static {v3, p1, p0}, Lccsancom/mbridge/msdk/foundation/same/net/g/b;->a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_1
    return-object v3
.end method

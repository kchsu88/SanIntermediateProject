.class public Lccsancom/mbridge/msdk/mbnative/c/d;
.super Ljava/lang/Object;
.source "NativeVideoTrackingReport.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lccsancom/mbridge/msdk/mbnative/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbnative/c/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 51
    if-eqz p0, :cond_3

    .line 52
    :try_start_0
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    move-result-object v0

    .line 53
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/db/p;->a()I

    move-result v1

    if-lez v1, :cond_3

    .line 54
    const-string v1, "2000022"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 55
    const-string v2, "2000021"

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 56
    const-string v3, "2000043"

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/m;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/entity/m;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/m;->d(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_1
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1024
    if-eqz p0, :cond_3

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_3

    .line 1026
    :try_start_1
    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/report/d/a;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/same/report/d/a;-><init>(Lccsanandroid/content/Context;)V

    .line 1027
    invoke-static {v0, p0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    move-result-object p0

    .line 1028
    const/4 p1, 0x0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v0

    iget-object v0, v0, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->a:Ljava/lang/String;

    new-instance v2, Lccsancom/mbridge/msdk/mbnative/c/d$1;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/mbnative/c/d$1;-><init>()V

    invoke-virtual {v1, p1, v0, p0, v2}, Lccsancom/mbridge/msdk/foundation/same/report/d/a;->c(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1045
    goto :goto_0

    .line 1042
    :catch_0
    move-exception p0

    .line 1043
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1044
    sget-object p1, Lccsancom/mbridge/msdk/mbnative/c/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 75
    :catch_1
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 77
    :cond_3
    :goto_0
    nop

    .line 78
    :goto_1
    return-void
.end method

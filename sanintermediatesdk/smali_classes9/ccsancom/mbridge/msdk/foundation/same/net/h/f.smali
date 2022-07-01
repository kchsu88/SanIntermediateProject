.class public Lccsancom/mbridge/msdk/foundation/same/net/h/f;
.super Lccsancom/mbridge/msdk/foundation/same/net/h/b;
.source "HeaderBiddingRequest.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;-><init>(Lccsanandroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V
    .locals 3

    .line 16
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->c()I

    move-result v0

    .line 17
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/u;->d()Ljava/lang/String;

    move-result-object v1

    .line 19
    if-eqz p2, :cond_0

    .line 20
    const-string v2, "misk_spt"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    const-string v0, "misk_spt_det"

    invoke-virtual {p2, v0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V

    .line 29
    goto :goto_1

    .line 28
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 25
    :catch_0
    move-exception v0

    .line 26
    :try_start_1
    const-string v1, "CampaignRequest"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :goto_1
    return-void

    .line 28
    :goto_2
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/net/h/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;)V

    .line 29
    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

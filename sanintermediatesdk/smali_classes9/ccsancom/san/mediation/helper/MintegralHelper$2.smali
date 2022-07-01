.class final Lccsancom/san/mediation/helper/MintegralHelper$2;
.super Ljava/lang/Object;
.source "MintegralHelper.java"

# interfaces
.implements Lccsancom/mbridge/msdk/out/SDKInitStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/helper/MintegralHelper;->initializeMobileAds(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 79
    iput-wide p1, p0, Lccsancom/san/mediation/helper/MintegralHelper$2;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "failInfo"    # Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MintegralHelper"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Lccsancom/san/mediation/helper/MintegralHelper;->access$300(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onInitSuccess()V
    .locals 5

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize success \uff0cduration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lccsancom/san/mediation/helper/MintegralHelper$2;->val$startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MintegralHelper"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/4 v0, 0x1

    invoke-static {v0}, Lccsancom/san/mediation/helper/MintegralHelper;->access$102(Z)Z

    .line 84
    invoke-static {}, Lccsancom/san/mediation/helper/MintegralHelper;->access$200()V

    .line 85
    return-void
.end method

.class final Lccsancom/mbridge/msdk/mbsignalcommon/communication/b$1;
.super Ljava/lang/Object;
.source "CommonSignalCommunicatioImpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 50
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/j;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/f;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/entity/f;-><init>()V

    .line 54
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFca()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(I)V

    .line 56
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFcb()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/f;->b(I)V

    .line 57
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/f;->d(I)V

    .line 58
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/f;->c(I)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(J)V

    .line 60
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/entity/f;)V

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/j;->b(Ljava/lang/String;)V

    .line 65
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b$1;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    sget-object v1, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :goto_1
    return-void
.end method

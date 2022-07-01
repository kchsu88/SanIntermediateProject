.class final Lccsancom/mbridge/msdk/foundation/db/d$2;
.super Ljava/lang/Object;
.source "CampaignDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/db/d;->c(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lccsancom/mbridge/msdk/foundation/db/d;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/db/d;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d$2;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/db/d$2;->a:Ljava/util/List;

    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/db/d$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1150
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/db/d$2;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1151
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/db/d$2;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/db/d$2;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lccsancom/mbridge/msdk/foundation/db/d;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)J

    .line 1152
    goto :goto_0

    .line 1154
    :cond_0
    return-void
.end method
